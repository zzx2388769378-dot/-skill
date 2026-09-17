# One-shot: count → sync txt (only if OK or -AllowShort) → optional index.
# Usage: .\scripts\finish-chapter.ps1 -Path "fiction/书名/chapters/009.md"
param(
    [Parameter(Mandatory = $true)]
    [string]$Path,
    [switch]$AllowShort,
    [switch]$SkipIndex
)

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$CountScript = Join-Path $Root "scripts\count-chapter.ps1"
$SyncScript = Join-Path $Root "scripts\sync-chapter-text.ps1"
$IndexScript = Join-Path $Root "scripts\update-index.ps1"

$countOut = & $CountScript -Path $Path 2>&1 | Out-String
$countOut = $countOut.Trim()
$exitCode = $LASTEXITCODE

Write-Output $countOut

if ($exitCode -ne 0) {
    if (-not $AllowShort) {
        Write-Output "STOP:fix_prose_then_rerun"
        exit 1
    }
}

& $SyncScript -ChapterFile $Path -Quiet | Out-Null
if (-not $SkipIndex) {
    & $IndexScript -Quiet | Out-Null
}

Write-Output "DONE:synced"
exit 0
