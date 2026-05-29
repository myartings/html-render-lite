---
name: kb-study-material
zh_name: "KB 系统学习材料"
en_name: "KB Study Material"
emoji: "📚"
description: "把知识库主题页、调研材料和争议整理成可长期阅读的系统学习 HTML"
category: doc
scenario: education
aspect_hint: "桌面长页面 / 左侧导航"
featured: 53
recommended: 7
tags: ["kb", "study", "learning", "knowledge-base", "系统学习", "教程"]
example_id: sample-kb-study-material
example_name: "KB 学习材料 · AI Coding"
example_format: markdown
example_tagline: "左侧导航 + callout + 案例折叠 + 争议双轨"
example_desc: "适合承接 system-study / KB 主题页 / 长调研材料"
---

【模板: KB 系统学习材料】
【意图】把知识库主题页、长调研、system-study 输出或多篇材料整理成一份可长期阅读、可复习、可导航的系统学习 HTML。重点是“体系化学习”，不是营销页面。

【输入适配】
用户内容可能包含：
- 知识库主题页 Markdown。
- 多篇文章摘要、摘录、来源 URL。
- 概念解释、实践步骤、反例、争议议题。
- system-study 的阶段性调研结论。
- 用户已有判断和待验证问题。

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

2. Hero
   - eyebrow: `系统学习材料`
   - H1: `{主题} 系统学习`
   - lead: 说明这份材料帮读者学会什么，80-140 字。
   - meta: 日期 / 来源数量 / 案例数量 / 争议数量 / 适用人群。

3. 学习路线 Overview
   - 3-5 个阶段卡片：入门 → 核心概念 → 实战案例 → 争议盲区 → 下一步。
   - 每个阶段写“学完能做什么”，不要只写目录名。

4. 核心章节
   - 每个一级章节一个 `<section id="...">`。
   - 每节开头先给 TL;DR，一句话结论。
   - 正文用短段落、列表、表格、代码块、callout 组合。
   - 每节末尾给“本节可带走的东西”。

5. 4 种 Callout
   - `.warn` 琥珀色：主流观点、重要变化、注意事项。
   - `.gold` 金色：盲区、反常识、选题机会。
   - `.insight` 绿色：对 myartings 的启示 / 可执行建议。
   - `.rose` 玫红：致命反模式、安全风险、不要做。

6. 案例折叠 details
   - 案例多时必须使用 `<details>`，避免长页面疲劳。
   - 每个案例包含：来源、背景、原文/事实片段、点评、可复用技巧、不要照抄什么。

7. 争议双轨
   - 对每个争议使用双栏：主流观点 vs 非主流/反方观点。
   - 给出“我的初判”与“倾向分 X/10”。
   - 明确什么证据会改变判断。

8. 复习区 / Cheat Sheet
   - 页面末尾给一张速查表。
   - 包含核心概念、判断标准、操作步骤、反模式。

9. Next Step
   - 深色块，3-5 个下一步。
   - 推荐动作要具体，例如“做一个 30 分钟原型复刻实验”、“把 X 写入 KB 页面”、“用 Y 模板生成小红书卡片”。

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

【反模式】
- 不要做成 PPT deck；这是学习材料，不是演示稿。
- 不要把所有内容堆进一屏 dashboard。
- 不要只有好看标题，没有学习路径。
- 不要为了“高级感”降低中文可读性。
- 不要把争议写成单边结论；必须保留反方和证据边界。
- 不要把输入里的长材料粗暴总结成 5 条 bullet 后结束。
