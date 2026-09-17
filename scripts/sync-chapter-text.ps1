# Extracts ```text``` body from chapter NNN.md → NNN.txt (UTF-8, CRLF) for paste-friendly copy.
param(
    [string]$BookPath,
    [switch]$Quiet
)

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$FictionDir = Join-Path $Root "fiction"

# 正文字数：汉字 + 数字 + 英文字母；不计标点、空白、换行（与 fiction-writer 技能一致）
function Get-ProseCharCount {
    param([string]$Text)
    if ([string]::IsNullOrEmpty($Text)) { return 0 }
    return [regex]::Matches($Text, '[\p{IsCJKUnifiedIdeographs}0-9A-Za-z]').Count
}

function Sync-ChapterTextFile {
    param([string]$MdPath)

    if (-not (Test-Path $MdPath)) { return $false }
    $raw = Get-Content $MdPath -Raw -Encoding UTF8
    if ($raw -notmatch '(?s)```text\r?\n(.*?)```') {
        if (-not $Quiet) {
            Write-Warning "No ```text``` block: $MdPath"
        }
        return $false
    }

    $body = $Matches[1]
    $charCount = Get-ProseCharCount $body
    # Normalize any line ending to LF, then emit CRLF (Windows / 番茄粘贴保留段落)
    $body = $body -replace '\r\n', "`n" -replace '\r', "`n"
    $body = ($body -replace '\n', "`r`n").TrimEnd("`r", "`n") + "`r`n"

    $txtPath = [IO.Path]::ChangeExtension($MdPath, ".txt")
    $utf8NoBom = New-Object System.Text.UTF8Encoding $false
    [IO.File]::WriteAllText($txtPath, $body, $utf8NoBom)

    # 回写 frontmatter word_count
    if ($raw -match '(?m)^word_count:\s*\d+') {
        $raw = $raw -replace '(?m)^word_count:\s*\d+', "word_count: $charCount"
    } else {
        $raw = $raw -replace '(?m)(^---\r?\n)', "---`r`nword_count: $charCount`r`n"
    }
    [IO.File]::WriteAllText($MdPath, $raw, $utf8NoBom)

    if (-not $Quiet) {
        $warn = ""
        if ($charCount -lt 1988) { $warn = " LOW" }
        elseif ($charCount -gt 2528) { $warn = " HIGH" }
        $name = [IO.Path]::GetFileName($txtPath)
        Write-Host "  $name chars=$charCount$warn" -ForegroundColor DarkGray
    }
    return $true
}

$targets = @()
if ($BookPath) {
    $resolved = if ([IO.Path]::IsPathRooted($BookPath)) { $BookPath } else { Join-Path $Root $BookPath }
    $chDir = Join-Path $resolved "chapters"
    if (Test-Path $chDir) { $targets += $chDir }
} elseif (Test-Path $FictionDir) {
    Get-ChildItem $FictionDir -Directory | Where-Object { -not $_.Name.StartsWith("_") } | ForEach-Object {
        $chDir = Join-Path $_.FullName "chapters"
        if (Test-Path $chDir) { $targets += $chDir }
    }
}

$count = 0
foreach ($chDir in $targets) {
    Get-ChildItem $chDir -File -Filter "*.md" | Where-Object { $_.Name -ne "INDEX.md" } | ForEach-Object {
        if (Sync-ChapterTextFile $_.FullName) { $count++ }
    }
}

if (-not $Quiet) {
    Write-Host "Chapter .txt synced: $count file(s)" -ForegroundColor Green
}
