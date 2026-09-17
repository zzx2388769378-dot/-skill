param(
    [switch]$Quiet
)

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$IndexMd = Join-Path $Root "INDEX.md"
$IndexJson = Join-Path $Root "index.json"
$Now = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

function Get-StatusFromFile {
    param([string]$Path)
    if (-not (Test-Path $Path)) { return "-" }
    $c = Get-Content $Path -Raw -Encoding UTF8 -ErrorAction SilentlyContinue
    if ($c -match '(?m)^status:\s*(.+)$') { return $Matches[1].Trim() }
    return "-"
}

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
$GenresDir = Join-Path $Root (Join-Path "fiction" "_genres")
if (Test-Path $GenresDir) {
    Get-ChildItem $GenresDir -File -Filter "*.md" | ForEach-Object {
        $Genres += [PSCustomObject]@{
            file = "fiction/_genres/$($_.Name)"
            status = Get-StatusFromFile $_.FullName
            updated = $_.LastWriteTime.ToString("yyyy-MM-dd HH:mm")
        }
    }
}

$Ideas = @()
$IdeasDir = Join-Path $Root (Join-Path "fiction" "_ideas")
if (Test-Path $IdeasDir) {
    Get-ChildItem $IdeasDir -File -Filter "*.md" | ForEach-Object {
        $Ideas += [PSCustomObject]@{
            file = "fiction/_ideas/$($_.Name)"
            status = Get-StatusFromFile $_.FullName
            updated = $_.LastWriteTime.ToString("yyyy-MM-dd HH:mm")
        }
    }
}

$Projects = @()
$FictionDir = Join-Path $Root "fiction"
if (Test-Path $FictionDir) {
    Get-ChildItem $FictionDir -Directory | Where-Object { -not $_.Name.StartsWith("_") } | ForEach-Object {
        $name = $_.Name
        $dir = $_.FullName
        $gapsStatus = Get-StatusFromFile (Join-Path $dir "gaps.md")
        $novelStatus = Get-StatusFromFile (Join-Path $dir "novel.md")
        $chaptersDir = Join-Path $dir "chapters"
        $chapterCount = 0
        if (Test-Path $chaptersDir) {
            $chapterCount = @(Get-ChildItem $chaptersDir -File -Filter "*.md").Count
        }
        $stage = "init"
        if ($chapterCount -gt 0) { $stage = "writing" }
        elseif ($novelStatus -match "outlining|writing") { $stage = "outlined" }
        elseif ($gapsStatus -eq "confirmed") { $stage = "gaps_confirmed" }
        elseif (Test-Path (Join-Path $dir "idea.md")) { $stage = "idea_captured" }

        $Projects += [PSCustomObject]@{
            title = $name
            path = "fiction/$name"
            stage = $stage
            gaps_status = $gapsStatus
            novel_status = $novelStatus
            chapters_done = $chapterCount
        }
    }
}

$sb = New-Object System.Text.StringBuilder
[void]$sb.AppendLine("# Project Index")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("> Auto-generated: $Now")
[void]$sb.AppendLine("> Update: ``.\scripts\update-index.ps1`` | Search: ``@fiction-index`` | Route: ``@fiction-pipeline``")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("## Agents")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| Agent | Path | Description |")
[void]$sb.AppendLine("|-------|------|-------------|")
foreach ($a in ($Agents | Sort-Object name)) {
    [void]$sb.AppendLine("| ``$($a.name)`` | ``$($a.path)`` | $($a.description) |")
}
[void]$sb.AppendLine("")
[void]$sb.AppendLine('## Pipeline')
[void]$sb.AppendLine('')
[void]$sb.AppendLine('- genre-scout: _genres/')
[void]$sb.AppendLine('- ideator: _ideas/')
[void]$sb.AppendLine('- architect: fiction/title/')
[void]$sb.AppendLine('- writer: chapters/')
[void]$sb.AppendLine("")
[void]$sb.AppendLine("## Genres (_genres)")
[void]$sb.AppendLine("")
if ($Genres.Count -eq 0) {
    [void]$sb.AppendLine("_empty_")
} else {
    [void]$sb.AppendLine("| File | status | updated |")
    [void]$sb.AppendLine("|------|--------|---------|")
    foreach ($g in $Genres) {
        [void]$sb.AppendLine("| ``$($g.file)`` | $($g.status) | $($g.updated) |")
    }
}
[void]$sb.AppendLine("")
[void]$sb.AppendLine("## Ideas (_ideas)")
[void]$sb.AppendLine("")
if ($Ideas.Count -eq 0) {
    [void]$sb.AppendLine("_empty_")
} else {
    [void]$sb.AppendLine("| File | status | updated |")
    [void]$sb.AppendLine("|------|--------|---------|")
    foreach ($i in $Ideas) {
        [void]$sb.AppendLine("| ``$($i.file)`` | $($i.status) | $($i.updated) |")
    }
}
[void]$sb.AppendLine("")
[void]$sb.AppendLine("## Projects (fiction/)")
[void]$sb.AppendLine("")
if ($Projects.Count -eq 0) {
    [void]$sb.AppendLine("_empty_")
} else {
    [void]$sb.AppendLine("| Title | stage | gaps | novel | chapters | path |")
    [void]$sb.AppendLine("|-------|-------|------|-------|----------|------|")
    foreach ($p in $Projects) {
        [void]$sb.AppendLine("| $($p.title) | $($p.stage) | $($p.gaps_status) | $($p.novel_status) | $($p.chapters_done) | ``$($p.path)`` |")
    }
    [void]$sb.AppendLine("")
    [void]$sb.AppendLine("Stages: idea_captured -> gaps_confirmed -> outlined -> writing")
}
[void]$sb.AppendLine("")
[void]$sb.AppendLine("## Docs")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| File | Role |")
[void]$sb.AppendLine("|------|------|")
$docList = @(
    @("README.md", "usage guide"),
    @("docs/PIPELINE.md", "pipeline review"),
    @("_templates/NOVEL-MASTER.template.md", "blank template"),
    @("index.json", "machine-readable index")
)
foreach ($d in $docList) {
    $fp = Join-Path $Root ($d[0] -replace '/', [IO.Path]::DirectorySeparatorChar)
    if (Test-Path $fp) {
        [void]$sb.AppendLine("| ``$($d[0])`` | $($d[1]) |")
    }
}

$sb.ToString() | Set-Content -Path $IndexMd -Encoding UTF8

$jsonObj = @{
    updated = $Now
    agents = $Agents
    genres = $Genres
    ideas = $Ideas
    projects = $Projects
}
$jsonObj | ConvertTo-Json -Depth 5 | Set-Content -Path $IndexJson -Encoding UTF8

if (-not $Quiet) {
    Write-Host "Index updated: $IndexMd"
    Write-Host "JSON: $IndexJson"
    Write-Host "Projects: $($Projects.Count) | Genres: $($Genres.Count) | Ideas: $($Ideas.Count) | Agents: $($Agents.Count)"
}
