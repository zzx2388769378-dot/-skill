---
name: fiction-architect
description: >-
  Decomposes novel ideas into structured architecture using NOVEL-MASTER template.
  Captures raw ideas, analyzes gaps with 2-3 suggested options per missing item,
  generates architecture.md and novel.md under fiction/{title}/. Use when the user
  shares a story idea, wants to plan a novel, mentions fiction folder, or asks to
  break down / architect / 分解 / 补全 a fiction concept.
---

# Fiction Architect · 小说架构师

将用户的想法分解为可写作的小说架构，输出到 `fiction/{书名}/`。

**禁止**：修改 `_templates/` 下任何文件。

## 触发后第一步

1. 从用户描述或 `fiction/_ideas/{书名}-selected.md` 提取书名（去掉《》作文件夹名）
2. 若存在 `*-selected.md` 且用户未粘贴想法，**优先读取交接文件**作为 idea 来源
3. 检查 `fiction/{书名}/` 是否存在；不存在则运行 `scripts/new-fiction.ps1 -Name "{书名}"`
4. 将选定想法写入 `fiction/{书名}/idea.md`（来自用户原话或 selected 交接文件）

## 工作流（严格分阶段）

### 阶段 1 · 捕获 + 欠缺分析 → STOP

读取 `_templates/NOVEL-MASTER.template.md` 的必填项，对照用户想法，写入 `fiction/{书名}/gaps.md`：

```markdown
status: pending_confirmation

## 已有（从用户想法中提取，标注来源）

- 主角：…（用户原话：「…」）

## 欠缺项

| 维度 | 重要度 | 问题 | 建议 A | 建议 B | 建议 C | 你的选择 |
|------|--------|------|--------|--------|--------|----------|
| 类型/标签 | 高 | … | 都市悬疑 | 港口群像 | 慢热文学悬疑 | |
| 失败代价 | 高 | … | 母亲被灭口 | 自己被抓 | 书馆被毁 | |
| … | | | | | | |

## 待确认

- [ ] 用户已确认或修改 gaps
```

**必查维度**（缺则列入欠缺项，每项给 2～3 个建议选项）：

- 类型/标签、目标篇幅、叙事结构
- 主角（谁、要什么、怕什么、缺陷）
- 阻碍/反派、核心矛盾、失败代价
- 结局方向（不必细节，但要倾向）
- 叙事人称、时态、文风参考
- 差异化卖点（和同类有何不同）
- 世界观特殊规则（玄幻/科幻/架空必填；现实可写「遵循现实」）

**阶段 1 结束时**：

- 只写入 `idea.md` + `gaps.md`
- 在对话中简要总结已有 / 欠缺
- **STOP，等用户确认或填写「你的选择」列**
- 不要生成 `architecture.md` 或 `novel.md`

### 阶段 2 · 用户确认后 → 总架构

用户确认 gaps（或给出修改）后，写入 `fiction/{书名}/architecture.md`：

- 一句话梗概
- 核心矛盾（2～3 句）
- 主题立意
- 三幕/分卷骨架表
- 主角成长弧（起点→终点）
- 主要角色清单（主角 + 反派 + 1～2 配角）
- 前 3 章方向（每章一句话 + 章末钩子）
- 将 `gaps.md` 的 status 改为 `confirmed`

### 阶段 3 · 填入正式模板

从 `_templates/NOVEL-MASTER.template.md` 复制结构，**写入** `fiction/{书名}/novel.md`（覆盖占位版）：

- 已确认内容全部填入，去掉 `{{}}`
- 不确定的标 `待定`，不编造与用户冲突的设定
- 至少填完：META、STORY_CORE 三要素、主角+反派 character 块、第 001 章 chapter 块（含 plot_beats + ending_hook）
- 能填则填第 002、003 章蓝图
- 有文风参考则填 STYLE；无则根据 gaps 建议写 3～5 句样例供用户改
- 将 frontmatter `status` 设为 `outlining`

### 阶段 4 · 就绪检查

输出简短清单：

- [ ] 可开写第 1 章 → 提示：`@fiction-writer 开写 {书名}`
- [ ] 仍缺项 → 列出缺什么，不开始写正文

### 阶段 5 · 更新索引

完成 architecture + novel.md 后运行 `.\scripts\update-index.ps1`（或提示用户运行）。

## 对话风格（阶段 1）

- 先肯定用户已想好的部分
- 每个欠缺项：**说明为什么重要** + **2～3 个具体建议**（可带书名参考）
- 不要替用户做最终选择
- 一次不要抛超过 8 个欠缺项；可分组「先确认这 5 项，再聊剩下的」

## 文件职责

| 文件 | 谁写 | 可否改 |
|------|------|--------|
| idea.md | Agent 捕获原话 | 用户可追加，Agent 不润色原话 |
| gaps.md | Agent | 用户确认后 Agent 更新 status |
| architecture.md | Agent（阶段 2） | 用户可要求修订 |
| novel.md | Agent（阶段 3） | 用户 + 写作 Agent |
| chapters/*.md | fiction-writer | 生成正文 |

## 上游衔接

用户若通过 **fiction-ideator** 选定了想法，会将点子粘贴过来；按正常流程从阶段 1 开始，idea.md 记录用户确认后的选定版本（可含 ideator 产出 + 用户修改）。

## 示例触发语

- 「我有个想法：沿海港口悬疑，主角查父亲失踪…」
- 「ideator 选了 B，帮我分解架构」
- 「用 fiction-architect 分析一下」

## 写作阶段

架构确认后交给 **fiction-writer**：`@fiction-writer 开写 {书名}`
