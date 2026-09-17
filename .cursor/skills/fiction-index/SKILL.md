---
name: fiction-index
description: >-
  Searches project docs via folder-local INDEX.md and index.json. Fiction content
  indexes live under fiction/ and each book folder. Use when user asks 检索文档,
  查索引, 项目进度, 章节列表, or after agents write files.
---

# Fiction Index · 文档检索

索引按**内容所在文件夹**分层存放，优先读对应目录下的索引。

## 索引位置

| 范围 | 路径 |
|------|------|
| 项目入口 | `INDEX.md` / `index.json`（根目录，仅 Agent 与文档导航） |
| 全部小说 | `fiction/INDEX.md` / `fiction/index.json` |
| 题材候选 | `fiction/_genres/INDEX.md` |
| 故事点子 | `fiction/_ideas/INDEX.md` |
| 单本书 | `fiction/{书名}/INDEX.md` |
| 章节正文 | `fiction/{书名}/chapters/INDEX.md` |

## 检索顺序

1. 确定范围 → 读该文件夹的 `index.json` 或 `INDEX.md`
2. 查单本书 → `fiction/{书名}/INDEX.md`
3. 查章节 → `fiction/{书名}/chapters/INDEX.md`
4. 全文搜索 → Grep 限定在目标目录

## 更新索引

```powershell
.\scripts\update-index.ps1
```

**以下情况应更新：**

- 写入 `_genres/`、`_ideas/`、`fiction/{书名}/` 或 `chapters/`
- 新增/修改章节正文

更新后告知用户具体路径，例如：`fiction/雾港/INDEX.md 已更新`

## 常见检索

| 用户问 | 读哪里 |
|--------|--------|
| 有哪些书 | `fiction/index.json` |
| 《XX》进度 | `fiction/XX/index.json` |
| 《XX》有哪些章 | `fiction/XX/chapters/index.json` |
| 题材候选 | `fiction/_genres/index.json` |
| 选定想法 | `fiction/_ideas/*-selected.md` + `_ideas/index.json` |

## 禁止

- 不要修改 `_templates/`
