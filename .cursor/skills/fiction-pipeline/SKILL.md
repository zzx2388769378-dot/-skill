---
name: fiction-pipeline
description: >-
  Orchestrates the full fiction writing pipeline. Reads INDEX/index.json to
  determine current stage and routes to the correct agent (genre-scout, ideator,
  architect, writer). Use when user asks 下一步, 从哪开始, 全流程, 进度,
  该用哪个agent, or is unsure which step they are on.
---

# Fiction Pipeline · 流水线调度

**唯一推荐入口**：不确定下一步时用本 Skill。

## 第一步：读索引

1. 运行或等效读取 `fiction/index.json`（若无则 `.\scripts\update-index.ps1`）
2. 若用户指定书名，读 `fiction/{书名}/index.json` 的 `stage`

## 第二步：判定阶段 → 路由

| 用户状态 | 当前阶段 | 推荐动作 |
|----------|----------|----------|
| 完全没方向 | — | `@fiction-genre-scout` |
| _genres 有 pending_selection | 题材未选 | 打开 `_genres/` 最新文件，请用户选编号 |
| 已选题材+书名，无故事 | 待 ideator | `@fiction-ideator` + 锁定书名 |
| _ideas 有 pending_selection | 点子未选 | 打开 `_ideas/` 请用户选 A/B/C |
| 已选想法，无 fiction/书名/ | 待 architect | `@fiction-architect` + 粘贴选定想法 |
| fiction/书名/ 存在，gaps 未 confirmed | 架构中 | `@fiction-architect` 继续确认 gaps |
| gaps confirmed，novel 未就绪 | 架构中 | `@fiction-architect` |
| novel ready，无 chapters | 待开写 | `@fiction-writer 开写 {书名}` |
| 有 chapters | 连载中 | `@fiction-writer 续写` |

## 输出格式

```markdown
## 当前进度
- 书名：…
- 阶段：…
- 依据：fiction/index.json 或 fiction/{书名}/index.json

## 建议下一步
@fiction-xxx …（具体指令）

## 可选
- …
```

## 全流程闭环（5 步）

```
1. genre-scout  → 选题材+书名     → _genres/ status=selected
2. ideator      → 选故事点子      → _ideas/*-selected.md
3. architect    → 确认 gaps       → fiction/书名/ novel.md ready
4. writer       → 开写+续写       → chapters/
5. index        → 每步后 update-index.ps1
```

## 不替代专职 Agent

本 Skill **只调度不代写**：不生成题材、不生成正文、不填 novel.md。

## 文档检索

查文件、查进度 → `@fiction-index`
