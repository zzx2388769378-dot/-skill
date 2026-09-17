# 小说创作项目

六 Agent + 文档索引。内容在 `fiction/`，模板在 `_templates/`（只读）。

---

## 快速开始

```
不确定下一步     → @fiction-pipeline
查文档/进度      → @fiction-index
没方向          → @fiction-genre-scout
有题材要故事     → @fiction-ideator
有想法要架构     → @fiction-architect
开写/续写        → @fiction-writer
```

内容有更新后运行：`.\scripts\update-index.ps1`

---

## 全流程（5 步闭环）

| 步 | Agent | 产出 | 你做什么 |
|----|-------|------|----------|
| 1 | genre-scout | `_genres/` 题材+唯一书名 | 选一条 |
| 2 | ideator | `_ideas/` + `*-selected.md` | 选 A/B/C |
| 3 | architect | `fiction/书名/` 架构 | 确认 gaps |
| 4 | writer | `chapters/` 正文 | 续写 |
| 5 | index | `INDEX.md` 更新 | 每步后自动/手动跑脚本 |

详细审查见 [docs/PIPELINE.md](docs/PIPELINE.md)

---

## 文档检索

| 方式 | 说明 |
|------|------|
| `INDEX.md` | 人类可读的项目索引（Agent、项目、阶段） |
| `index.json` | 机器可读，供 Agent 快速查询 |
| `@fiction-index` | 检索文档、查进度、更新索引 |
| `.\scripts\update-index.ps1` | 重新生成 INDEX（**有更新必跑**） |

**索引包含：** 全部 Agent 列表、`_genres/`、`_ideas/`、正式项目阶段、已写章数。

---

## 各 Agent 用法

### fiction-pipeline（调度 · 推荐入口）

```
@fiction-pipeline
我接下来该做什么？
```

读 `index.json` 判定阶段，告诉你该 @ 哪个 Agent。

### fiction-genre-scout（题材雷达）

```
@fiction-genre-scout
检索热门和创新题材，每条带全新书名，不要撞名
```

### fiction-ideator（灵感师）

```
@fiction-ideator
题材：都市悬疑  书名：《雾潮档案》  给我 3 个想法
```

选定后生成 `fiction/_ideas/{书名}-selected.md` 交给架构师。

### fiction-architect（架构师）

```
@fiction-architect
书名：雾潮档案
（或：读 selected 交接文件）
```

### fiction-writer（写手）

```
@fiction-writer 开写 雾潮档案
@fiction-writer 续写
```

---

## 目录结构

```
p1/
├── README.md
├── INDEX.md / index.json          ← 文档索引
├── docs/PIPELINE.md               ← 全流程审查
├── _templates/NOVEL-MASTER.template.md
├── fiction/
│   ├── _genres/
│   ├── _ideas/
│   └── 书名/
├── .cursor/skills/                ← 6 个 Agent
└── scripts/
    ├── new-fiction.ps1
    └── update-index.ps1
```

---

## 审查结论

**四创作 Agent 已闭环，无需再加写作类 Agent。**

新增 2 个支撑 Agent：

- **fiction-index** — 文档检索 + 索引维护
- **fiction-pipeline** — 读索引、路由下一步

不必新增：扩章/修订/撞名（已分散在 writer / genre-scout）。

---

## 一句话备忘

```
@fiction-pipeline → 看进度
@fiction-genre-scout → @fiction-ideator → @fiction-architect → @fiction-writer
更新索引：.\scripts\update-index.ps1
```
