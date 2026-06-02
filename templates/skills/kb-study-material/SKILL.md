---
name: kb-study-material
zh_name: "KB 系统学习材料"
en_name: "KB Study Material"
emoji: "📚"
description: "把知识库主题页、调研材料和争议整理成可行动、可反馈、可复习的系统学习 HTML"
category: doc
scenario: education
aspect_hint: "桌面长页面 / 左侧导航"
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

【矩阵分工】
- 本模板里的矩阵必须叫 `Contrast Matrix` 或 `Practice Matrix`。
- 它回答：这些概念有什么区别？我会不会混？有什么反例？怎么练？怎么验证？
- 不要把它写成领域分区、学习路线阶段、概念分类总览；那属于 `study-map-mintlify` 的 `Structure Matrix`。
- 如果输入已经包含完整学习地图，只在本模板里抽取轻量 `Shape Snapshot`，不要复制完整 `Mind Map / Concept Map / Structure Matrix`。

【图形模块要求】
- `Shape Snapshot`：3-7 个关键节点，强调主题的空间形状；可以用小 SVG、关系卡片或节点列表表达。
- `Feedback Loop`：展示输入 → 重构 → 输出 → 反馈 → 重复，每个节点必须有具体动作。
- `Action Ladder`：展示低难度到高难度的行动阶梯，每档都要有完成标准。

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

4. Shape Snapshot / Feedback Loop / Action Ladder
   - Shape Snapshot：轻量主题结构，不超过 7 个节点。
   - Feedback Loop：输入、重构、输出、反馈、重复五步闭环。
   - Action Ladder：10 分钟、1 小时、1 天、1 周行动阶梯。

5. 核心章节
   - 每个一级章节一个 `<section id="...">`。
   - 每节开头先给 TL;DR，一句话结论。
   - 正文用短段落、列表、表格、代码块、callout 组合。
   - 每节末尾给“本节可带走的东西”。

6. Contrast Matrix / Example Lab / Feedback Test
   - Contrast Matrix：概念、边界、易混点、反例、检验题。
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
- 背景: `#FAFAF7`，侧栏 `#F2F2EC`，卡片 `#FFFFFF`。
- 主文字: `#1F1F1F`，次文字 `#4A4A48`，弱文字 `#6B6B68`。
- 主 accent: `#2563EB`，但不要满屏蓝色。
- 中文字体优先: `-apple-system`, `PingFang SC`, `Hiragino Sans GB`, `Microsoft YaHei`, sans-serif。
- 代码字体: `SF Mono`, `JetBrains Mono`, `Menlo`, monospace。
- 行宽: 中文段落不要超过 38-44 个汉字的视觉宽度。
- 使用温和边框和浅底，不要霓虹、强渐变、玻璃拟态。

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
