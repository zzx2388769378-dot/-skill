# Extracts ```text``` body from chapter NNN.md → NNN.txt (UTF-8, CRLF) for paste-friendly copy.
param(
    [string]$BookPath,
    [switch]$Quiet
)

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$FictionDir = Join-Path $Root "fiction"

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
    # Normalize any line ending to LF, then emit CRLF (Windows / 番茄粘贴保留段落)
    $body = $body -replace '\r\n', "`n" -replace '\r', "`n"
    $body = ($body -replace '\n', "`r`n").TrimEnd("`r", "`n") + "`r`n"

    $txtPath = [IO.Path]::ChangeExtension($MdPath, ".txt")
    $utf8NoBom = New-Object System.Text.UTF8Encoding $false
    [IO.File]::WriteAllText($txtPath, $body, $utf8NoBom)

    if (-not $Quiet) {
        Write-Host "  $($([IO.Path]::GetFileName($txtPath)))" -ForegroundColor DarkGray
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
