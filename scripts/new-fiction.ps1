param(
    [Parameter(Mandatory = $true)]
    [string]$Name
)

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Template = Join-Path $Root "_templates\NOVEL-MASTER.template.md"
$FictionDir = Join-Path $Root "fiction\$Name"
$NovelFile = Join-Path $FictionDir "novel.md"
$ChaptersDir = Join-Path $FictionDir "chapters"
$IdeaFile = Join-Path $FictionDir "idea.md"
$GapsFile = Join-Path $FictionDir "gaps.md"
$ArchFile = Join-Path $FictionDir "architecture.md"

if (-not (Test-Path $Template)) {
    Write-Error "Template not found: $Template"
    exit 1
}

if (Test-Path $FictionDir) {
    Write-Error "Directory already exists: $FictionDir"
    exit 1
}

New-Item -ItemType Directory -Path $ChaptersDir -Force | Out-Null
Copy-Item -Path $Template -Destination $NovelFile

@"
# 原始想法

> 在此记录你的原话，Agent 不会修改本文件。

## 用户原话

（待填写）

## 捕获时间

$(Get-Date -Format "yyyy-MM-dd HH:mm")
"@ | Set-Content -Path $IdeaFile -Encoding UTF8

@"
# 欠缺补全（待 Agent 填写）

status: pending

## 已有

- （待分析）

## 欠缺项

| 维度 | 状态 | 问题 | 建议选项 A | 建议选项 B | 建议选项 C | 你的选择 |
|------|------|------|------------|------------|------------|----------|
| | | | | | | |

## 待确认

- [ ] 用户已确认 gaps，可进入 architecture 阶段
"@ | Set-Content -Path $GapsFile -Encoding UTF8

@"
# 总架构（待 Agent 填写）

status: draft

## 一句话

> （待填写）

## 核心矛盾

（待填写）

## 三幕/分卷骨架

| 幕 | 名称 | 核心事件 | 高潮 |
|----|------|----------|------|
| 1 | | | |
| 2 | | | |
| 3 | | | |

## 主角弧（一句话）

（待填写）

## 前 3 章方向

1.
2.
3.
"@ | Set-Content -Path $ArchFile -Encoding UTF8

Write-Host ""
Write-Host "Created: $FictionDir" -ForegroundColor Green
Write-Host ""
Write-Host "Next: tell AI your idea, or use fiction-architect skill"
Write-Host ""
