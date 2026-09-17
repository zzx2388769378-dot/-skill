param(
    [switch]$Quiet
)

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$FictionDir = Join-Path $Root "fiction"
$Now = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

function Get-StatusFromFile {
    param([string]$Path)
    if (-not (Test-Path $Path)) { return "-" }
    $c = Get-Content $Path -Raw -Encoding UTF8 -ErrorAction SilentlyContinue
    if ($c -match '(?m)^status:\s*(.+)$') { return $Matches[1].Trim() }
    return "-"
}

function Get-ChapterMeta {
    param([string]$Path)
    $meta = @{ chapter_id = ""; title = ""; word_count = 0; status = "-" }
    if (-not (Test-Path $Path)) { return $meta }
    $c = Get-Content $Path -Raw -Encoding UTF8 -ErrorAction SilentlyContinue
    if ($c -match '(?m)^chapter_id:\s*"?([^"\r\n]+)"?') { $meta.chapter_id = $Matches[1].Trim() }
    if ($c -match '(?m)^title:\s*(.+)$') { $meta.title = $Matches[1].Trim() }
    if ($c -match '(?m)^word_count:\s*(\d+)') { $meta.word_count = [int]$Matches[1] }
    if ($c -match '(?m)^status:\s*(.+)$') { $meta.status = $Matches[1].Trim() }
    if (-not $meta.chapter_id) {
        $base = [IO.Path]::GetFileNameWithoutExtension($Path)
        if ($base -match '^\d+$') { $meta.chapter_id = $base }
    }
    return $meta
}

function Write-IndexPair {
    param(
        [string]$Dir,
        [string]$MdContent,
        [object]$JsonObj
    )
    if (-not (Test-Path $Dir)) {
        New-Item -ItemType Directory -Path $Dir -Force | Out-Null
    }
    $MdContent | Set-Content -Path (Join-Path $Dir "INDEX.md") -Encoding UTF8
    $JsonObj | ConvertTo-Json -Depth 6 | Set-Content -Path (Join-Path $Dir "index.json") -Encoding UTF8
}

# --- Collect data ---

$Agents = @()
$SkillsDir = Join-Path $Root (Join-Path ".cursor" "skills")
if (Test-Path $SkillsDir) {
    Get-ChildItem $SkillsDir -Directory | ForEach-Object {
        $skillFile = Join-Path $_.FullName "SKILL.md"
        if (Test-Path $skillFile) {
            $raw = Get-Content $skillFile -Raw -Encoding UTF8 -ErrorAction SilentlyContinue
            $desc = ""
            if ($raw -match '(?s)description:\s*>-\s*\r?\n((?:  .+\r?\n?)+)') {
                $desc = ($Matches[1] -replace '(?m)^  ', '') -replace '\r?\n', ' '
            } elseif ($raw -match 'description:\s*(.+)\r?\n') {
                $desc = $Matches[1].Trim()
            }
            if ($desc.Length -gt 100) { $desc = $desc.Substring(0, 100) + "..." }
            $Agents += [PSCustomObject]@{
                name = $_.Name
                path = ".cursor/skills/$($_.Name)/SKILL.md"
                description = $desc
            }
        }
    }
}

$Genres = @()
$GenresDir = Join-Path $FictionDir "_genres"
if (Test-Path $GenresDir) {
    Get-ChildItem $GenresDir -File -Filter "*.md" | Where-Object { $_.Name -ne "INDEX.md" } | ForEach-Object {
        $Genres += [PSCustomObject]@{
            file = $_.Name
            path = "fiction/_genres/$($_.Name)"
            status = Get-StatusFromFile $_.FullName
            updated = $_.LastWriteTime.ToString("yyyy-MM-dd HH:mm")
        }
    }
}

$Ideas = @()
$IdeasDir = Join-Path $FictionDir "_ideas"
if (Test-Path $IdeasDir) {
    Get-ChildItem $IdeasDir -File -Filter "*.md" | Where-Object { $_.Name -ne "INDEX.md" } | ForEach-Object {
        $Ideas += [PSCustomObject]@{
            file = $_.Name
            path = "fiction/_ideas/$($_.Name)"
            status = Get-StatusFromFile $_.FullName
            is_selected = $_.Name -like "*-selected.md"
            updated = $_.LastWriteTime.ToString("yyyy-MM-dd HH:mm")
        }
    }
}

$Projects = @()
if (Test-Path $FictionDir) {
    Get-ChildItem $FictionDir -Directory | Where-Object { -not $_.Name.StartsWith("_") } | ForEach-Object {
        $name = $_.Name
        $dir = $_.FullName
        $gapsStatus = Get-StatusFromFile (Join-Path $dir "gaps.md")
        $novelStatus = Get-StatusFromFile (Join-Path $dir "novel.md")
        $chaptersDir = Join-Path $dir "chapters"
        $chapters = @()
        $chapterCount = 0
        if (Test-Path $chaptersDir) {
            Get-ChildItem $chaptersDir -File -Filter "*.md" | Where-Object { $_.Name -ne "INDEX.md" } | Sort-Object Name | ForEach-Object {
                $m = Get-ChapterMeta $_.FullName
                $chapters += [PSCustomObject]@{
                    file = $_.Name
                    path = "fiction/$name/chapters/$($_.Name)"
                    chapter_id = $m.chapter_id
                    title = $m.title
                    word_count = $m.word_count
                    status = $m.status
                    updated = $_.LastWriteTime.ToString("yyyy-MM-dd HH:mm")
                }
            }
            $chapterCount = $chapters.Count
        }
        $stage = "init"
        if ($chapterCount -gt 0) { $stage = "writing" }
        elseif ($novelStatus -match "outlining|writing") { $stage = "outlined" }
        elseif ($gapsStatus -eq "confirmed") { $stage = "gaps_confirmed" }
        elseif (Test-Path (Join-Path $dir "idea.md")) { $stage = "idea_captured" }

        $files = @()
        @("idea.md", "gaps.md", "architecture.md", "novel.md") | ForEach-Object {
            $fp = Join-Path $dir $_
            if (Test-Path $fp) {
                $files += [PSCustomObject]@{
                    file = $_
                    path = "fiction/$name/$_"
                    status = Get-StatusFromFile $fp
                }
            }
        }

        $Projects += [PSCustomObject]@{
            title = $name
            path = "fiction/$name"
            stage = $stage
            gaps_status = $gapsStatus
            novel_status = $novelStatus
            chapters_done = $chapterCount
            files = $files
            chapters = $chapters
        }

        # Per-book index
        $bookSb = New-Object System.Text.StringBuilder
        [void]$bookSb.AppendLine("# $($name)")
        [void]$bookSb.AppendLine("")
        [void]$bookSb.AppendLine("> Updated: $Now")
        [void]$bookSb.AppendLine("")
        [void]$bookSb.AppendLine("| Field | Value |")
        [void]$bookSb.AppendLine("|-------|-------|")
        [void]$bookSb.AppendLine("| stage | $stage |")
        [void]$bookSb.AppendLine("| gaps | $gapsStatus |")
        [void]$bookSb.AppendLine("| novel | $novelStatus |")
        [void]$bookSb.AppendLine("| chapters | $chapterCount |")
        [void]$bookSb.AppendLine("")
        [void]$bookSb.AppendLine("## Files")
        [void]$bookSb.AppendLine("")
        [void]$bookSb.AppendLine("| File | status |")
        [void]$bookSb.AppendLine("|------|--------|")
        foreach ($f in $files) {
            [void]$bookSb.AppendLine("| ``$($f.file)`` | $($f.status) |")
        }
        [void]$bookSb.AppendLine("")
        [void]$bookSb.AppendLine("## Chapters")
        [void]$bookSb.AppendLine("")
        if ($chapters.Count -eq 0) {
            [void]$bookSb.AppendLine("_no chapters yet_")
        } else {
            [void]$bookSb.AppendLine("| id | title | words | status | file |")
            [void]$bookSb.AppendLine("|----|-------|-------|--------|------|")
            foreach ($ch in $chapters) {
                [void]$bookSb.AppendLine("| $($ch.chapter_id) | $($ch.title) | $($ch.word_count) | $($ch.status) | ``$($ch.file)`` |")
            }
        }
        Write-IndexPair -Dir $dir -MdContent $bookSb.ToString() -JsonObj @{
            updated = $Now
            title = $name
            stage = $stage
            gaps_status = $gapsStatus
            novel_status = $novelStatus
            files = $files
            chapters = $chapters
        }

        # Per-book chapters index
        if (Test-Path $chaptersDir) {
            $chSb = New-Object System.Text.StringBuilder
            [void]$chSb.AppendLine("# $($name) / chapters")
            [void]$chSb.AppendLine("")
            [void]$chSb.AppendLine("> Updated: $Now")
            [void]$chSb.AppendLine("")
            if ($chapters.Count -eq 0) {
                [void]$chSb.AppendLine("_empty_")
            } else {
                [void]$chSb.AppendLine("| id | title | words | status | file |")
                [void]$chSb.AppendLine("|----|-------|-------|--------|------|")
                foreach ($ch in $chapters) {
                    [void]$chSb.AppendLine("| $($ch.chapter_id) | $($ch.title) | $($ch.word_count) | $($ch.status) | ``$($ch.file)`` |")
                }
            }
            Write-IndexPair -Dir $chaptersDir -MdContent $chSb.ToString() -JsonObj @{
                updated = $Now
                book = $name
                chapters = $chapters
            }
        }
    }
}

# _genres index
if (Test-Path $GenresDir) {
    $gSb = New-Object System.Text.StringBuilder
    [void]$gSb.AppendLine("# Genres Index (_genres)")
    [void]$gSb.AppendLine("")
    [void]$gSb.AppendLine("> Updated: $Now")
    [void]$gSb.AppendLine("")
    if ($Genres.Count -eq 0) {
        [void]$gSb.AppendLine("_empty_")
    } else {
        [void]$gSb.AppendLine("| file | status | updated |")
        [void]$gSb.AppendLine("|------|--------|---------|")
        foreach ($g in $Genres) {
            [void]$gSb.AppendLine("| ``$($g.file)`` | $($g.status) | $($g.updated) |")
        }
    }
    Write-IndexPair -Dir $GenresDir -MdContent $gSb.ToString() -JsonObj @{
        updated = $Now
        items = $Genres
    }
}

# _ideas index
if (Test-Path $IdeasDir) {
    $iSb = New-Object System.Text.StringBuilder
    [void]$iSb.AppendLine("# Ideas Index (_ideas)")
    [void]$iSb.AppendLine("")
    [void]$iSb.AppendLine("> Updated: $Now")
    [void]$iSb.AppendLine("")
    if ($Ideas.Count -eq 0) {
        [void]$iSb.AppendLine("_empty_")
    } else {
        [void]$iSb.AppendLine("| file | status | selected | updated |")
        [void]$iSb.AppendLine("|------|--------|----------|---------|")
        foreach ($i in $Ideas) {
            $sel = if ($i.is_selected) { "yes" } else { "" }
            [void]$iSb.AppendLine("| ``$($i.file)`` | $($i.status) | $sel | $($i.updated) |")
        }
    }
    Write-IndexPair -Dir $IdeasDir -MdContent $iSb.ToString() -JsonObj @{
        updated = $Now
        items = $Ideas
    }
}

# fiction/ root index
$fictionSb = New-Object System.Text.StringBuilder
[void]$fictionSb.AppendLine("# Fiction Index")
[void]$fictionSb.AppendLine("")
[void]$fictionSb.AppendLine("> Updated: $Now")
[void]$fictionSb.AppendLine("> Update all: ``.\scripts\update-index.ps1``")
[void]$fictionSb.AppendLine("")
[void]$fictionSb.AppendLine("## Sub-indexes")
[void]$fictionSb.AppendLine("")
[void]$fictionSb.AppendLine("| Area | Index |")
[void]$fictionSb.AppendLine("|------|-------|")
[void]$fictionSb.AppendLine("| genres | ``fiction/_genres/INDEX.md`` |")
[void]$fictionSb.AppendLine("| ideas | ``fiction/_ideas/INDEX.md`` |")
foreach ($p in $Projects) {
    [void]$fictionSb.AppendLine("| $($p.title) | ``fiction/$($p.title)/INDEX.md`` |")
}
[void]$fictionSb.AppendLine("")
[void]$fictionSb.AppendLine("## Projects")
[void]$fictionSb.AppendLine("")
if ($Projects.Count -eq 0) {
    [void]$fictionSb.AppendLine("_no projects_")
} else {
    [void]$fictionSb.AppendLine("| title | stage | chapters | index |")
    [void]$fictionSb.AppendLine("|-------|-------|----------|-------|")
    foreach ($p in $Projects) {
        [void]$fictionSb.AppendLine("| $($p.title) | $($p.stage) | $($p.chapters_done) | ``$($p.path)/INDEX.md`` |")
    }
}
Write-IndexPair -Dir $FictionDir -MdContent $fictionSb.ToString() -JsonObj @{
    updated = $Now
    genres_count = $Genres.Count
    ideas_count = $Ideas.Count
    projects = $Projects
}

# Root index (project entry only, points to fiction/)
$rootSb = New-Object System.Text.StringBuilder
[void]$rootSb.AppendLine("# Project Index")
[void]$rootSb.AppendLine("")
[void]$rootSb.AppendLine("> Updated: $Now")
[void]$rootSb.AppendLine("")
[void]$rootSb.AppendLine("## Content index")
[void]$rootSb.AppendLine("")
[void]$rootSb.AppendLine("- **Fiction (all books):** ``fiction/INDEX.md`` | ``fiction/index.json``")
[void]$rootSb.AppendLine("- **Genres:** ``fiction/_genres/INDEX.md``")
[void]$rootSb.AppendLine("- **Ideas:** ``fiction/_ideas/INDEX.md``")
[void]$rootSb.AppendLine("")
[void]$rootSb.AppendLine("## Agents")
[void]$rootSb.AppendLine("")
[void]$rootSb.AppendLine("| Agent | Path |")
[void]$rootSb.AppendLine("|-------|------|")
foreach ($a in ($Agents | Sort-Object name)) {
    [void]$rootSb.AppendLine("| ``$($a.name)`` | ``$($a.path)`` |")
}
[void]$rootSb.AppendLine("")
[void]$rootSb.AppendLine("## Docs")
[void]$rootSb.AppendLine("")
[void]$rootSb.AppendLine("| File | Role |")
[void]$rootSb.AppendLine("|------|------|")
@(
    @("README.md", "usage"),
    @("docs/PIPELINE.md", "pipeline review"),
    @("_templates/NOVEL-MASTER.template.md", "template")
) | ForEach-Object {
    $fp = Join-Path $Root ($_[0] -replace '/', [IO.Path]::DirectorySeparatorChar)
    if (Test-Path $fp) {
        [void]$rootSb.AppendLine("| ``$($_[0])`` | $($_[1]) |")
    }
}

Write-IndexPair -Dir $Root -MdContent $rootSb.ToString() -JsonObj @{
    updated = $Now
    agents = $Agents
    fiction_index = "fiction/index.json"
    genres_index = "fiction/_genres/index.json"
    ideas_index = "fiction/_ideas/index.json"
    projects = ($Projects | ForEach-Object { @{ title = $_.title; index = "$($_.path)/index.json" } })
}

if (-not $Quiet) {
    Write-Host "Indexes updated:" -ForegroundColor Green
    Write-Host "  fiction/INDEX.md (+ per-book, _genres, _ideas, chapters/)"
    Write-Host "  INDEX.md (root entry)"
    Write-Host "Projects: $($Projects.Count) | Genres: $($Genres.Count) | Ideas: $($Ideas.Count)"
}
