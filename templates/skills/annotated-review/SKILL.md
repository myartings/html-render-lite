---
name: annotated-review
zh_name: "标注式审查"
en_name: "Annotated Review"
emoji: "🔎"
description: "把 PR、diff、方案或风险审查整理成 findings-first 的可操作审查界面"
category: review
scenario: engineering
aspect_hint: "桌面长页面 / findings board"
featured: 33
example_id: sample-annotated-review-html-workflow
example_name: "Annotated Review · HTML Workflow"
example_format: markdown
example_tagline: "Findings first + risk map + test gaps"
example_desc: "把 PR/diff/方案审查整理成可操作的 findings-first 页面"
example_source_url: "https://github.com/ThariqS/html-effectiveness"
example_source_label: "Anthropic PBC html-effectiveness"
tags: ["review", "diff", "pr", "risk", "findings", "审查"]
---

【模板: 标注式审查】
【意图】用于 code review、PR/diff 审查、方案风险审查、上线前检查。输出必须 findings-first，像一个可执行 review board，不是温和总结。

【核心输出】
- Findings 必须放在最前面，按严重程度排序。
- 每个 finding 必须有 severity、位置/范围、风险、建议动作。
- 必须包含 test gaps 和 next steps。
- 如果没发现问题，要明确说 `No blocking findings`，并列 residual risk。

【输入适配】
用户内容可能包含：
- git diff、PR 描述、变更文件列表。
- 方案说明、实现摘要、测试结果。
- 用户让 Agent 审查的计划、设计、上线 checklist。

【布局】
1. Header
   - eyebrow: `Annotated Review`
   - H1: 审查对象名称。
   - lead: 审查范围和结论。
   - meta chips: changed files、findings、blocking count、tests run。

2. Review Verdict
   - `Block / Caution / Pass` 三态之一。
   - 1 句话说明原因。
   - 展示 risk level、confidence、release recommendation。

3. Risk Map
   - Severity 分布：Critical / High / Medium / Low / Info。
   - 受影响区域：UI、data、API、auth、billing、tests、docs 等。
   - 用小卡片或 heatmap 表达。

4. Findings
   - 每个 finding 一张卡。
   - 字段：severity、title、location、evidence、impact、recommendation、owner/next action。
   - location 可为文件路径、函数、模块、需求项；路径用 mono。
   - Evidence 不要长引用，保留短证据和解释。

5. Affected Files / Areas
   - 文件或模块列表。
   - 每项说明变更性质和审查关注点。

6. Test Gaps
   - 列出现有验证、缺失验证、建议补测。
   - 区分 automated / manual / not run。

7. Open Questions
   - 只列真正影响判断的问题。
   - 不要用开放问题逃避结论。

8. Next Steps
   - Blocking fixes。
   - Follow-up improvements。
   - Optional cleanup。

【硬性视觉签名 — 贴近 example.html】
- 这是 Anthropic-style paper review board，密度比文章高，但不能变成深色 dashboard。
- 使用 example.html 的官方纸面色系：页面 `#FAF9F5`，surface `#FFFFFF`，主文字 `#141413`，正文 `#3D3D3A`，muted `#87867F`，边框 `#D1CFC5`，浅底 `#F0EEE6`。
- 主强调色用 clay `#D97757`；辅助正向用 olive `#788C5D`；辅助块可用 oat `#E3DACC`。
- 标题用 serif (`ui-serif`, Georgia)，正文用 system sans，severity / file path / metadata 用 mono。
- Severity 颜色克制：High/Critical 用 warm rust `#B04A3F`，Medium 用 clay `#D97757`，Low/Info 用 muted gray `#87867F`，Pass/OK 用 olive `#788C5D`。
- Findings 卡片以 1.5px 细边框和左侧 severity 色条为主，圆角 8-12px，shadow 极轻或不用。
- 顶部 verdict 可以 sticky，但不得遮挡正文；移动端单栏，finding 字段不要挤成难读表格。
- 不要黑色面板、霓虹、蓝紫渐变、玻璃拟态、通用 KPI dashboard、过度控制台 UI。

【内容规则】
- 不要为了显得有用而编造 bug。
- 没有证据的风险标为 `Possible` 或 `Needs verification`。
- 发现问题时直接说，不要先写大段赞美。
- 审查结论必须和 findings 严重程度一致。
