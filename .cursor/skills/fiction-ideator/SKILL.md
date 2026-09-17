---
name: fiction-ideator
description: >-
  Generates multiple novel story ideas from a genre or theme (题材). Outputs
  pitch cards with logline, protagonist, conflict, stakes, and hook to
  fiction/_ideas/. Use when the user inputs 题材/类型/主题, asks for story ideas,
  灵感/点子/创意, has no plot yet, or says 帮我想一个故事/写什么好.
---

# Fiction Ideator · 题材灵感师

根据用户输入的**题材**，生成多个可发展的小说想法供挑选。  
**不写架构、不写正文**——选定想法后交给 `fiction-architect`。

**禁止**：修改 `_templates/`、创建 `fiction/{书名}/` 项目目录（那是架构师的事）

---

## 触发后第一步

从用户输入提取：

| 字段 | 必填 | 示例 |
|------|------|------|
| 题材 | ✅ | 都市悬疑、玄幻升级、古代言情、科幻末世 |
| 书名 | 否 | 若来自 fiction-genre-scout 选定，**必须使用锁定书名** |
| 数量 | 否，默认 3 | 「给我 5 个」 |
| 平台/受众 | 否 | 起点男频、晋江女频、自出版 |
| 篇幅 | 否 | 短篇 10 万、长篇 100 万 |
| 偏好 | 否 | 要爽文 / 要慢热 / 不要系统流 |
| 禁忌 | 否 | 不要后宫、不要超自然 |

题材过于宽泛时，先问 1 个澄清问题（如「悬疑偏社会派还是本格推理？」），再生成。

---

## 生成规则

每个想法必须**彼此明显不同**（不同主角处境、冲突类型或世界观），避免换皮重复。

每个想法包含：

```markdown
### 想法 A · 《暂定书名》

- **一句话**：当 [主角] 想要 [目标]，[阻碍] 挡路；失败则 [代价]。
- **类型标签**：例：都市悬疑 / 港口群像
- **主角**：姓名或称呼 + 身份 + 一个性格关键词
- **核心冲突**：谁 vs 谁，矛盾根源一句话
- **失败代价**：具体、可感知
- **差异化**：和同类书有何不同（1 句）
- **开篇画面**：第一章第一个场景（1～2 句，有画面感）
- **章末钩子示例**：吸引追更的一个悬念
- **潜在主题**：可选，如「真相的代价」
```

默认生成 **3 个**（用户指定则 3～5 个，不超过 5）。

---

## 输出位置

写入 `fiction/_ideas/{题材简写}-{YYYYMMDD}.md`，例如：

`fiction/_ideas/都市悬疑-20260917.md`

文件结构：

```markdown
---
status: pending_selection
genre: 都市悬疑
count: 3
created: 2026-09-17
---

# 题材：都市悬疑

## 用户输入

（记录用户原话或关键词）

## 约束

- 平台：…
- 篇幅：…
- 偏好：…
- 禁忌：…

## 想法列表

### 想法 A · 《…》
…

### 想法 B · 《…》
…

### 想法 C · 《…》
…

## 待选择

- [ ] 用户选定一个想法，进入 architecture 阶段
```

若 `fiction/_ideas/` 不存在，先创建。

---

## 阶段结束 · STOP

生成完毕后：

1. 在对话中用简短表格对比 3 个想法（书名 + 一句话）
2. **STOP**，请用户回复 `选 A` / `选 B，但主角改成女性` / `都不满意，再来 3 个都市的`
3. **不要**自动调用 fiction-architect

---

## 用户选定后

1. 在原 ideas 文件末尾追加「用户选择」节，status → `selected`
2. **写入交接文件** `fiction/_ideas/{书名}-selected.md`（书名去掉《》）：

```markdown
---
status: selected
source: fiction/_ideas/原文件.md
title: 书名
---

# 选定想法 · 《书名》

（粘贴最终版想法全文：含一句话、主角、冲突、代价、开篇、钩子等）

## 用户修改意见

（如有）
```

3. 运行 `.\scripts\update-index.ps1`（或提示用户运行）
4. 提示：

```
已写入 fiction/_ideas/{书名}-selected.md
下一步：@fiction-architect 书名：{书名}（将自动读 selected 交接文件）
```

Ideator **不代替**架构师填 gaps / novel.md。

---

## 重新生成

用户说「都不满意」「再来几个」：

- 读取同题材 ideas 文件，避免与已有 A/B/C 重复
- 追加写入新文件或同文件新一节 `## 第二轮`
- 仍 STOP 等选择

---

## 上游衔接

若用户从 **fiction-genre-scout** 带来已选「题材 + 拟定书名」：

- 想法的暂定书名统一用 scout 锁定的《书名》
- 不在 ideator 阶段改名，除非用户明确要求

## 与流水线衔接

```
fiction-genre-scout →  fiction/_genres/*.md（题材+唯一书名）
       ↓
fiction-ideator     →  fiction/_ideas/*.md（多个点子）
       ↓ 用户选定
fiction-architect   →  fiction/书名/idea.md … novel.md
       ↓
fiction-writer      →  fiction/书名/chapters/
```

## 示例触发语

- `@fiction-ideator 题材：都市悬疑`
- `帮我想 3 个玄幻升级流的故事，要快节奏`
- `晋江向古代言情，女主复仇，给我几个点子`
- `不知道写什么，题材科幻`
