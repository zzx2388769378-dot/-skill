# 平台标签（番茄小说）

> **权威数据源**：`_templates/platform-reading-tags.json` + `_templates/platform-content-tags.json`  
> 说明文档：`_templates/platform-tags.README.md`

## 两类标签

| 类型 | 文件 | 后台栏位 |
|------|------|----------|
| 阅读标签 | `platform-reading-tags.json` | 主分类 / 主题 / 角色 / 情节 |
| 内容标签 | `platform-content-tags.json` | 情节 / 情感 / 人设 / 世界观 |

## 内容标签上限

情节≤4 · 情感≤2 · 人设≤4 · 世界观≤1

## 更新

平台 API 变更时：更新 JSON → 运行 `python scripts/seed-platform-tags.py`（若改 seed 脚本）→ 同步各书 `listing.md`。
