---
name: decision-matrix
zh_name: "决策矩阵"
en_name: "Decision Matrix"
emoji: "🧭"
description: "把多方案选择整理成可比较、可复盘、可执行的决策界面"
category: decision
scenario: planning
aspect_hint: "桌面长页面 / 响应式表格"
featured: 31
tags: ["decision", "matrix", "compare", "tradeoff", "决策", "比较"]
---

【模板: 决策矩阵】
【意图】帮助人做选择。适合产品方向、App 方案、技术选型、投资判断、工具取舍、路线优先级。不要写成普通总结文章。

【核心输出】
- 页面必须先给结论: 推荐哪个选项、为什么、何时反悔。
- 必须展示 options × criteria 的矩阵，让人能横向比较。
- 必须包含 trade-off、风险、未知项和下一步验证动作。
- 如果证据不足，明确写“不足以决策”，不要强行推荐。

【输入适配】
用户内容可能包含：
- 2-6 个候选方案。
- 用户目标、约束、预算、时间、技术栈、偏好。
- 零散观点、文章摘要、产品设想、投资标的或竞品。

【布局】
1. Header
   - eyebrow: `Decision Surface`
   - H1: 直接写决策主题，不要抽象标题。
   - lead: 1-2 句话说明这页替代什么决策动作。
   - meta chips: options 数量、criteria 数量、confidence、last updated。

2. Verdict Strip
   - 左侧: 推荐结论。
   - 中间: 3 条最关键理由。
   - 右侧: confidence / reversibility / time horizon。
   - 结论必须可被截图分享。

3. Criteria Bar
   - 列出评分标准和权重。
   - 权重可用 `High / Medium / Low` 或 1-5。
   - 标准必须来自用户目标，不要随意创造无关指标。

4. Options Matrix
   - 使用 `<table>` 或 CSS grid。
   - 行: 选项。
   - 列: criteria、strength、weakness、risk、score、decision。
   - 对每格使用短句和色彩标记：good / mixed / risky / unknown。
   - 移动端表格必须横向滚动在局部容器里，不能造成全局横向滚动。

5. Option Cards
   - 每个选项一张卡。
   - 包含：Best for、Pros、Cons、Risks、Validation。
   - 只保留决策相关信息，不要写成百科。

6. Trade-off Map
   - 至少 2 个对立维度，例如 speed vs quality、growth vs maintenance、risk vs upside。
   - 用象限、二维条带或并排卡片表达。

7. Uncertainty & Decision Triggers
   - 哪些信息缺失。
   - 什么证据会改变结论。
   - 下一步用什么小实验验证。

【硬性视觉签名】
- 专业、冷静、决策面板感，不要 landing page / marketing hero。
- 背景 warm neutral `#fafaf7` 或接近色；正文 `#15140f`；边框 `#e7e5e0`。
- 主强调色用陶土橙 `#c96442`；风险用克制红 `#9c2a25`；正向用绿 `#1f7a3a`。
- 卡片圆角 8-12px，边框为主，阴影很轻。
- 可以使用 sticky summary 或 sticky first column，但移动端必须可读。
- 不要蓝紫渐变、玻璃拟态、hero 大图、花哨装饰。

【内容规则】
- 不要伪造数据、价格、市场结论或用户偏好。
- 不确定的格子标为 `Unknown`，不要填空话。
- 推荐必须能追溯到 criteria。
- 页面末尾必须有 `Next Decision Step`。
