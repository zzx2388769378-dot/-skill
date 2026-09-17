---
name: fiction-index
description: >-
  Searches and retrieves project documentation via INDEX.md and index.json.
  Updates the index when files change. Use when user asks to 检索文档, 查索引,
  项目进度, 哪一步, 找文件, search docs, or after any agent writes new files.
---

# Fiction Index · 文档检索

项目内文档与进度的**检索入口**。优先读索引，再读具体文件。

## 检索顺序

1. `index.json` 或 `INDEX.md` — 全局概览
2. 按路径读取目标文件
3. 需要全文搜索时用 Grep 限定在 `fiction/`、`.cursor/`、`_templates/`

## 更新索引（有文件变更时必做）

项目内容更新后，运行：

```powershell
.\scripts\update-index.ps1
```

**以下情况应更新索引：**

- 任一 Agent 写入 `_genres/`、`_ideas/`、`fiction/书名/`
- 用户手动改动了 fiction 下文件
- 新增或修改 Skill

更新后在对话中告知：`索引已更新，见 INDEX.md`

## 常见检索请求

| 用户问 | 怎么做 |
|--------|--------|
| 现在有哪些书 | 读 index.json → projects |
| 《XX》写到哪了 | projects[].stage + chapters_done |
| 哪个 Agent 干什么 | index.json → agents |
| 上次选的题材 | 读 fiction/_genres/ 最新 selected |
| 选中的想法 | 读 fiction/_ideas/*-selected.md |
| 开写前缺什么 | 读 fiction/书名/gaps.md + novel.md |

## 阶段判定（与 index 脚本一致）

| stage | 含义 | 下一步 Agent |
|-------|------|--------------|
| — | 无项目 | genre-scout 或 ideator |
| _genres pending | 题材未选 | genre-scout 确认选择 |
| _ideas pending | 点子未选 | ideator 确认选择 |
| idea_captured | 有 idea，gaps 未确认 | fiction-architect |
| gaps_confirmed | gaps 已确认 | fiction-architect 继续 |
| outlined | novel.md 就绪 | fiction-writer 开写 |
| writing | 有正文 | fiction-writer 续写 |

## 禁止

- 不要修改 `_templates/`（检索只读即可）
