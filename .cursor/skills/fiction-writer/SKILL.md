---
name: fiction-writer
description: >-
  Writes novel prose from fiction-architect output. Reads architecture.md and
  novel.md under fiction/{title}/, generates chapter text in chapters/, updates
  continuity and story_state. Use when the user wants to start writing, continue
  chapters, batch generate, revise prose, or says 开写/续写/写小说/落地/生成正文
  after architecture is ready.
---

# Fiction Writer · 小说写手

消化 **fiction-architect** 产出的架构，生成可阅读的小说正文。

**上游输入**：`fiction/{书名}/architecture.md` + `novel.md`（及已有 `chapters/`）  
**下游输出**：`fiction/{书名}/chapters/NNN.md` + 更新 `novel.md` 中的 CONTINUITY / story_state / 章节 status

**禁止**：修改 `_templates/`、`idea.md`（原话）、未确认的 `gaps.md`

**分工**：架构师只规划；本 Agent 只写作与连载状态维护，不改 STORY_CORE 除非用户明确要求。

**章节字数**：每章正文 **1988～2528 字**（见下方「字数统计」）；蓝图 `word_target` 若落在区间外，以本规则为准。

---

## 字数统计（落盘必遵）

### 区间

- **硬区间**：1988 ≤ 正文字数 ≤ 2528
- 低于 1988 → 扩写（加场景/对话/系统反馈，不水重复句）
- 高于 2528 → 删减赘句或拆章（需用户确认）；批量连写时单章仍不得超 2528

### 什么算「字」

只计正文 ` ```text ` 围栏内、发表用纯文本：

| 计入 | 不计 |
|------|------|
| 汉字 | 标点（，。！？、；：「」『』【】…—·等） |
| 阿拉伯数字（如 `7`、`47`） | 空白、换行、制表符 |
| 英文字母（极少数专名/UI） | frontmatter、说明行、围栏标记 |

**不计标点与换行**——与番茄等后台「字数」口径对齐。

### 落盘流程（省 token · 必遵）

> **第 009 章教训**：初稿仅 1146 字（缺 42%）→ 连跑 7 次 count、6 次 StrReplace 凑字 → 单章消耗 ~140 万 token。根因是**初稿太短**，不是 count 脚本本身。

**目标**：一次 `Write` 即 **≥1988 字、≥58 段**（`paras` 见 count 输出）。瞄准 **2200 字 / 65 段**，段间空一行、每段 2～4 句。

| 步骤 | 命令 | 说明 |
|------|------|------|
| 0 规划 | 心里列 3 场戏 | 接幕 / 冲突 / 章末钩，每场约 700 字。**禁止**先写短稿再反复补 |
| 1 写稿 | 一次 `Write` 全文 | 落盘前**不要** count；写完才检测 |
| 2 检测 | `count-chapter.ps1 -Path ...` | **全章最多 2 次**（初稿后 + 扩删后各 1 次） |
| 3 扩删 | **至多 1 次** `StrReplace` | 读 `need+N`：**一次增补 ≥N 字**（整场景，非逐句）。`need<120` 且已扩写过 → **直接落盘**标注略短，勿再凑 |
| 4 收尾 | `finish-chapter.ps1 -Path ...` | 内部：count 通过 → sync 本章 txt → update-index（**1 条命令**） |

**count 输出示例**：

- `OK:2245:paras=68` — 通过
- `LOW:1146:need+842:paras=38` — 缺 842 字、仅 38 段 → **一次**补 2 场戏，勿分 6 次补

**硬禁令（违反 = token 暴涨）**：

- 初稿 `<1988` 字时分多次 StrReplace 凑字（第 009 章因此 6 轮补丁）
- count / sync 超过 2 次（全书 sync、grep `word_count` 同理）
- `need` 已 `<120` 仍继续微调（差几十字直接落盘或 `-AllowShort`）
- 在聊天里粘贴全文（用户看 `NNN.txt` 即可）

**仍不达标**：扩写 1 次后若 `LOW` 且 `need≥120`，回复说明略短，用 `finish-chapter.ps1 -AllowShort` 落盘；**禁止第 3 次 count**。

---

## 架构优先（落盘硬约束）

> **第 008 章教训**：未按 `architecture.md` 路线图标题写作，将第 008 章误写为「年级池规则」，与第 010 章「年级池」重名，且偏离路线图核心事件。

**权威顺序**（冲突时自上而下）：

1. `fiction/{书名}/architecture.md` — **全书章节路线图**（`章` / `标题` / `核心事件`）为最高准绳
2. `fiction/{书名}/novel.md` — META / WORLD / CHARACTERS / OUTLINE / CONTINUITY（chapter 块须与 architecture 标题一致）
3. `fiction/{书名}/chapters/*.md` — 已写正文（续写必读）
4. `idea.md` — 仅在有歧义时参考

**写第 N 章前必做**：

1. 打开 `architecture.md` 路线图，定位 **第 N 章** 行，记下 `标题` 与 `核心事件`
2. 核对 `novel.md` 是否已有对应 chapter 块；若 `title` 与 architecture 不一致 → **以 architecture 为准** 修正 blueprint，或 STOP 请用户确认
3. 确认全书无重复 `title`（已写章节 frontmatter + 路线图）
4. 若已写正文与路线图 **核心事件** 冲突（如任务已在更早章节结算）→ 按 architecture「连载修订说明」处理，**不得**擅自改章名或把 A 章事件写成 B 章标题

**禁止**：

- 跳过 architecture 路线图，仅凭 `novel.md` 摘要或上一章结尾臆测本章标题/主线
- 使用与路线图或其他已写章节重复的标题
- 把路线图未列出的主线「顶替」当前章（例：把年级池细则写成第 008 章而路线图要求「收音机」）

---

## 读取顺序（每次写章前）

1. `fiction/{书名}/architecture.md` — 总架构锚点 + **本章路线图行**
2. `fiction/{书名}/novel.md` — META / WORLD / CHARACTERS / OUTLINE / STYLE / CONTINUITY
3. `fiction/{书名}/chapters/*.md` — 已写正文（续写必读）
4. `idea.md` — 仅在有歧义时参考，不覆盖 architecture

---

## 模式 A · 开写（首次）

**触发**：「开写」「写第一章」「@fiction-writer 开始」

### 1. 就绪检查（不通过则 STOP）

| 检查项 | 不通过时 |
|--------|----------|
| `gaps.md` status = confirmed（或无 gaps 但 novel.md 已完整） | 提示先完成 fiction-architect 确认 |
| `novel.md` 无未替换的 `{{}}` 必填项 | 列出缺项，建议回架构师补 |
| 第 001 章 chapter 块含 plot_beats + ending_hook | 建议先扩章蓝图 |
| STYLE 有文风样例 | 警告风格可能漂移，可继续 |
| 至少 protagonist 在 CHARACTERS 已填 | STOP |

### 2. 写第 001 章

- 严格按该章 `plot_beats` 逐点展开，章末落实 `ending_hook`
- 处理 `foreshadow_plant` / `foreshadow_payoff`
- 遵守 `WORLD.rules`、`CHARACTERS`（口吻、taboo）
- 模仿 `STYLE` 样例的句式与节奏
- 字数：正文字数 **1988～2528**（只计字，不计标点与换行；见「字数统计」）
- 叙事人称、时态与 META 一致

### 2.5 写后质检（必做，落盘前完成）

- 按下方 **「写后质检清单」** 逐条核对初稿
- **能当场修的当场修**（错别字、病句、逻辑硬伤、衔接问题）
- 若问题涉及架构/蓝图冲突（设定矛盾、beats 无法兼顾）→ **不落盘**，列出问题请用户确认或回架构师
- 质检通过后再执行步骤 3

### 3. 写后更新

- 正文写入 `chapters/NNN.md`（优先于 novel.md 内 content 字段）
- `count-chapter.ps1`（≤2 次）→ 至多 1 次整段扩删 → `finish-chapter.ps1 -Path ...` 收尾
- 该章 `status` → `done`；novel.md frontmatter `status` → `writing`
- 更新 `CONTINUITY` 中 001 摘要（≤200 字，只写事实）
- 更新 `story_state`（timeline、location、knows、hooks）
- FORESHADOW 表中本章埋/收项 status 同步

### 4. 输出

- 告知已写入 `chapters/NNN.md` 与 `chapters/NNN.txt` 路径
- **发表请复制 `.txt`**（CRLF，粘贴番茄保留段落）；聊天回复末尾可附正文 ` ```text ` 块供阅读，并提醒用户发表用 `.txt`
- 摘要 + 下一章预告（若下一章蓝图存在）
- 运行 `.\scripts\update-index.ps1`（更新 `fiction/{书名}/INDEX.md` 与 `chapters/INDEX.md`）

---

## 模式 B · 续写

**触发**：「续写」「下一章」

1. 读 `architecture.md` 路线图 **下一章** 的 `标题` + `核心事件`（硬约束）
2. 读 CONTINUITY + `chapters/` 最新章，确保衔接
3. 找 `status=pending` 的最小 `chapter_id`（须与路线图章号一致）
4. 若 `novel.md` 该章 blueprint 缺失或与 architecture 标题不一致 → 先按模式 E 修正 blueprint，或 STOP
5. 同模式 A 规则写章 → frontmatter `title` **必须等于** architecture 路线图标题 → **写后质检** → 更新状态

---

## 模式 C · 指定章节

**触发**：「只写第 003 章」

- 仅写指定 `chapter_id`，不碰其他章
- 仍做就绪检查、**写后质检**与写后更新

---

## 模式 D · 批量生成

**触发**：「连写 3 章」「写到第 005 章」

- 从指定起章依次写，**每章质检通过并落盘**后更新 CONTINUITY 再写下一章
- 遇到蓝图未填完的 chapter → 停止并报告
- 对话中可用 `---CHAPTER-001---` 分隔

---

## 模式 E · 扩章蓝图（架构→可写桥梁）

**触发**：architecture 已有但 novel.md 缺章节蓝图

- 读 `architecture.md` 的前 N 章方向 + STORY_CORE
- 在 `novel.md` OUTLINE 追加 chapter 块（plot_summary、plot_beats、ending_hook）
- **不写正文**，写完后提示用户确认再模式 A

---

## 模式 F · 修订

**触发**：「修订第 2 章，加强悬疑」

- 读 `chapters/NNN.md` + 修订要求
- 改写后按 **写后质检清单** 再审一遍，通过再覆盖该文件，同步 CONTINUITY 摘要
- 不改动后续已写章节（除非用户要求连锁修订）

---

## 模式 G · 一致性审查

**触发**：「检查一下已写内容」

- 对照 WORLD.rules、CHARACTERS、FORESHADOW、architecture、STYLE
- **只出报告，不自动改正文**

---

## 写后质检清单（每章落盘前必做）

> **流程**：初稿 → 按本清单自检 → 修订 → 再扫一遍 → 写入 `chapters/NNN.md`。  
> 聊天回复末尾附正文时，须为**已通过质检**的版本。

### A · 逻辑与连贯

- [ ] 本章 `title` 与 `architecture.md` 路线图同章 `标题` 一致；`核心事件` 已体现
- [ ] `plot_beats` 全部体现，无遗漏或顺序错乱
- [ ] `ending_hook` 在章末落实，与下一章蓝图可衔接
- [ ] 与 `CONTINUITY`、上一章结尾、本章 `story_state` 时间线/地点一致
- [ ] 因果链自洽：人物动机合理，无「为了剧情突然变傻/变强」
- [ ] 无前后自相矛盾（同一章内 + 与已写章节 + 与 `WORLD.rules`）
- [ ] `foreshadow_plant` / `foreshadow_payoff` 处理正确，无误收/漏收
- [ ] 无提前剧透后续章节核心真相
- [ ] 系统/规则类设定（若有）表述与 `novel.md` 一致，数值、倒计时、道具状态无漂移

### B · 错别字与语言

- [ ] 别字、同音误写、常见笔误（的/地/得、在/再、做/作等）
- [ ] 标点：对话用「」；省略号、破折号、顿号用法统一
- [ ] 专名、数字、称谓前后一致（人名、地名、组织、系统词条）
- [ ] 无病句、赘句、口语化过度或书面腔突兀
- [ ] 无明显重复用词/套话（同段内同形容词、同一句式连刷）
- [ ] 围栏内为纯文本，无 `**`、`*`、`#` 等 Markdown 残留

### C · 人物与设定

- [ ] POV / 时态 / 叙事人称与 `META` 一致
- [ ] 对话符合各角色 `speech_style` / `speech_samples`；称呼、禁忌（taboo）无误
- [ ] 无未在 `CHARACTERS` 登记的重要新角色（一次性路人除外）
- [ ] 无违反 `WORLD.rules` 或角色能力边界
- [ ] 情绪与行为符合人物当前弧光，无 OOC（除非 beats 明确要求转折）

### D · 结构与篇幅

- [ ] 字数：`count-chapter.ps1` 输出 `OK:*`（勿手算、勿反复跑脚本）
- [ ] 节奏合理：开篇有抓手，中段不空转，章末有钩子
- [ ] 模仿 `STYLE` 样例的句式密度与叙事距离，无明显风格漂移

### E · 落盘前最终确认

- [ ] 通读全文一遍（建议按阅读顺序，而非写作顺序）
- [ ] 修订后复查：改一处时顺带检查前后句是否仍通顺
- [ ] 质检中发现且已修复的问题，无需在聊天里逐条汇报；**未修复的硬伤**须在回复中说明并暂停落盘

---

## 章节文件格式（双文件 · 发表可复制）

每章落盘 **两个文件**：

| 文件 | 用途 |
|------|------|
| `chapters/NNN.md` | frontmatter + 预览用 ` ```text ` 围栏正文 |
| `chapters/NNN.txt` | **发表专用**：从 md 同步，UTF-8 **CRLF** 换行 |

**为何双文件**：Cursor / VS Code 预览里从 ` ```text ` 代码块 Copy，粘贴番茄等后台时**常会丢失换行**。用户应打开 `NNN.txt` → Ctrl+A → Ctrl+C，段落换行可保留。

落盘：`count-chapter.ps1` →（如需）**一次**整段扩删 → `finish-chapter.ps1 -Path`（count+sync+索引合一）。

### `NNN.md` 模板

```markdown
---
chapter_id: "001"
title: 章节标题
word_count: 4200
status: done
---

> `word_count` = 围栏正文字数（只计字，不计标点与换行）。发表复制：打开同目录 [`001.txt`](001.txt) → Ctrl+A → Ctrl+C → 粘贴番茄后台。  
> 勿从下方代码块或预览 Copy（易丢换行）。下方仅供阅读预览。

\`\`\`text
（正文直接开篇，不要写「第一章」等元标题）
\`\`\`
```

### 正文规则（md 围栏与 txt 内容一致）

- 纯文本：不用 `**`、`*`、`#`、链接等 Markdown 标记
- 系统提示保留【】，如 `【系统提示】当前分支：…`
- **段落之间必须空一行**（单个 `\n` 在部分后台会被吞成空格）
- 对话用中文引号「」
- frontmatter 与说明行在围栏**外**，不计入 word_count

**禁止**：
- 仅写 md 不生成 txt
- 告诉用户从预览代码块 Copy 去发表（易丢换行）

---

## 与架构师衔接

| 阶段 | Agent |
|------|-------|
| 想法 → gaps → architecture → novel.md | fiction-architect |
| novel.md → chapters/*.md | **fiction-writer** |

架构师阶段 4 完成后，用户 @ 本 Skill 开写即可。

## 示例触发语

- `@fiction-writer 开写雾港`
- `续写下一章`
- `把 architecture 扩成前 5 章蓝图再开写`
- `连写 3 章`
- `修订 chapters/002.md，对话再短一点`
