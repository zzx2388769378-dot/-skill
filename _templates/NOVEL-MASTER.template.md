---
# ═══════════════════════════════════════════════════════════
#  小说主模板 · AI 可读取 · 只读模板，禁止在此填写内容
#  使用方式：运行 scripts/new-fiction.ps1 -Name "书名"
#  或复制到 fiction/书名/novel.md 后再填写
#  有想法时：使用 fiction-architect Skill 自动分解
#  填写说明：搜索 {{ 找到所有待填项，逐项替换即可
#  模板版本：1.0
# ═══════════════════════════════════════════════════════════

template_version: "1.0"
template_type: "novel-master"
status: "draft"          # draft | outlining | writing | revision | done
---

<!-- ═══════════════════════════════════════════════════════
AI 读取指令（请勿删除本区块）

【读取顺序】
1. META        → 全局写作约束（风格、人称、篇幅）
2. STORY_CORE  → 不可违背的核心设定（矛盾、主题、结局）
3. WORLD       → 世界规则（违反即 bug）
4. CHARACTERS  → 角色行为边界与口吻
5. OUTLINE     → 卷纲 + 章节蓝图（逐章生成的唯一依据）
6. FORESHADOW  → 伏笔埋收计划
7. CONTINUITY  → 已写内容摘要（每写完一章由 AI 或作者更新）
8. STYLE       → 文风样例（AI 模仿此风格）

【写某一章时的规则】
- 只写 outline.chapters 中 status=pending 或 指定 chapter_id 的章节
- 严格遵守 WORLD.rules 和 CHARACTERS 中的约束
- 本章必须完成：plot_beats 全部情节点 + ending_hook
- 本章必须处理：foreshadow 中标注的本章埋/收项
- 写完后更新 CONTINUITY 中该章摘要，并将章节 status 改为 done
- 禁止：引入未在 CHARACTERS 登记的角色（路人除外）
- 禁止：违反 WORLD.rules 的设定
- 禁止：偏离 STORY_CORE.ending_direction 的结局方向

【字数】每章目标字数见各章 word_target，允许 ±15%
═══════════════════════════════════════════════════════ -->

# 《{{书名}}》

---

## META · 元信息

| 字段 | 填写 |
|------|------|
| 书名 | {{书名}} |
| 作者 | {{作者名}} |
| 类型/标签 | {{例：都市悬疑 / 玄幻 / 言情}} |
| 目标平台 | {{例：起点 / 晋江 / 自出版}} |
| 叙事结构 | {{三幕式 / 升级流 / 悬疑 / 群像}} |
| 叙事人称 | {{第一人称"我" / 第三人称有限 / 第三人称全知}} |
| 时态 | {{过去时 / 现在时}} |
| 目标总字数 | {{例：30万字}} |
| 每章目标字数 | {{例：3000}} |
| 更新计划 | {{例：日更4000字}} |

### 一句话梗概

> 当 **{{主角名}}** 想要 **{{目标}}** 时，**{{阻碍/反派}}** 挡在路上；如果失败，**{{代价}}**。

### 核心卖点（AI 写作时保持差异化）

1. {{卖点1：本书与同类最大的不同}}
2. {{卖点2}}
3. {{卖点3}}

### 禁忌清单（AI 绝对不要写的内容）

- {{例：不要出现系统面板、不要写超过PG-13的暴力}}
- {{例：不要突然加入未铺垫的超能力}}
- {{}}

---

## STORY_CORE · 故事核心（不可违背）

### 核心矛盾

```
{{主角}} vs {{对立面}}：{{用2-3句话描述不可调和的根本冲突}}


```

### 主题立意

```
{{这本书想表达什么？例：真相的代价 / 成长的代价 / 信任与背叛}}


```

### 主角成长弧线

| 阶段 | 内心状态 | 外在变化 | 触发事件 |
|------|----------|----------|----------|
| 起点 | {{例：天真、逃避}} | {{例：普通学生}} | {{}} |
| 第一转折 | {{}} | {{}} | {{}} |
| 中点 | {{}} | {{}} | {{}} |
| 最低点 | {{}} | {{}} | {{}} |
| 终点 | {{}} | {{}} | {{}} |

### 结局方向

- 结局类型：{{圆满 / 悲剧 / 开放式 / 反转}}
- 结局一句话：

```
{{例：主角揭开真相但失去一切，选择沉默离开}}


```

### 三幕/分卷骨架

| 幕/卷 | 名称 | 占比 | 核心事件 | 高潮 | 卷末钩子 |
|-------|------|------|----------|------|----------|
| 1 | {{}} | 25% | {{}} | {{}} | {{}} |
| 2 | {{}} | 50% | {{}} | {{}} | {{}} |
| 3 | {{}} | 25% | {{}} | {{}} | {{}} |

<!-- 长篇可追加行，或改用升级流分卷 -->

---

## WORLD · 世界观

### 时代与地点

- 时代：{{现代 / 古代 / 近未来 / 架空}}
- 主要地点：{{}}
- 社会背景：{{一句话}}

### 核心规则（AI 必须遵守，不可违反）

```rules
规则1：{{例：魔法需要消耗寿命，每次施法减寿1年}}
规则2：{{}}
规则3：{{}}
```

> 现实题材可写「无特殊规则，遵循现实逻辑」

### 势力/阵营（可选）

| 名称 | 立场 | 实力 | 与主角关系 |
|------|------|------|------------|
| {{}} | {{}} | {{}} | {{}} |
| {{}} | {{}} | {{}} | {{}} |

### 关键地点

| 地点 | 描述 | 首次出现章节 |
|------|------|--------------|
| {{}} | {{}} | {{001}} |
| {{}} | {{}} | {{}} |

---

## CHARACTERS · 人物档案

<!-- 复制下方「角色块」添加更多角色，id 必须唯一 -->

### 角色：{{protagonist}}（主角）

```character
id: protagonist
name: {{主角姓名}}
role: 主角
first_appear: {{001}}
gender: {{}}
age: {{}}
appearance: {{3个记忆点：例：左眉有疤、总是穿旧夹克、说话时会摸耳朵}}
personality: {{2-3个核心特质}}
goal: {{外在目标}}
need: {{内在需求}}
fear: {{最大恐惧}}
flaw: {{性格缺陷}}
speech_style: {{说话方式：例：短句、爱用反问、不说废话}}
speech_samples:
  - "{{典型台词1}}"
  - "{{典型台词2}}"
secret: {{可选：角色秘密}}
arc: {{从A到B的一句话}}
taboo: {{这个角色绝对不会做的事}}
```

### 角色：{{antagonist}}（反派/对立面）

```character
id: antagonist
name: {{反派姓名}}
role: 反派
first_appear: {{}}
goal: {{反派目标}}
motivation: {{反派动机——必须让他/她认为自己是对的}}
ability: {{能力/资源}}
relation_to_protagonist: {{}}
speech_samples:
  - "{{}}"
```

### 角色：{{supporting_01}}（配角）

```character
id: supporting_01
name: {{}}
role: 配角
function: {{导师/盟友/情感线/信息提供者/喜剧调剂}}
first_appear: {{}}
goal: {{独立小目标，避免工具人}}
relation_to_protagonist: {{}}
speech_samples:
  - "{{}}"
```

<!-- 继续复制添加 supporting_02, supporting_03 ... -->

---

## OUTLINE · 大纲（AI 逐章生成的依据）

### 卷纲：第1卷 · {{卷名}}

```volume
volume_id: 1
title: {{卷名}}
word_target: {{30000-80000}}
summary: |
  {{本卷500字概要：核心事件、主角变化、卷末悬念}}


core_events:
  - {{大事1}}
  - {{大事2}}
  - {{大事3}}
protagonist_change: {{卷初→卷末的状态变化}}
volume_climax: {{本卷最高潮场景}}
volume_hook: {{引导读者追下一卷的悬念}}
```

---

### 章节蓝图

<!-- 复制「章节块」添加更多章节。chapter_id 格式：001, 002, 003... -->

#### 第 {{001}} 章 · {{章节标题}}

```chapter
chapter_id: "001"
title: {{章节标题}}
volume: 1
status: pending          # pending | writing | done
word_target: {{3000}}
pov: {{视角角色 id，如 protagonist}}
time: {{时间}}
location: {{地点}}

# ── 本章必填三问 ──
plot_summary: |
  {{用3-5句话概述本章发生什么}}


characters_present:
  - id: protagonist
    role_in_chapter: {{在本章的作用}}
  - id: supporting_01
    role_in_chapter: {{}}

# ── 情节点（AI 必须全部覆盖）──
plot_beats:
  - beat: 1
    content: {{情节点1：开场}}
  - beat: 2
    content: {{情节点2}}
  - beat: 3
    content: {{情节点3}}
  - beat: 4
    content: {{情节点4：可选}}
  - beat: 5
    content: {{情节点5：可选}}

# ── 伏笔 ──
foreshadow_plant:   # 本章埋设的伏笔 id，对应 FORESHADOW 区块
  - {{F001}}
foreshadow_payoff:  # 本章回收的伏笔 id
  - {{}}

# ── 情绪与节奏 ──
opening_mood: {{例：压抑、日常、悬疑}}
emotional_arc: {{例：从麻木 → 震惊 → 决心}}
ending_hook: |
  {{章末钩子：一句话或一个画面，让读者想点下一章}}


# ── 场景细纲（可选，填了 AI 会更准）──
scenes:
  - scene: 1
    location: {{}}
    goal: {{POV角色本场景目标}}
    conflict: {{阻碍}}
    outcome: {{结果}}
    emotion_shift: {{情绪变化}}
  - scene: 2
    location: {{}}
    goal: {{}}
    conflict: {{}}
    outcome: {{}}
    emotion_shift: {{}}

# ── 正文输出区（AI 写完后填入，或输出到独立文件）──
content: |
  （AI 生成的正文写在这里，或输出到本书目录 chapters/001.md）

content_file: chapters/001.md
```

#### 第 {{002}} 章 · {{章节标题}}

```chapter
chapter_id: "002"
title: {{}}
volume: 1
status: pending
word_target: {{3000}}
pov: {{}}
time: {{}}
location: {{}}
plot_summary: |
  {{}}


characters_present:
  - id: protagonist
    role_in_chapter: {{}}

plot_beats:
  - beat: 1
    content: {{}}
  - beat: 2
    content: {{}}
  - beat: 3
    content: {{}}

foreshadow_plant:
  - {{}}
foreshadow_payoff:
  - {{}}

opening_mood: {{}}
emotional_arc: {{}}
ending_hook: |
  {{}}


content: |
  
```

#### 第 {{003}} 章 · {{章节标题}}

```chapter
chapter_id: "003"
title: {{}}
volume: 1
status: pending
word_target: {{3000}}
pov: {{}}
plot_summary: |
  {{}}


plot_beats:
  - beat: 1
    content: {{}}
  - beat: 2
    content: {{}}
  - beat: 3
    content: {{}}

ending_hook: |
  {{}}


content: |
  
```

<!-- 后续章节继续复制 chapter 块 -->

---

## FORESHADOW · 伏笔追踪

| id | 内容 | 埋设章节 | 回收章节 | 状态 |
|----|------|----------|----------|------|
| F001 | {{伏笔内容}} | {{001}} | {{015}} | planned |
| F002 | {{}} | {{}} | {{}} | planned |
| F003 | {{}} | {{}} | {{}} | planned |

<!-- status: planned | planted | paid | dropped -->

---

## CONTINUITY · 连续性记录（写完后更新）

> 每完成一章，在此追加摘要，供 AI 写后续章节时保持连贯。

### 已完成章节摘要

```continuity
# 格式：chapter_id → 摘要（200字以内，只写事实，不写评价）

001: |
  {{写完后填：例：主角在旧书馆发现父亲遗留的日记，得知10年前火灾另有隐情。章末决定找老周问话。}}

002: |
  {{}}

003: |
  {{}}
```

### 当前故事状态（写完后更新）

```story_state
current_chapter: {{003}}
timeline: {{故事内时间：例：第3天 傍晚}}
protagonist_location: {{}}
protagonist_knows:      # 主角目前已知的关键信息
  - {{}}
protagonist_does_not_know:  # 主角尚不知道（读者可能已知）
  - {{}}
active_conflicts:       # 当前进行中的冲突
  - {{}}
unresolved_hooks:       # 尚未回应的悬念
  - {{}}
```

---

## STYLE · 文风参考

### 风格关键词

{{例：冷峻、短句、少形容词、重对话、类似东野圭吾/江南/猫腻}}

### 文风样例（AI 模仿此段落语感）

```
{{粘贴你期望的文风样段，100-300字。AI 会模仿句式、节奏、用词密度。
例：
"雨下了一整夜。我醒来的时候，电话还在响。
第三通。同一个号码。
我接了。对方没说话，先挂断了。"
}}


```

### 对话风格

- 对话占比：{{例：40%}}
- 内心独白：{{多 / 少 / 无}}
- 描写密度：{{环境描写多 / 动作推进为主 / 心理描写为主}}

---

## 填写进度自检

- [ ] META 全部填完
- [ ] STORY_CORE 三要素（矛盾、成长、结局）已填
- [ ] 至少 1 个主角 + 1 个反派/对立面 CHARACTERS 已填
- [ ] 前 3 章 OUTLINE chapter 块已填 plot_beats 和 ending_hook
- [ ] STYLE 文风样例已填（强烈建议，否则 AI 风格会飘）
- [ ] 架构完成后对 AI 说：「@fiction-writer 开写 书名」
