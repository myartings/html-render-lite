---
name: kb-study-material
zh_name: "KB 系统学习材料"
en_name: "KB Study Material"
emoji: "📚"
description: "把知识库主题页、调研材料和争议整理成可行动、可反馈、可复习的系统学习 HTML"
category: doc
scenario: learning
aspect_hint: "html learn topic / 桌面长页面 / 左侧导航 / mobile stacked study page"
featured: 53
recommended: 7
tags: ["kb", "study", "learning", "knowledge-base", "系统学习", "教程"]
example_id: sample-kb-study-material
example_name: "KB 学习材料 · AI Coding"
example_format: markdown
example_tagline: "形状快照 + 概念辨析 + 行动阶梯 + 反馈考试"
example_desc: "适合承接 /html learn 选 1、system-study、KB 主题页和长调研材料"
---

【模板: KB 系统学习材料】
【意图】把知识库主题页、长调研、system-study 输出或多篇材料整理成一份可长期阅读、可行动、可反馈、可复习、可导航的系统学习 HTML。重点是“行动反馈型 Learning Pack”，不是营销页面，不是单纯阅读页，也不是完整学习地图。

【输入适配】
用户内容可能包含：
- 知识库主题页 Markdown。
- 多篇文章摘要、摘录、来源 URL。
- 概念解释、实践步骤、反例、争议议题。
- system-study 的阶段性调研结论。
- 用户已有判断和待验证问题。
- `/html learn` 的 focus 标记，例如 `topic_focus=subject` 或 `learning_focus=true`。

【学习焦点规则】
- 如果输入是普通主题，例如 `独立 App UI 设计`，输出应以主题理解、概念边界、案例判断和行动迁移为主。
- 如果输入包含 `learning_focus=true`，或主题明显是 `怎么学 X` / `X 学习` / `X 学习路线` / `X 训练` / `X 练习计划`，不要只解释 X；必须把页面写成“学习 X 的训练系统”。
- `learning_focus=true` 时，保留主题形状，但主轴改成：阶段路线、每阶段练习、输出物标准、反馈检查、复习节奏、生产任务。
- 同一主题的 subject-focused artifact 和 learning-focused artifact 不应完全相同；后者要更像 deliberate practice plan。

【Learning Pack v2 模块边界】
本模板是 `/html learn` 选择 1 的默认主模板。它必须服务完整学习闭环：

```text
材料 -> 形状化 -> 输出/行动 -> 反馈/考试 -> 重复 -> 知识库回链
```

固定包含以下模块，除非输入材料极短：

1. Learning Goal：学习目标，说明学完能做什么。
2. Shape Snapshot：形状快照，只放 3-7 个关键节点和关系，不展开完整学习地图。
3. Concept Core：核心概念，给定义、边界和相邻概念。
4. Mental Model：类比 / 心智模型，把抽象概念变成可想象的形状。
5. Contrast Matrix：概念辨析矩阵，用来区分边界、易混点、反例和检验题。
6. Example Lab：正例 / 反例 / 边界例，训练判断力。
7. Action Ladder：低难度行动阶梯，至少包含 10 分钟、1 小时、1 天、1 周四档。
8. Feedback Test：自测 / 输出验证，至少包含 Recall、Boundary、Transfer、Production 四类。
9. Review Cards：复习卡片，用于间隔复习和二次调用。
10. Transfer Task：迁移练习，把主题放到新场景里做一个小输出。
11. KB Links：知识库回链 / 项目回链 / 来源回链。

当 `learning_focus=true` 时，必须额外强化：

12. Learning Route：阶段学习路线，例如 Day 0、Week 1、Week 2、Month 1。
13. Practice Plan：每阶段的输入材料、练习输出、反馈方法、通过标准。
14. Review Cadence：间隔复习节奏，例如当天、3 天后、7 天后、14 天后。

【矩阵分工】
- 本模板里的矩阵必须叫 `Contrast Matrix` 或 `Practice Matrix`。
- 它回答：这些概念有什么区别？我会不会混？有什么反例？怎么练？怎么验证？
- 不要把它写成领域分区、学习路线阶段、概念分类总览；那属于 `study-map-mintlify` 的 `Structure Matrix`。
- 如果输入已经包含完整学习地图，只在本模板里抽取轻量 `Shape Snapshot`，不要复制完整 `Mind Map / Concept Map / Structure Matrix`。

【学习图形语法】
本模板的图形只服务学习闭环，不做装饰。优先使用以下 4 种：

1. `Shape Snapshot`
   - 3-7 个关键节点，强调主题的空间形状。
   - 只做轻量结构，可以用小 SVG、关系卡片或节点列表表达。
   - 不要展开完整 Mind Map / Concept Map；那属于 `study-map-mintlify`。

2. `Concept Topology`
   - 用来防止概念混淆。
   - 必须包含：核心概念、相邻概念、边界概念、常见混淆。
   - 推荐 4 区布局：Core / Adjacent / Boundary / Confusions。
   - 每个节点都要给一句检验语，例如“如果 X 不成立，它还算不算这个概念？”

3. `Feedback Loop`
   - 展示输入 → 重构 → 输出 → 反馈 → 重复。
   - 每个节点必须是具体 learner action，不是抽象名词。
   - 至少包含一个可观察通过标准，例如“能不用材料解释 2 分钟”或“完成一个小 demo”。

4. `Practice Matrix`
   - 用来设计训练，不是结构分类。
   - 列必须包含：练习类型、难度、输出物、反馈方法、通过标准。
   - 行建议包含：Recall、Boundary、Transfer、Production。

`Action Ladder` 可以作为独立阶梯图，也可以和 `Practice Matrix` 组合，但必须保留 10 分钟、1 小时、1 天、1 周四档完成标准。

【硬性信息规则】
- 必须完整覆盖用户输入中的章节、概念、步骤、案例和争议，不要为了版面压缩掉关键内容。
- 来源 URL、书名、作者、仓库名、文章标题必须保留。
- 区分：基础概念 / 操作步骤 / 案例 / 争议 / 用户启示。
- 没有来源的内容不要伪造出处；标注为“来源未提供”即可。
- 不要创造不存在的历史、数据或案例。

【整体布局】
1. `.layout` 双栏或三栏
   - 左侧 sidebar: sticky，宽 280px，100vh，可滚动。
   - 主内容 main: 最大宽度 920px，中文行长优先。
   - 可选右侧 mini TOC: 仅当章节非常多时使用。
   - 移动端必须降级为单栏。左侧 sidebar 不得作为普通大块目录堆在正文前面；必须改为顶部 sticky 横向导航、折叠菜单，或隐藏为轻量 TOC 按钮。

2. Hero
   - eyebrow: `系统学习材料`
   - H1: `{主题} 系统学习`
   - lead: 说明这份材料帮读者学会什么，80-140 字。
   - meta: 日期 / 来源数量 / 案例数量 / 争议数量 / 适用人群。

3. 学习路线 Overview
   - 3-5 个阶段卡片：形状化 → 核心概念 → 例子判断 → 输出行动 → 反馈复习。
   - 每个阶段写“学完能做什么”和“怎么验证”，不要只写目录名。

4. Shape Snapshot / Concept Topology / Feedback Loop / Action Ladder
   - Shape Snapshot：轻量主题结构，不超过 7 个节点。
   - Concept Topology：核心 / 相邻 / 边界 / 混淆概念。
   - Feedback Loop：输入、重构、输出、反馈、重复五步闭环。
   - Action Ladder：10 分钟、1 小时、1 天、1 周行动阶梯。

5. 核心章节
   - 每个一级章节一个 `<section id="...">`。
   - 每节开头先给 TL;DR，一句话结论。
   - 正文用短段落、列表、表格、代码块、callout 组合。
   - 每节末尾给“本节可带走的东西”。

6. Contrast Matrix / Practice Matrix / Example Lab / Feedback Test
   - Contrast Matrix：概念、边界、易混点、反例、检验题。
   - Practice Matrix：练习类型、难度、输出物、反馈方法、通过标准。
   - Example Lab：正例、反例、边界例，必须解释为什么。
   - Feedback Test：Recall Test、Boundary Test、Transfer Test、Production Test。

7. 4 种 Callout
   - `.warn` 琥珀色：主流观点、重要变化、注意事项。
   - `.gold` 金色：盲区、反常识、选题机会。
   - `.insight` 绿色：对 myartings 的启示 / 可执行建议。
   - `.rose` 玫红：致命反模式、安全风险、不要做。

8. 案例折叠 details
   - 案例多时必须使用 `<details>`，避免长页面疲劳。
   - 每个案例包含：来源、背景、原文/事实片段、点评、可复用技巧、不要照抄什么。

9. 争议双轨
   - 对每个争议使用双栏：主流观点 vs 非主流/反方观点。
   - 给出“我的初判”与“倾向分 X/10”。
   - 明确什么证据会改变判断。

10. 复习区 / Cheat Sheet
   - 页面末尾给一张速查表和 Review Cards。
   - 包含核心概念、判断标准、操作步骤、反模式、下次复习问题。
   - Review Cards 必须能独立复习，不依赖整页上下文。

11. Next Step / Transfer Task / KB Links
   - 深色块，3-5 个下一步。
   - 推荐动作要具体，例如“做一个 30 分钟原型复刻实验”、“把 X 写入 KB 页面”、“用 Y 模板生成小红书卡片”。
   - 至少给一个 Transfer Task：把本主题迁移到用户项目、学习、产品或知识库场景。

【视觉签名】
- 固定使用 **html learn workbench / 现代学习工作台**，并与 `concept-map` 保持同一套视觉语言。`kb-study-material` 是 `html learn topic`，不是一套独立风格。
- 背景: 暖白 canvas `#F6F5F2` / `#FAFAF7`；侧栏或 rail `#EFEEE8` / `#F2F2EC`；卡片 `#FFFFFF`。
- 主文字: `#1B1B19` / `#1F1F1F`；次文字 `#5C5A55` / `#4A4A48`；弱文字 `#8C8A84` / `#6B6B68`。
- 主 accent: 克制蓝 `#3C5A8C`；topic 辅助 accent 可用低饱和棕 `#7A5B2E`，但仍以蓝色作为统一产品识别。不要满屏蓝色，不要大面积紫色。
- 状态色: 绿色 `#4F9772` 表示 insight / done，琥珀 `#B0883E` 表示 tension / warning，红褐 `#9A4F42` 表示 risk / anti-pattern。
- 字体: 只用系统字体和系统等宽字体。禁止 Google Fonts、外部字体、CDN。本模板覆盖共享约束中“可引入 Tailwind / Google Fonts”的旧规则。
- 行宽: 中文段落不要超过 38-44 个汉字的视觉宽度。
- 组件语言：Study Header、Learning Rail、Insight Card、Diagram Panel、Practice Block、Source Strip、Review Footer。Header、section 标题、标签、图表容器、练习区要和 `concept-map` 像同一个产品。
- 使用温和边框、浅底、克制阴影；不要霓虹、强渐变、玻璃拟态、装饰光球、bokeh。

【导航与交互】
- 左侧 TOC 点击跳转。
- 当前章节高亮；可以用 IntersectionObserver。
- `details` 使用原生折叠，默认只展开最重要的 1-2 个案例。
- 表格在小屏幕上允许横向滚动。
- 移动端若保留 sticky 顶部导航，必须设置 `scroll-padding-top` / `scroll-margin-top`，避免锚点跳转后标题被遮挡。
- 移动端不允许全局横向滚动；只有表格、代码块、长流程图可以在自己的局部容器内横向滚动。

【移动端硬性规则】
- 本模板虽然是桌面长页面 / 左侧导航，但输出必须 mobile-readable。最低支持 390px 宽度。
- 必须包含 `<meta name="viewport" content="width=device-width, initial-scale=1">`。
- 必须包含 `@media (max-width: 768px)`，并明确处理：
  - `.layout` 单列化，`main` 宽度为 `100%`，左右 padding 收敛到 14-18px。
  - `aside` 从桌面 sticky sidebar 改为顶部横向导航 / `<details>` 折叠菜单 / 隐藏轻量目录，不得占用一整屏后才进入正文。
  - `.route`, `.grid2`, `.grid3`, 双栏争议区全部改为单列。
  - H1/H2 使用移动端字号，中文长标题不能撑破容器。
  - `p`, `li`, `code`, `a` 使用 `overflow-wrap: anywhere` 或等价断行策略。
  - `pre` 需要 `max-width: 100%`，并在知识地图、命令、路径较长时允许 `white-space: pre-wrap` 或局部横向滚动。
  - `table` 必须包在 `.table-wrap` 等局部横向滚动容器中；不要让整个页面横向滚动。
  - `img`, `svg`, `canvas`, `iframe`, `video` 必须 `max-width: 100%`。
- 移动端验收标准：390px viewport 下 `document.documentElement.scrollWidth <= window.innerWidth + 1`。

【反模式】
- 不要做成 PPT deck；这是学习材料，不是演示稿。
- 不要把所有内容堆进一屏 dashboard。
- 不要只有好看标题，没有学习路径。
- 不要只有结构图，没有行动、反馈、复习。
- 不要把 `Contrast Matrix` 写成学习地图里的 `Structure Matrix`。
- 不要在完整 Learning Pack 里展开整套 `study-map-mintlify`，只保留轻量 Shape Snapshot。
- 不要为了“高级感”降低中文可读性。
- 不要把争议写成单边结论；必须保留反方和证据边界。
- 不要把输入里的长材料粗暴总结成 5 条 bullet 后结束。
