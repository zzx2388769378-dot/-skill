---
template_version: "1.0"
template_type: "novel-master"
status: "outlining"
outline_chapters: 12
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
- 正文输出到 chapters/{id}.md，并同步 .txt
- 每章字数见 fiction-writer：1988～2528
- 禁止：实操描写、未成年、超自然、无脑跪舔 HE、未登记重要角色
- 尺度：可写近距离/呼吸/领口/未解衣扣；停在「衣冠未乱」
═══════════════════════════════════════════════════════ -->

# 《衣冠未乱》

---

## META · 元信息

| 字段 | 填写 |
|------|------|
| 书名 | 衣冠未乱 |
| 作者 | 待定 |
| 类型/标签 | 都市婚恋商战 / 身份反差 / 擦边打脸 / 先婚后爱 |
| 目标平台 | 番茄小说 |
| 目标读者 | 女频 |
| 作品分类 | 都市 → 都市日常 |
| 主角名 1 | 顾晚 |
| 主角名 2 | 霍川 |
| 叙事结构 | 三幕商战（隐藏期→身份初露→全面翻盘） |
| 叙事人称 | 第三人称有限（主贴顾晚） |
| 时态 | 过去时 |
| 目标总字数 | 40 万字（30～50 万区间中值） |
| 每章目标字数 | 2200（落盘按 1988～2528） |
| 更新计划 | 待定 |

### 一句话梗概

> 当 **顾晚** 想要 **救活娘家高定品牌并完成反向收购** 时，**霍川与霍家吞并机器** 挡在路上；如果失败，**商标被过户、工厂停工，她被钉成攀高枝笑话**。

### 核心卖点（AI 写作时保持差异化）

1. 反差打在「秘书服从」与「老板签字权」，不是无脑霸总甜宠
2. 擦边服务权力翻转，书名即尺度：衣冠未乱
3. 霍川真对手→敬畏改观，HE 建立在对等

### 禁忌清单（AI 绝对不要写的内容）

- 不要写性行为实操、露骨器官描写
- 不要未成年、不要 NTR、不要强奸情节美化
- 不要系统面板、超能力、重生金手指（本书无）
- 不要让顾晚无脑恋爱脑；打脸前不无故跪舔
- 不要把霍川写成纯工具渣后秒变深情无铺垫

### 平台上架信息

完整填表版见 **`listing.md`**。封面提示词见 **`cover-prompt.md`**。

---

## STORY_CORE · 故事核心（不可违背）

### 核心矛盾

```
顾晚 vs 霍川（及霍家）：
顾晚以秘书皮囊护住晚裁控股权，要在闪婚框架内反向收购；
霍川要效率与可控婚姻，把她当陪嫁劳动力；
霍景深要商标与工厂。权力不对等时，感情不许发生。
```

### 主题立意

```
谁先低头，谁就先输掉谈判桌。
真正的靠近，发生在衣冠未乱、合同先乱之后。
```

### 主角成长弧线

| 阶段 | 内心状态 | 外在变化 | 触发事件 |
|------|----------|----------|----------|
| 起点 | 清醒隐忍，怕重蹈母亲失品牌 | 秘书工牌，分房空戒 | 闪婚入住霍家 |
| 第一转折 | 敢在文件上露出锋芒 | 首次以实际控制人签字 | 第 003 章谈判 |
| 中点 | 敬畏与心动并存，仍控场 | 公开「顾总」身份 | 卷二亮身份 |
| 最低点 | 几乎失去商标，隐忍代价爆发 | 工厂停工、舆论围剿 | 强制过户条款启动 |
| 终点 | 对等、可靠近 | 品牌夺回，婚约重谈 | 终局发布会 |

### 结局方向

- 结局类型：圆满（HE）
- 结局一句话：

```
晚裁夺回；顾晚与霍川废除不平等条款，对等合伙/重新定义婚姻；
先对等、再靠近；衣冠未乱，心已相认。
```

### 三幕/分卷骨架

> 目录以 **8 卷卷名** 为准；三幕仅节奏对照。详见 `architecture.md`。

| 卷 | 卷名 | 占比 | 核心事件 | 高潮 | 卷末钩子 |
|----|------|------|----------|------|----------|
| 1 | 秘书与空戒 | 12.5% | 闪婚、倒水、空戒、并购草稿 | 倒水反差立住 | 盖章栏＝霍氏指定人 |
| 2 | 卡货与壳 | 12.5% | 卡货、小胜、霍川起疑 | 卡货破解 | 触到壳公司边缘 |
| 3 | 签字栏 | 12.5% | 亮签字权余波、加速过户压力 | 签字栏＝顾晚（余波） | 霍景深出手 |
| 4 | 衣冠将乱 | 12.5% | 舆论战、领带停顿、改口顾总 | 当众改口 | 强制过户草案 |
| 5 | 旧债与刀 | 12.5% | 旧债、濒停、反向暗扣现形 | 几乎失商标 | 方澈挖出暗扣 |
| 6 | 站队之前 | 12.5% | 霍川摇摆、岑野趁火 | 公开护她半步 | 董事会投票倒计时 |
| 7 | 未乱之约 | 12.5% | 反向条款、站队、终局发布会 | 商标夺回 | 条款作废重谈 |
| 8 | 先对等 | 12.5% | 复工、婚约重签、HE | 先对等再靠近 | 收束 |

---

## WORLD · 世界观

### 时代与地点

- 时代：当代
- 主要地点：一线城市（霍氏大厦、晚裁工厂、宴会酒店、霍宅）
- 社会背景：家族企业并购常态化，高定品牌靠设计权与供应链存活

### 核心规则（AI 必须遵守，不可违反）

```rules
规则1：无超自然；商法、舆论、供应链遵循现实逻辑
规则2：闪婚已领证；婚内分房、未同房；考察期条款可被双方利用
规则3：晚裁控股权暗挂顾晚侧，对外话术为「陪嫁品牌」
规则4：尺度止于衣冠未乱——近距离/呼吸/领口/未解扣可写，实操不可写
规则5：重要打脸须有文件/供应链/舆论场证据，禁止无逻辑打脸
```

### 势力/阵营（可选）

| 名称 | 立场 | 实力 | 与主角关系 |
|------|------|------|------------|
| 霍氏集团 | 吞并晚裁 | 资本+公关+供应链 | 对立面大本营 |
| 晚裁 | 求生 | 设计口碑+工厂老人 | 顾晚要守的东西 |
| 媒体/公关圈 | 风向 | 放大羞辱或翻案 | 战场 |

### 关键地点

| 地点 | 描述 | 首次出现章节 |
|------|------|--------------|
| 发布会后台 | 开篇羞辱场 | 001 |
| 霍宅分房 | 空戒与边界 | 002 |
| 谈判室 | 首次亮身份 | 003 |
| 晚裁工厂 | 宋姨、卡货 | 002 |

---

## CHARACTERS · 人物档案

### 角色：顾晚（主角）

```character
id: protagonist
name: 顾晚
role: 主角
first_appear: 001
gender: 女
age: 27
appearance: 眉目清淡；常穿妥帖白衬衫；手指稳，签字极快；笑时不露怒
personality: 清醒、隐忍、算得清、不轻易解释
goal: 保住晚裁控股权与工厂，完成反向收购
need: 被当作平等的人，而非陪嫁物
fear: 重蹈母亲「为联姻失品牌」
flaw: 过度隐忍，差点错过最佳翻盘窗口
speech_style: 短句、得体、刀藏在礼貌里
speech_samples:
  - "霍总，水凉了，我再去换一杯。"
  - "签字栏在这里。名字，是我的。"
secret: 晚裁实际控制人；联姻协议里埋了反向条款
arc: 从隐忍护厂的秘书，到灯下敢署名的顾总，并允许对等的靠近
taboo: 不会为取悦霍川出卖工厂与商标；不会主动肉身交易换资源
```

### 角色：霍川（对立面→男主）

```character
id: antagonist
name: 霍川
role: 对立面（后期转为男主/同盟）
first_appear: 001
gender: 男
age: 29
appearance: 身量高；常年深色定制；解领带的动作干净，停住时更危险
personality: 效率优先、场面压迫、傲但非蠢
goal: 高效完成联姻并购，维持家族与自我掌控感
motivation: 自认对「陪嫁秘书」的态度是家族规则下的正常；效率高于共情
ability: 资本话语权、场面压迫、商业嗅觉
need: 被同等智力的人看一眼（自己未觉察）
fear: 在董事会面前交白卷
flaw: 把人当变量，直到变量反将一军
relation_to_protagonist: 法律上的丈夫；初期轻视，中期敬畏，后期追平
speech_samples:
  - "顾秘书，去倒杯水。"
  - "……顾总。请坐。"
arc: 轻视 → 敬畏 → 站队 → 对等靠近
taboo: 不在未铺垫时秒变深情跪舔；不主动强迫同房
```

### 角色：霍景深（霍家压力源）

```character
id: supporting_01
name: 霍景深
role: 配角
function: 真正吞并推手
first_appear: 012
goal: 拿下晚裁商标与产能
motivation: 家族版图与董事局面子
relation_to_protagonist: 霍父/董事局，视顾晚为筹码
speech_samples:
  - "联姻不是谈恋爱。把章盖了。"
```

### 角色：沈映（霍母）

```character
id: supporting_04
name: 沈映
role: 配角
function: 家规与体面压迫
first_appear: 002
goal: 联姻看起来体面
relation_to_protagonist: 表面接纳，话里物化
speech_samples:
  - "晚晚既然进了门，规矩要懂。"
```

### 角色：霍清（公关）

```character
id: supporting_03
name: 霍清
role: 配角
function: 公关舆论刀
first_appear: 006
goal: 维护霍家形象，打压顾晚
relation_to_protagonist: 堂姐，初期敌对
speech_samples:
  - "攀高枝的故事，读者爱看。"
```

### 角色：赵衡（鹰派董事）

```character
id: supporting_05
name: 赵衡
role: 配角
function: 董事会投票压力
first_appear: 012
goal: 并购业绩
relation_to_protagonist: 间接敌
speech_samples:
  - "考察期不是谈恋爱的假期。"
```

### 角色：裴言（霍川助理）

```character
id: supporting_06
name: 裴言
role: 配角
function: 递文件、传话、可倒戈情报
first_appear: 001
goal: 保住职位
relation_to_protagonist: 开篇递草稿；墙头草
speech_samples:
  - "顾秘书，这份今晚要回。"
```

### 角色：宋姨（工厂）

```character
id: supporting_02
name: 宋姨
role: 配角
function: 工厂情感锚、卡货危机载体
first_appear: 002
goal: 工厂不停工，工人有活干
relation_to_protagonist: 顾晚母亲旧部，忠于晚裁
speech_samples:
  - "晚晚，原料卡在门口了。"
```

### 角色：祁舟（设计师）

```character
id: supporting_07
name: 祁舟
role: 配角
function: 事业盟友、设计权冲突
first_appear: 005
goal: 作品不被并购稀释
relation_to_protagonist: 晚裁主理，偶有理念冲突
speech_samples:
  - "商标没了，我的款号还算谁的？"
```

### 角色：方澈（律师）

```character
id: supporting_08
name: 方澈
role: 配角
function: 法律刃、条款战
first_appear: 003
goal: 按约护权
relation_to_protagonist: 知暗股不泄
speech_samples:
  - "实际控制人到场。名字，在这里。"
```

### 角色：周眠（壳公司）

```character
id: supporting_09
name: 周眠
role: 配角
function: 股权暗线钥匙
first_appear: 008
goal: 安全隐身、拿约定费
relation_to_protagonist: 代持壳；可被利诱
speech_samples:
  - "我只签字，不问为什么。"
```

### 角色：梁书意（闺蜜）

```character
id: supporting_10
name: 梁书意
role: 配角
function: 情绪出口、媒体侧援
first_appear: 006
goal: 朋友别被吞没
relation_to_protagonist: 闺蜜，勿变纯嘴炮工具人
speech_samples:
  - "通稿我能压一版，再多你得自己打。"
```

### 角色：岑野（竞品）

```character
id: supporting_11
name: 岑野
role: 配角
function: 外部趁火打劫
first_appear: 卷6
goal: 收晚裁或挖祁舟
relation_to_protagonist: 假意示好的买家
speech_samples:
  - "霍家不要的，我要。顾总，开个价。"
```

### 角色：阮小姐（社交衬托）

```character
id: supporting_12
name: 阮小姐
role: 配角
function: 宴会衬托；勿三角恋主线化
first_appear: 007
goal: 攀霍川
relation_to_protagonist: 间接对照
speech_samples:
  - "霍总，这杯我来？"
```

---

## OUTLINE · 大纲（AI 逐章生成的依据）

### 卷纲：第1卷 · 秘书与空戒

```volume
volume_id: 1
title: 秘书与空戒
word_target: 50000
summary: |
  顾晚以闪婚秘书身份进入霍家与霍氏体系：发布会倒水、分房空戒、
  沈映家规、裴言递并购草稿。立住「秘书皮囊」与边界。


core_events:
  - 发布会倒水
  - 分房空戒
  - 并购草稿露头
protagonist_change: 进入战场，隐忍开机
volume_climax: 倒水羞辱与得体反击姿态
volume_hook: 盖章栏预留「霍氏指定人」
```

### 卷纲：第2卷 · 卡货与壳

```volume
volume_id: 2
title: 卡货与壳
word_target: 50000
summary: |
  工厂卡货、宋姨告急；顾晚暗调供应链小胜。霍清公关刀初试。
  霍川起疑，摸到壳公司边缘。


core_events:
  - 卡货危机
  - 供应链小胜
  - 壳公司侧写
protagonist_change: 从挨打到小胜
volume_climax: 卡货破解打脸
volume_hook: 霍川触到周眠壳
```

### 卷纲：第3卷 · 签字栏

```volume
volume_id: 3
title: 签字栏
word_target: 50000
summary: |
  承接卷一末「实际控制人」打脸余波；对内仍秘书、文件上已是顾总。
  霍景深、赵衡要求加速过户。


core_events:
  - 打脸余波与观察模式
  - 对内秘书 / 对外顾总错位
  - 加速过户压力
protagonist_change: 锋芒初露 → 明牌边缘
volume_climax: 错位日常与董事会施压并至
volume_hook: 霍景深出手
```

### 卷纲：第4卷 · 衣冠将乱

```volume
volume_id: 4
title: 衣冠将乱
word_target: 50000
summary: |
  舆论「攀高枝」、宴会领带停顿、身份半公开；霍川当众改口顾总。


core_events:
  - 舆论战
  - 领带停顿
  - 改口顾总
protagonist_change: 暗线转明牌边缘
volume_climax: 当众改口
volume_hook: 强制过户草案流出
```

### 卷纲：第5卷 · 旧债与刀

```volume
volume_id: 5
title: 旧债与刀
word_target: 50000
summary: |
  顾母旧债被揭，工厂濒停；方澈挖出协议反向暗扣。


core_events:
  - 旧债危机
  - 濒停
  - 暗扣现形
protagonist_change: 坠入最低点边缘
volume_climax: 几乎失商标
volume_hook: 还有一刀能反过来
```

### 卷纲：第6卷 · 站队之前

```volume
volume_id: 6
title: 站队之前
word_target: 50000
summary: |
  霍川在父与妻之间摇摆；岑野开价趁火。霍川第一次公开护她半步。


core_events:
  - 摇摆
  - 岑野趁火
  - 护她半步
protagonist_change: 仍控场，开始衡量是否允他靠近
volume_climax: 公开护半步
volume_hook: 董事会投票倒计时
```

### 卷纲：第7卷 · 未乱之约

```volume
volume_id: 7
title: 未乱之约
word_target: 50000
summary: |
  反向条款启动，霍川决裂式站队，终局发布会夺回商标。


core_events:
  - 反向条款
  - 站队
  - 终局发布会
protagonist_change: 孤军 → 有人对等并肩
volume_climax: 商标夺回
volume_hook: 联姻条款作废，重谈
```

### 卷纲：第8卷 · 先对等

```volume
volume_id: 8
title: 先对等
word_target: 50000
summary: |
  工厂复工，婚约重签；暧昧收束仍衣冠未乱。HE：先对等，再靠近。


core_events:
  - 复工
  - 婚约重签
  - HE 收束
protagonist_change: 允许对等靠近
volume_climax: 先对等再靠近
volume_hook: （收束完结）
```
---

### 章节蓝图

#### 第 001 章 · 倒杯水

```chapter
chapter_id: "001"
title: 倒杯水
volume: 1
status: pending
word_target: 2200
pov: protagonist
time: 闪婚后不久，某品牌联名发布会当日
location: 酒店发布会后台

plot_summary: |
  顾晚以霍家秘书身份跟场。霍川当众让她倒水，场面轻慢。
  她得体接下，指尖擦过袖扣。助理塞来并购草稿，盖章栏预留「霍氏指定人」。
  她将草稿收进文件夹，表情不动。


characters_present:
  - id: protagonist
    role_in_chapter: 承受羞辱、观察对手、收下草稿
  - id: antagonist
    role_in_chapter: 公开轻慢、立人设

plot_beats:
  - beat: 1
    content: 后台灯光与倒计时，顾晚整理工牌与文件
  - beat: 2
    content: 霍川当众「顾秘书，去倒杯水」；空杯、指尖、袖扣
  - beat: 3
    content: 顾晚换水回来，场面已转；她仍微笑
  - beat: 4
    content: 助理塞并购草稿；她看见预留盖章栏
  - beat: 5
    content: 她把草稿夹好；闪回半句领证日「分房」约定（极短）

foreshadow_plant:
  - F001
  - F002
foreshadow_payoff:
  - 

opening_mood: 冷场、紧绷
emotional_arc: 平静承受 → 暗记一笔
ending_hook: |
  文件夹最上层，并购草稿的盖章栏空白得刺眼——写着「霍氏指定人」。


scenes:
  - scene: 1
    location: 发布会后台
    goal: 完成跟场、不被情绪带跑
    conflict: 公开羞辱
    outcome: 得体过关
    emotion_shift: 无波 → 冷
  - scene: 2
    location: 同后台角落
    goal: 拿走关键文件
    conflict: 助理施压「今晚就要」
    outcome: 草稿入手
    emotion_shift: 冷 → 警觉

content: |
  
content_file: chapters/001.md
```

#### 第 002 章 · 空戒

```chapter
chapter_id: "002"
title: 空戒
volume: 1
status: pending
word_target: 2200
pov: protagonist
time: 发布会当晚
location: 霍宅 / 电话连线工厂

plot_summary: |
  回霍宅分房，门锁与空戒强调未同房边界。宴会后更衣室门口，
  霍川解领带又停住。宋姨来电：原料被卡。顾晚发现商标转让日程被提前。


characters_present:
  - id: protagonist
    role_in_chapter: 守边界、接危机
  - id: antagonist
    role_in_chapter: 暧昧停顿、仍傲慢
  - id: supporting_02
    role_in_chapter: 报卡货

plot_beats:
  - beat: 1
    content: 霍宅分房，戒指摘下又戴回（空戒意象）
  - beat: 2
    content: 更衣室门口领带停顿（擦边，未越线）
  - beat: 3
    content: 宋姨电话：卡货
  - beat: 4
    content: 顾晚查日程：转让节点提前

foreshadow_plant:
  - F003
foreshadow_payoff:
  - 

opening_mood: 私密、紧
emotional_arc: 边界感 → 危机感
ending_hook: |
  宋姨的声音发干：「晚晚，卡车在门口，进不来。」


content: |
  
content_file: chapters/002.md
```

#### 第 003 章 · 实际控制人

```chapter
chapter_id: "003"
title: 实际控制人
volume: 1
status: pending
word_target: 2200
pov: protagonist
time: 发布会后数日
location: 霍氏谈判室

plot_summary: |
  霍川逼顾晚以秘书身份背书。律师宣读：文件需实际控制人到场。
  签字栏姓名为顾晚。霍川第一次真正看清她。


characters_present:
  - id: protagonist
    role_in_chapter: 亮牌
  - id: antagonist
    role_in_chapter: 被打脸、改称呼边缘

plot_beats:
  - beat: 1
    content: 谈判前霍川施压「你签个字就行」
  - beat: 2
    content: 律师宣读实际控制人条款
  - beat: 3
    content: 姓名栏：顾晚；全场静
  - beat: 4
    content: 霍川沉默，第一次正视

foreshadow_plant:
  - F004
foreshadow_payoff:
  - F001

opening_mood: 压迫
emotional_arc: 隐忍 → 锋芒
ending_hook: |
  霍川看着签字栏，开口时换了称呼的第一个字，又生生咽回去。


content: |
  
content_file: chapters/003.md
```

<!-- 004–012 见 architecture.md 卷一路线图；开写前由 architect/writer 补 chapter 块 -->

---

## FORESHADOW · 伏笔追踪

| id | 内容 | 埋设章节 | 回收章节 | 状态 |
|----|------|----------|----------|------|
| F001 | 并购草稿「霍氏指定人」盖章栏 | 001 | 003 | planned |
| F002 | 闪婚分房/未同房约定 | 001 | 多章 | planned |
| F003 | 商标转让日程被提前 | 002 | 012+ | planned |
| F004 | 霍川开始查壳公司 | 003 | 008 | planned |
| F005 | 协议里顾晚反向条款 | 009 | 卷三 | planned |
| F006 | 顾母旧债 | 卷二 | 卷二末 | planned |

---

## CONTINUITY · 连续性记录（写完后更新）

### 已完成章节摘要

```continuity
001: |
  （未写）

002: |
  （未写）

003: |
  （未写）
```

### 当前故事状态（写完后更新）

```story_state
current_chapter: 000
timeline: 闪婚后，发布会日之前/当日
protagonist_location: （开写前）
protagonist_knows:
  - 自己是晚裁实际控制人
  - 分房未同房
protagonist_does_not_know:
  - 霍景深加速过户的完整时间表（开篇仅预感）
active_conflicts:
  - 霍家吞并 vs 顾晚护厂
unresolved_hooks:
  - 并购草稿盖章栏
```

---

## STYLE · 文风参考

### 风格关键词

克制暧昧、短句、感官细节（呼吸/布料/温度）、少形容词堆砌、对话藏刀、场面像镜头

### 文风样例（AI 模仿此段落语感）

```
霍川把麦克风递给别人，头也没抬。
「顾秘书，去倒杯水。」
顾晚「嗯」了一声，接过空杯。指尖擦过他袖扣，像无意。
水凉得很快。她站在饮水机前，看杯壁上淡下去的指纹，把新的一杯送回去。
衣冠未乱。她把那三个字在心里垫了一下，当作今晚的门槛。
```

### 对话风格

- 对话占比：约 35～45%
- 内心独白：少而准（顾晚算计用动作与选择表达）
- 描写密度：动作与感官推进为主，环境点到为止

---

## 填写进度自检

- [x] META 全部填完
- [x] STORY_CORE 三要素已填
- [x] 主角 + 对立面 + 关键配角 CHARACTERS 已填
- [x] 前 3 章 OUTLINE chapter 块已填 plot_beats 和 ending_hook
- [x] listing.md / cover-prompt.md 已写
- [ ] 卷一 004+ 章块待开写前补全
