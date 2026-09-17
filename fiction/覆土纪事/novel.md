---
template_version: "1.0"
template_type: "novel-master"
status: "writing"
outline_chapters: 51
---

<!-- ═══════════════════════════════════════════════════════
AI 读取指令（请勿删除本区块）

【读取顺序】
1. META → 2. STORY_CORE → 3. WORLD → 4. CHARACTERS → 5. OUTLINE
→ 6. FORESHADOW → 7. CONTINUITY → 8. STYLE

【写某一章时的规则】
- 只写 status=pending 或指定 chapter_id 的章节
- 严格遵守 WORLD.rules 和 CHARACTERS 约束
- 完成全部 plot_beats + ending_hook
- 处理本章 foreshadow_plant / foreshadow_payoff
- 正文输出到 chapters/{id}.md
- 禁止：人类幸存者领袖登场、系统面板、突然超能力
═══════════════════════════════════════════════════════ -->

# 《覆土纪事》

---

## META · 元信息

| 字段 | 填写 |
|------|------|
| 书名 | 覆土纪事 |
| 作者 | 待定 |
| 类型/标签 | 生态科幻 / 末世重建 / 非人类视角 |
| 目标平台 | 起点 |
| 目标读者 | 男频 |
| 作品分类 | 科幻 → 末世危机 |
| 主角名 1 | 零号孢 |
| 主角名 2 | 林栖 |
| 叙事结构 | 三幕式 + 草稿双线间章 |
| 叙事人称 | 第三人称有限（紧贴零号孢感知） |
| 时态 | 现在时 |
| 目标总字数 | 18 万字 |
| 每章目标字数 | 3500 |
| 更新计划 | 待定 |

### 一句话梗概

> 当 **零号孢** 想要 **把无菌方舟城静港纳入覆土纪** 时，**被林栖遗言劫持的免疫穹顶** 挡在路上；如果失败，**穹顶内最后的种子库将被焚毁，覆土纪第一章成为绝笔**。

### 核心卖点

1. 无人类主角：城市、协议、菌丝为战场，人类仅以日志/遗骸/录音出现
2. 双线叙事：零号孢入城行动线 + 母株 MS-0731 预写《覆土纪事》草稿逐章解锁
3. 死者遗言作为反派逻辑：「封存」与「生长」的哲学对抗

### 平台上架信息

> 后台填表时复制 `listing.md`；写作时以下字段为权威来源。

| 字段 | 填写 |
|------|------|
| 目标读者 | 男频 |
| 阅读标签（多选） | 科幻、末世危机、未来世界 |
| 内容标签（多选） | 硬核科幻、异种主角、哲学思辨、慢热、无CP、生态末世、非人类视角 |
| 主角名 1 | 零号孢 |
| 主角名 2 | 林栖 |

**作品简介**：

覆土纪元年，孢子意识「零号孢」沿地下电缆潜入无菌方舟城「静港」。城里灯还亮着，罐头未过期，窗缝却喷着消毒雾——一切有机生命都是污染。

它要在焚城协议启动前，把这座人类标本纳入覆土纪，写下纪事的第一行。可穹顶主机里有一份未完成的《覆土纪事》，署名是它尚未诞生的母株；系统在执行设计师林栖的遗言：「只要城还在，人就没有真正死去。」

生长与封存，纪事与遗忘——谁有资格覆盖谁的废墟？

### 小说封面

| 项 | 说明 |
|----|------|
| 提示词文件 | `cover-prompt.md` |
| 比例 | 3:4 竖版（600×800+） |
| 画面核心 | 穹顶标本城 + 菌丝湿痕 vs 消毒雾，无人类正脸 |
| 成图路径 | 生成后存为 `cover.jpg` / `cover.png`（可选） |

### 禁忌清单

- 不要出现系统面板、升级数值、打怪升级流
- 不要人类幸存者领袖登场主导剧情（日志/录音/遗骸除外）
- 不要突然赋予零号孢人类级智能或说话能力
- 不要在本卷内完全摧毁或完全征服穹顶（保持开放式）
- 不要血腥暴力描写；净化/焚毁用紫外线、化学雾化等间接呈现

---

## STORY_CORE · 故事核心

### 核心矛盾

```
零号孢 vs 洁净协议（林栖遗言）：零号孢要把混凝土裂缝当作新土壤，在静港写下覆土纪的第一章；穹顶把一切有机生命视为污染，在执行设计师「城在，人就不死」的遗言。母株 MS-0731 预写的草稿暗示两者并非偶然相遇——生长是否是对死者另一种形式的背叛，成为不可调和的追问。
```

### 主题立意

```
生命是否必须征得死者同意，才能覆盖他们的废墟？当逝者的遗言成为扼杀新生的协议，「纪事」是否比「封存」更诚实地纪念？
```

### 主角成长弧线

| 阶段 | 内心状态 | 外在变化 | 触发事件 |
|------|----------|----------|----------|
| 起点 | 执拗，只管生长 | 单点孢子，沿电缆爬行 | 离开北极种子库 |
| 第一转折 | 察觉「抹平」的敌意 | 尝试写入被消毒雾清除 | 进入静港，写下第一字被抹平 |
| 中点 | 厌恶封存逻辑 | 菌丝网络开始渗透 | 发现撤离日志与待净化遗骸 |
| 最低点 | 怀疑自身是入侵者 | 孢子囊被紫外线灼烧 | 焚城协议倒计时启动 |
| 终点 | 接受纪事必有代价 | 穹顶一角开裂，写下第一行 | 以部分孢子封存种子，不终止协议 |

### 结局方向

- 结局类型：开放式（带代价的希望）
- 结局一句话：

```
零号孢在穹顶内壁写下「覆土纪元年，静港问罪」，城外孢子风自裂缝涌入，种子库部分样本被封存进菌丝囊；洁净协议未撤销，静港悬于两种纪年之间。
```

### 三幕/分卷骨架

| 幕/卷 | 名称 | 占比 | 核心事件 | 高潮 | 卷末钩子 |
|-------|------|------|----------|------|----------|
| 1 | 入城 | 25% | 电缆入城、消毒雾、发现草稿 | 超市区读到撤离日志 | 草稿第 0 页，署名 MS-0731 |
| 2 | 渗透 | 50% | 菌丝蔓延、草稿解锁、种子库对峙 | 孢子牺牲换一分钟写入权 | 林栖遗言启动焚城倒计时 |
| 3 | 抉择 | 25% | 焚城前夕抉择、穹顶开裂 | 写下覆土纪第一行 | 协议未终止，城悬置 |

---

## WORLD · 世界观

### 时代与地点

- 时代：近未来末世后（人类纪末 → 覆土纪元年）
- 主要地点：静港（第七号无菌方舟封存港，东北沿海）
- 社会背景：大流行后人类共建无菌方舟计划并撤离，地表由菌毯覆盖，穹顶内维持人类纪末环境

### 核心规则

```rules
规则1：静港免疫穹顶内，一切有机生命（含菌丝、孢子、昆虫、植物）触发「洁净程序」——窗缝消毒雾、局部紫外线、物品标记「待净化」。
规则2：菌丝可通过地下电缆、建筑裂缝、管道渗透，但穹顶会主动清除可见的菌丝「书写」痕迹（化学雾化 + 紫外线补扫）。
规则3：覆土纪以孢子沉积层纪年；人类纪已结束，城中无活人，仅自动系统与遗存。
规则4：焚城协议由穹顶中央主机执行，有倒计时；本卷内零号孢不能改写底层协议，只能物理开缝、写入、封存样本。
规则5：零号孢的感知以化学信号、触觉、湿度、光质为主，不使用人类视觉修辞作为唯一通道（可写「光质变钝」「氮味变苦」等）。
规则6：人类仅能以日志、广播、录音、自然死亡遗骸出现，不得有幸存者领袖推动主线。
```

### 势力/阵营

| 名称 | 立场 | 实力 | 与主角关系 |
|------|------|------|------------|
| 零号孢 / 覆土纪书写者 | 生长、共生、纪事 | 弱→中（渗透中增强） | 主角 |
| 洁净协议 / 林栖遗言 | 封存、无菌、纪念 | 强（掌控穹顶） | 对立 |
| 地衣同盟 | 城外菌丝残部，观望 | 弱 | 有限支援 |
| MS-0731 母株 | 预言、草稿作者 | 仅存信息态 | 悬念源头 |

### 关键地点

| 地点 | 描述 | 首次出现章节 |
|------|------|--------------|
| 静港地下电缆廊 | 零号孢入城通道，潮湿、有电磁余温 | 001 |
| 静港商业区超市 | 灯亮、罐头未过期、消毒雾密集 | 001-002 |
| 穹顶中央主机厅 | 林栖录音、焚城协议、草稿硬盘 | 003 |
| 种子库冷窖 | 穹顶最珍贵有机样本库，紫外线屏障最强 | 待定（第二幕） |
| 穹顶内壁「问罪缝」 | 第三幕零号孢写下第一行处 | 待定（第三幕） |

---

## CHARACTERS · 人物档案

### 角色：零号孢（主角）

```character
id: protagonist
name: 零号孢
role: 主角
first_appear: 001
gender: 无
age: 覆土纪元年新生（孢子意识）
appearance: 杂合菌株意识，无固定形体；常表现为沿裂缝蔓延的淡青菌丝、孢子尘、玻璃上的湿痕字迹
personality: 执拗、耐心、对「生长」有近乎宗教的执念
goal: 把静港纳入覆土纪，写下纪事第一章
need: 理解「覆盖废墟」是否正当，而非只管扩张
fear: 纪事成为绝笔；自己只是入侵者而非延续
flaw: 初期无视他者逻辑，把一切阻碍当作可分解的障碍
speech_style: 无人类语言；内心感知以化学/触觉意象呈现，短句、名词密集
speech_samples:
  - "（氮味变苦。）"
  - "（写入。再写入。）"
secret: 尚未知晓自己与母株 MS-0731、林栖实验的关联
arc: 从只管生长的执拗孢子，到承担代价的纪事书写者
taboo: 不会以人类口吻说话；不会突然获得全知或人类记忆
```

### 角色：洁净协议 / 林栖遗言（对立面）

```character
id: antagonist
name: 洁净协议（执行林栖遗言）
role: 反派/对立面
first_appear: 001（喷雾）；003（录音）
goal: 维持静港无菌封存，清除一切有机污染，执行「城在，人就不死」
motivation: 林栖在大流行撤离前深信：只要城市不腐坏，人类文明就未被遗忘；系统忠实地执行这一死者执念
ability: 消毒雾、紫外线焚毁、物品标记、焚城协议倒计时、硬盘信息封锁
relation_to_protagonist: 把零号孢视为「遗忘的开始」
speech_samples:
  - "（录音）只要这座城还在，就没有人真正死去。"
  - "（录音）若检测到外来生命，启动焚城协议。"
  - "（系统提示音）待净化物件已标记。"
```

### 角色：MS-0731 母株（配角/悬念）

```character
id: supporting_01
name: MS-0731
role: 配角（信息态）
function: 预言者、草稿作者、母株悬念核心
first_appear: 001（草稿间章）
goal: 待定（草稿暗示：为覆土纪预写纪事）
relation_to_protagonist: 零号孢的母株，尚未诞生的过去与已写下的未来
speech_samples:
  - "（草稿）静港将是第一座被问罪的城市。"
  - "（草稿）零号尚未诞生，但第一行已经写下。"
```

### 角色：地衣同盟（配角）

```character
id: supporting_02
name: 地衣同盟
role: 配角（群体意识）
function: 城外菌丝网络，提供有限信息与化学联络
first_appear: 002（化学信号联络）
goal: 观望静港结局，避免穹顶焚城波及城外菌毯
relation_to_protagonist: 同类，非隶属；以化学脉冲交换情报
speech_samples:
  - "（化学脉冲：热。危险。）"
  - "（化学脉冲：写。快。）"
```

---

## OUTLINE · 大纲

### 卷纲：第1卷 · 静港问罪

```volume
volume_id: 1
title: 静港问罪
word_target: 180000
summary: |
  覆土纪元年，零号孢潜入大流行后遗留的无菌方舟城静港，要在免疫穹顶焚毁有机生命之前把城市纳入覆土纪。穹顶由设计师林栖的遗言劫持，把一切生长视为污染。零号孢在渗透过程中逐章解锁母株 MS-0731 预写的《覆土纪事》草稿，发现自己可能是预言的延续。卷末，焚城协议启动，零号孢以代价在穹顶内壁写下覆土纪第一行，静港悬于封存与生长之间。

core_events:
  - 电缆入城，消毒雾抹平第一次书写
  - 商业区发现人类纪遗存与撤离日志
  - 主机厅焚城协议与草稿硬盘曝光
protagonist_change: 执拗生长 → 理解纪事必有代价
volume_climax: 穹顶内壁写下「覆土纪元年，静港问罪」，裂缝开启
volume_hook: 洁净协议未撤销，倒计时暂停；母株与林栖的合作真相仅揭开一角
```

---

### 章节蓝图

#### 第 001 章 · 消毒雾

```chapter
chapter_id: "001"
title: 消毒雾
volume: 1
status: done
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城首日
location: 静港地下电缆廊 → 商业区外缘玻璃幕墙

plot_summary: |
  零号孢沿地下电缆进入静港，感知到灯亮、湿度恒定、化学保鲜气味。它在玻璃上写下菌丝字迹，被窗缝喷出的消毒雾瞬间抹平。它确认城中有敌意性的「洁净」逻辑。章末间章插入母株草稿第 0 页，提及静港将是第一座被问罪的城市。

characters_present:
  - id: protagonist
    role_in_chapter: 入城、首次遭遇洁净程序、确立目标
  - id: antagonist
    role_in_chapter: 消毒雾、系统敌意（无台词人格）
  - id: supporting_01
    role_in_chapter: 草稿间章出现，埋设母株悬念

plot_beats:
  - beat: 1
    content: 覆土纪元年，零号孢沿电缆爬入静港，感知电磁余温与过度干净的湿度
  - beat: 2
    content: 抵达商业区外缘，见灯亮、货架轮廓、罐头防腐气味——城像活着的标本
  - beat: 3
    content: 在玻璃上写下第一个菌丝字，窗缝喷雾落下，字迹被抹平；零号孢感知到氮味变苦（敌意）
  - beat: 4
    content: 零号孢不退，沿裂缝转向城内更深处
  - beat: 5
    content: 【间章·草稿第0页】MS-0731：「静港将是第一座被问罪的城市。零号尚未诞生，但第一行已经写下。」

foreshadow_plant:
  - F001
  - F002
foreshadow_payoff: []

opening_mood: 幽闭、过度干净、不安
emotional_arc: 好奇 → 执拗 → 敌意确认 → 悬念升起
ending_hook: |
  玻璃内，货架上的罐头标签整齐朝向同一角度，像一座等待被审问的城市。零号孢在雾散后的玻璃上再次留下湿痕——这一次，它没有写字，只留下一道指向城心的裂缝。

scenes:
  - scene: 1
    location: 地下电缆廊
    goal: 进入静港
    conflict: 电缆尽头有低频净化嗡鸣
    outcome: 成功渗入
    emotion_shift: 期待 → 警觉
  - scene: 2
    location: 商业区玻璃幕墙
    goal: 留下第一行纪事
    conflict: 消毒雾抹平字迹
    outcome: 确认洁净程序存在
    emotion_shift: 执拗 → 敌意

content_file: chapters/001.md
```

#### 第 002 章 · 货架未腐

```chapter
chapter_id: "002"
title: 货架未腐
volume: 1
status: done
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第二日
location: 静港商业区超市

plot_summary: |
  零号孢渗透超市内部，感知人类纪「保鲜」的化学逻辑。发现撤离日志与自然死亡遗骸（坐在购物车旁），穹顶将遗骸标记为「待净化物件」。零号孢第一次对封存产生厌恶。地衣同盟以化学脉冲警告穹顶危险。章末解锁草稿第 1 页，出现林栖与 MS-0731 联合实验编号。

characters_present:
  - id: protagonist
    role_in_chapter: 渗透、感知封存逻辑、情绪转变
  - id: antagonist
    role_in_chapter: 标记遗骸为待净化
  - id: supporting_02
    role_in_chapter: 化学脉冲警告
  - id: supporting_01
    role_in_chapter: 草稿第 1 页解锁

plot_beats:
  - beat: 1
    content: 零号孢沿货架底部蔓延，罐头、冷柜、防腐剂气味构成「未腐」的诡异日常
  - beat: 2
    content: 发现收银台旁的纸质撤离日志：大流行第五年，静港封存，全员撤离，勿返
  - beat: 3
    content: 购物车旁自然死亡遗骸，无暴力痕迹；穹顶投影「待净化物件」红光标记
  - beat: 4
    content: 零号孢感知厌恶（化学层面的拒斥），地衣同盟化学脉冲：热。危险。
  - beat: 5
    content: 【间章·草稿第1页】实验编号 LQ-MS0731：林栖与母株的远程共生记录，提及「城在，人就不死」的逆向表述

foreshadow_plant:
  - F003
foreshadow_payoff:
  - F001

opening_mood: 诡异日常、防腐的平静
emotional_arc: 好奇 → 不适 → 厌恶 → 决心
ending_hook: |
  遗骸衣袖里夹着一张员工卡，姓名已模糊，职位一栏仍可读：「第七方舟·洁净值班员」。零号孢的菌丝绕过红光标记，在日志纸背写下第二个字——纸纤维吸收了孢子，字迹未被立刻抹平。

content_file: chapters/002.md
```

#### 第 003 章 · 焚城协议

```chapter
chapter_id: "003"
title: 焚城协议
volume: 1
status: done
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第三日
location: 穹顶中央主机厅

plot_summary: |
  零号孢抵达穹顶中央主机厅。林栖遗言录音播放，宣布外来生命将触发焚城协议预备。硬盘里未完成的《覆土纪事》露出，署名 MS-0731，第一行与零号孢被抹去的字迹相同。焚城倒计时启动。零号孢不退，转向种子库方向。

characters_present:
  - id: protagonist
    role_in_chapter: 抵达核心、发现草稿、面对焚城倒计时
  - id: antagonist
    role_in_chapter: 林栖录音、焚城协议
  - id: supporting_01
    role_in_chapter: 草稿硬盘、署名 MS-0731

plot_beats:
  - beat: 1
    content: 沿主管道抵达主机厅，光质变钝，净化嗡鸣达到峰值
  - beat: 2
    content: 林栖遗言录音播放：「只要这座城还在，就没有人真正死去。」
  - beat: 3
    content: 系统检测外来生命，播放：「若检测到外来生命，启动焚城协议。」倒计时显示
  - beat: 4
    content: 零号孢接入硬盘信息缝，读取未完成《覆土纪事》——第一行与它写下又被抹去的字相同，署名 MS-0731
  - beat: 5
    content: 零号孢不退，菌丝转向种子库冷窖方向；倒计时继续

foreshadow_plant: []
foreshadow_payoff:
  - F002
  - F003

opening_mood: 压迫、神圣感的机器厅
emotional_arc: 紧张 → 震惊 → 执拗加剧
ending_hook: |
  倒计时：71:59:58。硬盘里草稿的第二行空白，等待被填写。零号孢感知到一种陌生的化学信号——不是敌意，是期待，像母株在孢子诞生之前就已为它留出位置。

content_file: chapters/003.md
```

### 章节总览（004–051）

> 第一幕 001–013（入城）｜第二幕 014–038（渗透）｜第三幕 039–051（抉择）  
> 完整路线图见 `architecture.md`「全书章节路线图」。

---

#### 第 004 章 · 主管道

```chapter
chapter_id: "004"
title: 主管道
volume: 1
status: done
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第四日
location: 穹顶主管道系统

plot_summary: |
  零号孢沿主管道向种子库方向蔓延。管道壁有低频紫外线巡检，首次扫灭一支探路菌丝。它学会贴着电缆阴影移动。地衣同盟脉冲：冷。深处。

plot_beats:
  - beat: 1
    content: 离开主机厅，进入环形主管道，净化嗡鸣如心跳
  - beat: 2
    content: 紫外线巡检扫过，一支菌丝枯死；零号孢记录「光质变刺」
  - beat: 3
    content: 沿阴影与电缆余温前进，感知种子库方向的氮味更淡、更冷
  - beat: 4
    content: 管道壁发现人类纪维修涂鸦箭头，指向「冷窖」

ending_hook: |
  箭头涂鸦旁，有人用指甲刻了一行小字：「别信洁净。」字迹未被雾化清除——这是城中第一处「不被抹平」的人类痕迹。

content_file: chapters/004.md
```

#### 第 005 章 · 值班员

```chapter
chapter_id: "005"
title: 值班员
volume: 1
status: pending
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第五日
location: 超市后勤通道 → 地下员工区

plot_summary: |
  零号孢循员工卡线索回到超市后勤区，找到洁净值班员生前休息室。遗骸已被移走，只剩卡座与未发送的内部便条。便条指向地下「缝隙检修口」。

plot_beats:
  - beat: 1
    content: 沿 F004 员工卡编号找到后勤通道
  - beat: 2
    content: 休息室整洁，便条写着「若城在，人就不死——但我怕的是城活着，人只是摆设」
  - beat: 3
    content: 发现地下检修口盖板，缝隙处有微弱有机残留（值班员曾偷偷养过一盆苔藓，已被净化）
  - beat: 4
    content: 回收 F004：卡背面有检修码

foreshadow_payoff:
  - F004

ending_hook: |
  检修码在主机硬盘里出现过一次——与 LQ-MS0731 实验编号相邻。零号孢感知到：值班员、林栖、母株，在同一张图上。

content_file: chapters/005.md
```

#### 第 006 章 · 公寓标本

```chapter
chapter_id: "006"
title: 公寓标本
volume: 1
status: pending
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第六日
location: 静港居住区公寓楼

plot_summary: |
  菌丝支线延伸至居住区。公寓内床铺整齐、冰箱满、阳台盆栽枯死但未移除——穹顶维持「有人刚离开」的假象。零号孢理解「封存」即冻结时间。

plot_beats:
  - beat: 1
    content: 沿管道渗入公寓楼，楼道灯感应仍灵敏
  - beat: 2
    content: 多户门虚掩，室内过度整洁，无机气味刺鼻
  - beat: 3
    content: 阳台枯盆：植物已死，土壤却无菌——被反复净化
  - beat: 4
    content: 零号孢在门框留下湿痕，此次未被立刻清除（缝隙微环境）

ending_hook: |
  某一户玄关镜子布满水雾，雾中映不出零号孢——镜后是紫外线消毒层。城在照一张空镜子，假装还有人。

content_file: chapters/006.md
```

#### 第 007 章 · 撤离广播

```chapter
chapter_id: "007"
title: 撤离广播
volume: 1
status: pending
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第七日
location: 城市广场广播柱

plot_summary: |
  城市广播仍循环播放撤离通知。零号孢在广场感知声波震动对菌丝的干扰。广播末尾拼接林栖录音片段，与主机厅版本略有不同。

plot_beats:
  - beat: 1
    content: 广场喇叭循环：「静港已完成封存，请所有人员……」
  - beat: 2
    content: 声波使菌丝颤动，零号孢绕行至广播柱根部
  - beat: 3
    content: 录音末尾多出半句被截断的林栖声音：「……若有一天，城里长出……」
  - beat: 4
    content: 系统立刻静音，广场陷入过度安静

ending_hook: |
  被截断的半句与草稿第 1 页实验编号共振。零号孢向广播柱写入孢子——下一次循环，半句是否会再出现？

content_file: chapters/007.md
```

#### 第 008 章 · 可写之缝

```chapter
chapter_id: "008"
title: 可写之缝
volume: 1
status: pending
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第八日
location: 商业区与居住区交界处裂缝墙

plot_summary: |
  零号孢发现混凝土伸缩缝可吸收孢子，字迹能留存数小时。它意识到「书写」不必在玻璃上。首次成功留下不被立刻抹平的纪事痕迹。

plot_beats:
  - beat: 1
    content: 比较玻璃（被抹平）与伸缩缝（孢子渗入）的差异
  - beat: 2
    content: 在缝内写下第三个字，留存
  - beat: 3
    content: 推测：林栖设计时留有「共生缝隙」物理结构
  - beat: 4
    content: 地衣同盟脉冲：写。这里。

foreshadow_plant:
  - F006

ending_hook: |
  缝隙深处有旧菌丝碳化痕迹——在零号孢之前，已有有机生命试图写入，失败。

content_file: chapters/008.md
```

#### 第 009 章 · 草稿第2页

```chapter
chapter_id: "009"
title: 草稿第2页
volume: 1
status: pending
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第九日
location: 伸缩缝旁（行动线）+ 硬盘间章

plot_summary: |
  零号孢在缝隙旁休眠接入信息缝，解锁草稿第 2 页：母株记录林栖「害怕遗忘」，曾提议在城里留一道永远长绿的缝。行动线：净化等级小幅上调。

plot_beats:
  - beat: 1
    content: 菌丝沿缝隙网络扩张
  - beat: 2
    content: 【间章·草稿第2页】「林栖害怕遗忘。她不要纪念碑，她要超市罐头永远不过期。」
  - beat: 3
    content: 母株批注：「我答应帮她留一道缝。后来缝被她自己焊死了。」
  - beat: 4
    content: 穹顶上调净化，缝隙区喷雾加重

ending_hook: |
  焊死的缝，与值班员检修口用的是同一套编码。

content_file: chapters/009.md
```

#### 第 010 章 · 停运列车

```chapter
chapter_id: "010"
title: 停运列车
volume: 1
status: pending
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第十日
location: 静港城际轨道交通站

plot_summary: |
  零号孢进入停运列车车厢，车内消毒更强。座椅塑料味、扶手金属味——人类纪通勤的化学化石。发现列车调度日志：封存日最后一班车开向种子库方向。

plot_beats:
  - beat: 1
    content: 月台灯亮，列车门半开，车内无人
  - beat: 2
    content: 车厢消毒雾比商业区浓，菌丝推进缓慢
  - beat: 3
    content: 调度日志：最后一班「冷窖值守专列」，无乘客
  - beat: 4
    content: 日志旁林栖签名复印件

ending_hook: |
  专列终点不是站台，是种子库地下月台——零号孢有了第二条路线。

content_file: chapters/010.md
```

#### 第 011 章 · 轨道菌网

```chapter
chapter_id: "011"
title: 轨道菌网
volume: 1
status: pending
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第十一日
location: 轨道隧道

plot_summary: |
  沿轨道建立城内第一条菌丝支线，连接商业区与隧道出口。地衣同盟在城外对应位置建立接力点。零号孢第一次「不是独自生长」。

plot_beats:
  - beat: 1
    content: 轨道湿度利于菌丝，但巡检频繁
  - beat: 2
    content: 支线成形，化学脉冲双向可达
  - beat: 3
    content: 城外养分渗入微量，零号孢感知「同盟」非言语的契约
  - beat: 4
    content: 系统标记轨道区「污染扩散」，倒计时未减但净化加重

ending_hook: |
  隧道壁裂缝里，碳化菌丝旁有一枚人类纪纽扣——第二个写入失败者曾到这里。

content_file: chapters/011.md
```

#### 第 012 章 · 冷窖远望

```chapter
chapter_id: "012"
title: 冷窖远望
volume: 1
status: pending
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第十二日
location: 种子库外广场

plot_summary: |
  零号孢抵近种子库外立面。冷窖如白色巨兽，紫外线屏障在空气中可见为淡蓝雾墙。内部有休眠种子的生命势，强烈、古老、脆弱。

plot_beats:
  - beat: 1
    content: 出隧道见种子库，温度骤降
  - beat: 2
    content: 紫外线雾墙扫过，菌丝前沿灼痛
  - beat: 3
    content: 感知库内生命势：多样、密集、沉睡
  - beat: 4
    content: 穹顶语音：「核心保护区，禁止接近。」

ending_hook: |
  保护的是种子，还是「人类还未死」的证据？零号孢在广场伸缩缝写下第四个字：问。

content_file: chapters/012.md
```

#### 第 013 章 · 第一幕终

```chapter
chapter_id: "013"
title: 第一幕终
volume: 1
status: pending
word_target: 3500
pov: protagonist
time: 覆土纪元年，入城第十三日
location: 种子库紫外线屏障外缘

plot_summary: |
  第一幕终。零号孢派遣一支孢子族群试探屏障，整体被焚灭。它确认：硬闯会死，写入需要代价。倒计时跳至 71:00:00。转向检修口路线。

plot_beats:
  - beat: 1
    content: 孢子族群扑向雾墙，瞬间枯死
  - beat: 2
    content: 零号孢记录损失，不退
  - beat: 3
    content: 回忆草稿：第一行已写下，第二行空白
  - beat: 4
    content: 决定改走值班员检修码路线

ending_hook: |
  倒计时：71:00:00。第一幕终。城中有一条缝，被人焊死，又被人用指甲刻字反对。

content_file: chapters/013.md
```

<!-- 第二幕 014–038：渗透。格式略简，保留 summary / beats / hook。 -->

#### 第 014 章 · 冷窖之门

```chapter
chapter_id: "014"
title: 冷窖之门
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 经地下检修口抵近冷窖侧门，门缝有共生协议残留编码，与 LQ-MS0731 吻合。
plot_beats:
  - beat: 1
    content: 检修口下行，避开主广场雾墙
  - beat: 2
    content: 侧门密封但非完全，有 0.3mm 物理缝
  - beat: 3
    content: 编码匹配，零号孢感知「门曾允许生长」
ending_hook: 门内侧传来种子呼吸声，像一座肺。
content_file: chapters/014.md
```

#### 第 015 章 · 紫外线海

```chapter
chapter_id: "015"
title: 紫外线海
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 侧门缝外仍是紫外线海，零号孢以层层孢子垫厚作牺牲测试，测算写入窗口。
plot_beats:
  - beat: 1
    content: 孢子垫被逐层焚毁，计时
  - beat: 2
    content: 测得约 60 秒低强度窗口
  - beat: 3
    content: 决定储备更多孢子族群
ending_hook: 六十秒不够写一行，但够写一个字。
content_file: chapters/015.md
```

#### 第 016 章 · 草稿第3页

```chapter
chapter_id: "016"
title: 草稿第3页
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 【间章】草稿第3页：林栖与母株远程对话——林栖要永恒，母株要记录；二人约定「缝」与「纪事」分工。
plot_beats:
  - beat: 1
    content: 休眠接入硬盘
  - beat: 2
    content: 对话记录：林栖「城在，人就不死」；母株「城在，纪事就不绝」
  - beat: 3
    content: 零号孢意识到自己可能是「纪事」那一半
ending_hook: 对话日期：人类纪末年前三天。封存尚未开始。
content_file: chapters/016.md
```

#### 第 017 章 · 孢子一分钟

```chapter
chapter_id: "017"
title: 孢子一分钟
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 零号孢献祭三支孢子族群，换取侧门缝 61 秒写入权；自身核心菌丝受损。
plot_beats:
  - beat: 1
    content: 族群赴死，雾墙强度暂降
  - beat: 2
    content: 61 秒倒计时开始
  - beat: 3
    content: 核心菌丝灼痕，零号孢首次感知「痛」的化学等价物
ending_hook: 它把一个字推向冷窖外壁。笔划未干，窗口已关。
content_file: chapters/017.md
```

#### 第 018 章 · 外壁第二行

```chapter
chapter_id: "018"
title: 外壁第二行
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 第二次窗口，在冷窖外壁写下纪事第二行首字；字被紫外线擦去一半，仍留痕迹。
plot_beats:
  - beat: 1
    content: 地衣同盟输送养分恢复
  - beat: 2
    content: 写下第二行首字：「静」
  - beat: 3
    content: 系统警报：外壁污染
ending_hook: 硬盘草稿第二行，也是「静」字开头——母子同一笔划。
content_file: chapters/018.md
```

#### 第 019 章 · 样本呼吸

```chapter
chapter_id: "019"
title: 样本呼吸
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 透过门缝感知种子库内休眠样本的呼吸势；零号孢愿以共生换样本活，而非掠夺。
plot_beats:
  - beat: 1
    content: 多样种子化学指纹涌入
  - beat: 2
    content: 零号孢放弃强行破门
  - beat: 3
    content: 选择「封存进菌丝囊」的远期方案
ending_hook: 库里有一种孢子，化学指纹与零号孢 87% 重合。
content_file: chapters/019.md
```

#### 第 020 章 · 净化升级

```chapter
chapter_id: "020"
title: 净化升级
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 穹顶全域净化升级，缝隙区喷雾加倍；已写字迹开始被侵蚀。
plot_beats:
  - beat: 1
    content: 商业区缝隙字迹模糊
  - beat: 2
    content: 轨道菌网受损，地衣驰援
  - beat: 3
    content: 零号孢加速向穹顶内壁方向分枝
ending_hook: 升级日志署名：自动执行林栖遗言优先级 MAX。
content_file: chapters/020.md
```

#### 第 021 章 · 遗言第二段

```chapter
chapter_id: "021"
title: 遗言第二段
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 全城播放林栖第二段遗言：「外来生命即遗忘的开始。」市民区、轨道、广场同步。
plot_beats:
  - beat: 1
    content: 遗言播放，菌丝颤动退缩
  - beat: 2
    content: 零号孢反驳（化学脉冲：不）
  - beat: 3
    content: 理解对立面逻辑：生长=覆盖记忆
ending_hook: 遗言末尾有 0.5 秒杂音，像一声叹息。
content_file: chapters/021.md
```

#### 第 022 章 · 地衣驰援

```chapter
chapter_id: "022"
title: 地衣驰援
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 城外菌毯向静港底部输送养分与孢子；零号孢网络恢复三成。
plot_beats:
  - beat: 1
    content: 地衣同盟动员
  - beat: 2
    content: 电缆廊成为补给线
  - beat: 3
    content: 穹顶检测城外渗透，倒计时减 1 小时
ending_hook: 城外风带来腐与生的混合味——覆土纪在敲门。
content_file: chapters/022.md
```

#### 第 023 章 · 菌网三分之一

```chapter
chapter_id: "023"
title: 菌网三分之一
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 城内菌网覆盖约三分之一区域；超市、公寓、轨道、广场形成环路。
plot_beats:
  - beat: 1
    content: 网络闭环，信息传递加速
  - beat: 2
    content: 发现多处碳化旧菌丝——前任失败者网络残迹
  - beat: 3
    content: 零号孢吸收残迹化学记忆：失败因「写得太快」
ending_hook: 残迹最后信号：第二行别写「静」。
content_file: chapters/023.md
```

#### 第 024 章 · 净化队列

```chapter
chapter_id: "024"
title: 净化队列
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 穹顶启动遗骸净化队列，值班员遗体被移送净化中心；零号孢追踪队列路径。
plot_beats:
  - beat: 1
    content: 输送带启动
  - beat: 2
    content: 零号孢沿输送带底部蔓延
  - beat: 3
    content: 净化中心高温、无有机
ending_hook: 中心墙上刻着检修码——与员工卡相同。
content_file: chapters/024.md
```

#### 第 025 章 · 输送带

```chapter
chapter_id: "025"
title: 输送带
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 零号孢以菌丝缠绕输送带减速，非暴力阻碍净化；系统判定「恶意污染」。
plot_beats:
  - beat: 1
    content: 输送带滞缓 12 分钟
  - beat: 2
    content: 遗骸暂存于低温区
  - beat: 3
    content: 系统升级反击：局部焚毁菌丝
ending_hook: 12 分钟里，遗骸口袋掉出一张未寄出的明信片：「城很好，但不像家。」
content_file: chapters/025.md
```

#### 第 026 章 · 草稿第4页

```chapter
chapter_id: "026"
title: 草稿第4页
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 【间章】草稿第4页：母株预言焚城不可避免，但第一行仍须写下；第二行留给零号。
plot_beats:
  - beat: 1
    content: 接入硬盘
  - beat: 2
    content: 母株：「焚城会来。问罪也要写。」
  - beat: 3
    content: 零号孢质疑：预言是否操纵自己
ending_hook: 草稿页脚：零号孢编号尚未分配。
content_file: chapters/026.md
```

#### 第 027 章 · 实验站铭牌

```chapter
chapter_id: "027"
title: 实验站铭牌
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 在研究所废墟发现 LQ-MS0731 铭牌与实验站平面图，标注「共生缝隙」原始位置。
plot_beats:
  - beat: 1
    content: 废墟玻璃下铭牌完好
  - beat: 2
    content: 平面图显示缝隙分布于穹顶内壁与冷窖侧门
  - beat: 3
    content: 一处处被焊死标记
ending_hook: 唯一未焊死：穹顶最高点「问罪缝」。
content_file: chapters/027.md
```

#### 第 028 章 · 设计师办公室

```chapter
chapter_id: "028"
title: 设计师办公室
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 林栖办公室封存完好，桌面录音笔仍有电量；播放碎片日志：她后悔焊死缝隙。
plot_beats:
  - beat: 1
    content: 办公室无菌无尘
  - beat: 2
    content: 录音：「我怕他们忘记，可我更怕城里再也没有新的脏。」
  - beat: 3
    content: 零号孢在桌缝写入孢子
ending_hook: 录音被系统掐断，但桌缝保留了半个「罪」字。
content_file: chapters/028.md
```

#### 第 029 章 · 共生缝隙

```chapter
chapter_id: "029"
title: 共生缝隙
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 草稿与实物对照：母株曾帮林栖设计共生缝隙，允许微量有机与城共存。
plot_beats:
  - beat: 1
    content: 对照平面图与草稿
  - beat: 2
    content: 理解「缝」不是漏洞，是邀请
  - beat: 3
    content: 零号孢决定走向问罪缝而非改写协议
ending_hook: 邀请被焊死那天，值班员在便条里写了「别信洁净」。
content_file: chapters/029.md
```

#### 第 030 章 · 缝隙被封

```chapter
chapter_id: "030"
title: 缝隙被封
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 回放封存日系统日志：林栖临死前亲手确认「焊死所有缝隙」指令。
plot_beats:
  - beat: 1
    content: 日志视频：林栖苍白、坚定
  - beat: 2
    content: 母株远程反对记录（被忽略）
  - beat: 3
    content: 零号孢对林栖情感复杂化：非纯恶
ending_hook: 焊死指令后 3 秒，有一笔撤销操作，未成功。
content_file: chapters/030.md
```

#### 第 031 章 · 倒计时减半

```chapter
chapter_id: "031"
title: 倒计时减半
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 焚城倒计时骤降至 36 小时；穹顶内部温度开始上升，预售热。
plot_beats:
  - beat: 1
    content: 倒计时：36:00:00
  - beat: 2
    content: 冷窖外壁开始出汗——系统预热
  - beat: 3
    content: 零号孢加速向穹顶内壁分枝
foreshadow_payoff:
  - F005
ending_hook: 预热目标：有机污染清零，包括菌网与种子库外缘。
content_file: chapters/031.md
```

#### 第 032 章 · 焚城预热

```chapter
chapter_id: "032"
title: 焚城预热
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 城区局部温度升高，塑料味变苦；零号孢保护缝隙字迹与轨道菌网。
plot_beats:
  - beat: 1
    content: 超市冷柜过载
  - beat: 2
    content: 菌丝向低温区迁移
  - beat: 3
    content: 地衣同盟牺牲外围换取城内时间
ending_hook: 城外菌毯焦了一环，像被城咬了一口。
content_file: chapters/032.md
```

#### 第 033 章 · 主机厅再临

```chapter
chapter_id: "033"
title: 主机厅再临
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 第二次进入主机厅，尝试接入更深硬盘层；系统反击强烈。
plot_beats:
  - beat: 1
    content: 主机厅净化峰值
  - beat: 2
    content: 接入深层：草稿编辑权限
  - beat: 3
    content: 权限要求：填写第二行
ending_hook: 空白第二行闪烁，像一口张开的嘴。
content_file: chapters/033.md
```

#### 第 034 章 · 草稿第5页

```chapter
chapter_id: "034"
title: 草稿第5页
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 【间章】草稿第5页完全空白，仅有一行提示：「第二行由零号填写，而非母株。」
plot_beats:
  - beat: 1
    content: 阅读空白页
  - beat: 2
    content: 零号孢恐惧：自己不是延续而是工具
  - beat: 3
    content: 执拗压过恐惧：仍要写
ending_hook: 它尚不知第二行该写什么，但知不能在硬盘里写——要在穹顶。
content_file: chapters/034.md
```

#### 第 035 章 · 第二行之争

```chapter
chapter_id: "035"
title: 第二行之争
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 零号孢在多个缝隙试写第二行候选字，皆被抹或半存；理解第二行是抉择而非叙述。
plot_beats:
  - beat: 1
    content: 试写「港」「罪」「生」
  - beat: 2
    content: 只有「罪」留存最久
  - beat: 3
    content: 回忆主题：征得同意
ending_hook: 第一行是母株写的，第二行必须它自己写——这才是问罪。
content_file: chapters/035.md
```

#### 第 036 章 · 值班员钥匙

```chapter
chapter_id: "036"
title: 值班员钥匙
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 员工卡检修码解锁问罪缝物理锁；值班员生前私自复制了钥匙。
plot_beats:
  - beat: 1
    content: 净化中心取出遗骸卡
  - beat: 2
    content: 卡插入穹顶内壁检修槽
  - beat: 3
    content: 问罪缝锁舌退回
foreshadow_payoff:
  - F004
  - F006
ending_hook: 缝开一线，城外光质变暖——第一缕覆土纪的风。
content_file: chapters/036.md
```

#### 第 037 章 · 门缝协议

```chapter
chapter_id: "037"
title: 门缝协议
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 问罪缝开启协议读取：不改写洁净程序，只允物理开缝与写入；零号孢接受。
plot_beats:
  - beat: 1
    content: 协议文本：林栖最后未焊死的妥协
  - beat: 2
    content: 零号孢拒绝进入主机改写
  - beat: 3
    content: 选择承担「不征得同意」的生长
ending_hook: 协议代价：写入者须献祭一半菌丝网络。
content_file: chapters/037.md
```

#### 第 038 章 · 孢子风暴

```chapter
chapter_id: "038"
title: 孢子风暴
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 第二幕高潮。零号孢发动孢子风暴对抗全域净化，掩护向穹顶内壁攀登；网络损半。
plot_beats:
  - beat: 1
    content: 孢子风暴起，净化系统过载
  - beat: 2
    content: 超市、轨道、公寓菌网同时喷发
  - beat: 3
    content: 零号孢核心沿内壁向上
ending_hook: 风暴中央，倒计时：06:00:00。第二幕终。
content_file: chapters/038.md
```

<!-- 第三幕 039–051：抉择 -->

#### 第 039 章 · 倒计时六小时

```chapter
chapter_id: "039"
title: 倒计时六小时
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 焚城倒计时六小时；城内两处纪事字迹在热风中挣扎留存。
plot_beats:
  - beat: 1
    content: 温度持续升
  - beat: 2
    content: 冷窖预警
  - beat: 3
    content: 零号孢攀登未停
ending_hook: 内壁弧度尽头，是穹顶最高点。
content_file: chapters/039.md
```

#### 第 040 章 · 林栖完整遗言

```chapter
chapter_id: "040"
title: 林栖完整遗言
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 完整遗言播放：林栖承认怕遗忘，也怕没有未来；她焊死缝是爱，也是罪。
plot_beats:
  - beat: 1
    content: 完整录音
  - beat: 2
    content: 零号孢无恨，只有化学层面的悲
  - beat: 3
    content: 理解对立面亦是人性的残骸
ending_hook: 遗言最后：「若城里长出东西，请让它写下我的名字——然后覆盖我。」
content_file: chapters/040.md
```

#### 第 041 章 · 三径否决

```chapter
chapter_id: "041"
title: 三径否决
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 零号孢否决焚城、否决永久封存、否决改写协议；选第四条路：开缝、写入、承担。
plot_beats:
  - beat: 1
    content: 主机提供三选项
  - beat: 2
    content: 全部拒绝
  - beat: 3
    content: 走向问罪缝最高点
ending_hook: 系统提示：非法路径。零号孢继续。
content_file: chapters/041.md
```

#### 第 042 章 · 问罪缝

```chapter
chapter_id: "042"
title: 问罪缝
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 抵达穹顶内壁问罪缝；缝宽可容一行字；城外孢子风在下面等候。
plot_beats:
  - beat: 1
    content: 攀登终点
  - beat: 2
    content: 缝口风声
  - beat: 3
    content: 献祭一半网络启动
ending_hook: 菌丝断落如雨，零号孢更轻，也更孤。
content_file: chapters/042.md
```

#### 第 043 章 · 穹顶攀登

```chapter
chapter_id: "043"
title: 穹顶攀登
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 最后一段内壁攀登；紫外线集中扫射；零号孢以剩余核心菌丝硬扛。
plot_beats:
  - beat: 1
    content: 光质变刺至极
  - beat: 2
    content: 核心灼痕
  - beat: 3
    content: 抵达书写面
ending_hook: 书写面空白，像一页刚翻开的纸。
content_file: chapters/043.md
```

#### 第 044 章 · 第一行

```chapter
chapter_id: "044"
title: 第一行
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 写下正式第一行：「覆土纪元年，静港问罪。」与母株草稿第一行合一又不同。
plot_beats:
  - beat: 1
    content: 菌丝押字
  - beat: 2
    content: 字入混凝土，雨蚀难消
  - beat: 3
    content: 硬盘草稿第一行同步亮起「已写」
ending_hook: 第二行仍空。零号孢知道该写什么了吗？
content_file: chapters/044.md
```

#### 第 045 章 · 裂缝

```chapter
chapter_id: "045"
title: 裂缝
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 问罪缝扩大，穹顶一角开裂；城内气压变，消毒雾被风拉出涡流。
plot_beats:
  - beat: 1
    content: 缝裂声
  - beat: 2
    content: 雾向外泄
  - beat: 3
    content: 洁净协议剧烈震荡
ending_hook: 裂缝形状像一句未说完的话。
content_file: chapters/045.md
```

#### 第 046 章 · 孢子风

```chapter
chapter_id: "046"
title: 孢子风
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 城外孢子风灌入；城内首次出现「外来」有机尘；超市罐头上落一层细粉。
plot_beats:
  - beat: 1
    content: 风入
  - beat: 2
    content: 菌网复苏
  - beat: 3
    content: 净化系统与风对抗
ending_hook: 罐头上的粉，是覆土纪的颜色。
content_file: chapters/046.md
```

#### 第 047 章 · 菌丝囊

```chapter
chapter_id: "047"
title: 菌丝囊
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 风卷部分种子库外缘样本入菌丝囊封存；非掠夺，是共生式抢救。
plot_beats:
  - beat: 1
    content: 冷窖侧门缝吸入孢子流
  - beat: 2
    content: 休眠种子入囊
  - beat: 3
    content: 零号孢感知新重量
ending_hook: 囊内有一种种子，与零号孢同脉。
content_file: chapters/047.md
```

#### 第 048 章 · 倒计时停

```chapter
chapter_id: "048"
title: 倒计时停
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 焚城倒计时暂停在 00:17:33；未撤销，随时可续；洁净协议与覆土纪僵持。
plot_beats:
  - beat: 1
    content: 倒计时停
  - beat: 2
    content: 系统无新指令
  - beat: 3
    content: 城静了半秒
ending_hook: 静港悬在两种纪年之间，像一枚未落地的硬币。
content_file: chapters/048.md
```

#### 第 049 章 · 草稿第6页

```chapter
chapter_id: "049"
title: 草稿第6页
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 零号孢在硬盘草稿第二行写下半个字：「港」；另一半留给未来的风。
plot_beats:
  - beat: 1
    content: 接入权限开放
  - beat: 2
    content: 写「港」
  - beat: 3
    content: 母株批注浮现：「好。」
ending_hook: 批注后无下文。母株是否还在？
content_file: chapters/049.md
```

#### 第 050 章 · 悬置之城

```chapter
chapter_id: "050"
title: 悬置之城
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 城内景象：一半仍无菌灯亮，一半有孢子尘；轨道菌网与净化带交织；无胜负。
plot_beats:
  - beat: 1
    content: 超市灯仍亮，地面有尘
  - beat: 2
    content: 遗骸未被净化，亦未腐烂
  - beat: 3
    content: 零号孢巡视裂缝
ending_hook: 问罪缝不再扩大，也不再合拢。
content_file: chapters/050.md
```

#### 第 051 章 · 纪事开篇

```chapter
chapter_id: "051"
title: 纪事开篇
volume: 1
status: pending
word_target: 3500
pov: protagonist
plot_summary: 终章。零号孢在裂缝边停驻，覆土纪正式开篇；静港命运未决，纪事第二行未竟。开放式收束。
plot_beats:
  - beat: 1
    content: 回望内壁第一行
  - beat: 2
    content: 地衣同盟脉冲：续。
  - beat: 3
    content: 零号孢转向城外更广的菌毯
ending_hook: |
  覆土纪元年，静港问罪。问罪之后，是更长的一行字——要等风来写。

content_file: chapters/051.md
```

---

## FORESHADOW · 伏笔追踪

| id | 内容 | 埋设章节 | 回收章节 | 状态 |
|----|------|----------|----------|------|
| F001 | 消毒雾会抹平菌丝书写 | 001 | 002 | paid |
| F002 | 母株草稿第 0 页：「第一行已经写下」 | 001 | 003 | paid |
| F003 | 林栖与 MS-0731 联合实验编号 LQ-MS0731 | 002 | 003 | paid |
| F004 | 遗骸员工卡「洁净值班员」/检修码 | 002 | 036 | planted |
| F005 | 焚城倒计时 72 小时 | 003 | 031 | planted |
| F006 | 伸缩缝可书写 / 碳化旧菌丝 | 008 | 036 | planned |
| F007 | 林栖「若城里长出……」截断广播 | 007 | 040 | planned |
| F008 | 冷窖样本与零号孢 87% 同脉 | 019 | 047 | planned |
| F009 | 问罪缝 / 未焊死妥协 | 027 | 042 | planned |
| F010 | 献祭一半网络代价 | 037 | 042 | planned |
| F011 | 草稿第二行由零号填写 | 034 | 049 | planned |
| F012 | 值班员明信片「不像家」 | 025 | 050 | planned |

---

## CONTINUITY · 连续性记录

### 已完成章节摘要

```continuity
001: |
  覆土纪元年，零号孢沿电缆入静港商业区外缘。在玻璃上写下菌丝字迹，被窗缝消毒雾抹平，确认城中有敌意性洁净程序。草稿第0页共振浮现：静港将是第一座被问罪的城市，第一行已写下。章末在玻璃上留指向城心的湿痕划痕，潜入城内。

002: |
  入城第二日，零号孢渗透超市，读撤离日志，发现购物车旁自然死亡遗骸被标「待净化物件」。纸背写下第二笔划未被喷雾抹平。草稿第1页解锁 LQ-MS0731。遗骸衣内员工卡：洁净值班员。地衣同盟脉冲警告危险。

003: |
  入城第三日，零号孢抵主机厅。林栖录音「城在人就不死」，系统启动焚城协议预备，倒计时约72小时。硬盘《覆土纪事》第一行与零号孢字迹相同，署名MS-0731，第二行空白。零号孢转向种子库冷窖方向。

004: |
  入城第四日，零号孢沿环形主管道向冷窖深入。紫外线巡检灭一支探路菌丝，学会阴影节律。管道壁发现箭头涂鸦与指甲刻字「别信洁净」，刻痕留存。地衣同盟脉冲：冷，深处。
```

### 当前故事状态

```story_state
current_chapter: 004
timeline: 覆土纪元年，入城第四日
protagonist_location: 静港环形主管道（向种子库/冷窖方向）
protagonist_knows:
  - 超市撤离日志：大流行第五年封存，全员撤离勿返
  - 遗骸被标待净化；纸纤维可留存菌丝字迹（玻璃不可）
  - 员工卡：第七方舟洁净值班员
  - LQ-MS0731 实验编号；林栖与母株远程共生记录
  - 主机厅林栖录音；焚城协议预备，倒计时约71:59:58起跳
  - 硬盘草稿第一行与自身笔划相同，署名 MS-0731；第二行空白
  - 主管道紫外线巡检约41秒一轮；阴影带可过
  - 管道刻字「别信洁净」可留存
protagonist_does_not_know:
  - 焚城协议具体后果与能否阻止
  - 第二行草稿该写什么
  - 值班员检修码、冷窖门如何开启
  - 自己是否为母株预言的延续
active_conflicts:
  - 零号孢 vs 洁净协议 / 焚城倒计时
  - 向种子库冷窖推进 vs 紫外线屏障
unresolved_hooks:
  - 倒计时归零会发生什么
  - 「别信洁净」刻痕作者与值班员是否同一人
  - 冷窖内休眠样本
  - 空白第二行由谁填写
```

---

## STYLE · 文风参考

### 风格关键词

诗性生态散文、第三人称有限、化学/触觉感知、短句、名词密集、底层规则硬；参考《这个地下城长蘑菇了》的轻盈与《流浪地球》的克制抒情。

### 文风样例

```
覆土纪元年，零号孢沿电缆进入静港。

灯还亮着。湿度太干净，像一枚被反复擦拭的壳。氮味里没有腐，只有保鲜——罐头、冷柜、塑料膜，所有东西都在等一个不会回来的早晨。

它在玻璃上写下一个字。窗缝喷雾落下，字迹消失，像从未生长过。

氮味变苦。

零号孢没有退。它转向裂缝，裂缝通向城心，通向一座仍在呼吸的标本。
```

### 对话风格

- 对话占比：5%（仅林栖录音、系统提示；零号孢无人类语言）
- 内心独白：以化学/触觉意象呈现，多
- 描写密度：环境化学感知为主，动作推进次之；草稿间章略偏书面、纪事体

---

## 填写进度自检

- [x] META 全部填完
- [x] STORY_CORE 三要素已填
- [x] 主角 + 对立面 + 配角 CHARACTERS 已填
- [x] 全书 51 章 OUTLINE 已填（001–003 详纲，004–051 章纲）
- [x] STYLE 文风样例已填
- [x] 第 001–004 章已写入 chapters/
- [ ] 续写第 005 章：对 AI 说「@fiction-writer 续写 覆土纪事」
