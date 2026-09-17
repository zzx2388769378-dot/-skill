# Count prose chars in one chapter's ```text``` block. One-line output for agents.
# Usage: .\scripts\count-chapter.ps1 -Path "fiction/书名/chapters/001.md"
param(
    [Parameter(Mandatory = $true)]
    [string]$Path,
    [int]$Min = 1988,
    [int]$Max = 2528
)

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$resolved = if ([IO.Path]::IsPathRooted($Path)) { $Path } else { Join-Path $Root $Path }

if (-not (Test-Path $resolved)) {
    Write-Output "ERROR:file_not_found"
    exit 2
}

$raw = Get-Content $resolved -Raw -Encoding UTF8
if ($raw -notmatch '(?s)```text\r?\n(.*?)```') {
    Write-Output "ERROR:no_text_fence"
    exit 2
}

$body = $Matches[1]
$chars = [regex]::Matches($body, '[\p{IsCJKUnifiedIdeographs}0-9A-Za-z]').Count
$paras = @(($body -replace '\r\n', "`n").Split("`n`n", [StringSplitOptions]::RemoveEmptyEntries)).Count

if ($chars -lt $Min) {
    $delta = $Min - $chars
    Write-Output ('LOW:{0}:need+{1}:paras={2}' -f $chars, $delta, $paras)
    exit 1
}
if ($chars -gt $Max) {
    $delta = $chars - $Max
    Write-Output ('HIGH:{0}:trim-{1}:paras={2}' -f $chars, $delta, $paras)
    exit 1
}

Write-Output ('OK:{0}:paras={1}' -f $chars, $paras)
exit 0
