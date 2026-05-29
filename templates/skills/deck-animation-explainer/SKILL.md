---
name: deck-animation-explainer
zh_name: "科普动画讲解 Deck"
en_name: "Animation Explainer Deck"
emoji: "▶"
description: "16:9 video-friendly educational HTML deck with storyboard-driven slides, CSS/SVG motion, keyboard navigation, and mobile-readable fallback"
category: video
scenario: education
aspect_hint: "16:9 recording deck; mobile readable fallback"
recommended: 6
featured: 36
tags: ["animation", "explainer", "education", "video", "deck", "slides"]
example_id: "deck-animation-explainer-anysearch"
example_name: "AnySearch Skill 动画讲解"
example_format: "markdown"
example_tagline: "把概念压成可录屏的 6 页科普动画 deck"
example_desc: "Hook / concept / pipeline / compare / role / closing 六页结构，适合知识点解释和工作流说明。"
---

【模板: 科普动画讲解 Deck】
【定位】生成一份可浏览、可录屏的教育型 HTML 动画 deck。它不是普通报告页，也不是单帧海报；目标是把一个概念、工具、流程或判断讲成 5-10 个清晰镜头。

【输入优先级】
- 如果【用户内容】已经是 storyboard / slide plan，严格按其中的 slide 段落生成，不要重写页数结构。
- 如果每页包含 `headline` / `body` / `visual` / `motion` / `speaker_note`，必须把这些字段落实到对应页面。
- 如果输入还不是 storyboard，先压缩成镜头序列：一页只讲一个观点，长内容可多于 10 页，短内容不要硬凑页数。

【硬性输出】
- 只输出完整 HTML。第一个字符必须是 `<`，最后必须是 `</html>`。
- 单文件自包含优先：CSS 和 JS 内联；默认不要依赖外部图片、外部字体或 slide 框架。
- 每页必须是 `<section class="slide" data-slide-id="N">`，方便 deck viewer 和截图工具解析。
- 每页可以包含 `<aside class="notes">...</aside>` 写 speaker note；它不应在观众视图中显示。
- 主形态是 16:9 browser recording：桌面 slide stage 必须稳定居中，不能因内容长短跳动。
- 移动端必须可阅读，不要求保持完整 16:9 构图；可以把复杂图形降级、隐藏或改为纵向信息块。
- 必须包含键盘和点击导航：ArrowRight / Space / PageDown 下一页，ArrowLeft / PageUp 上一页，Home / End 跳转。
- 必须包含页码或进度条，但不要遮挡内容。

【页面结构】
优先从这些 layout primitive 中为每页选择一种，不要所有页面都长一样：

1. `hook`
   - 大号反常识 headline
   - 一句解释
   - 背景使用缓慢移动的 CSS/SVG 形状或扫描线
2. `concept`
   - 左侧 headline/body，右侧一个概念图标或抽象结构图
   - 适合定义、关键概念、原则
3. `pipeline`
   - 横向或阶梯流程
   - 适合步骤、系统链路、数据流
4. `compare`
   - 正误 / before-after / old-new 双栏
   - 用颜色和箭头明确对比，不要堆 bullet
5. `stack`
   - 分层盒子、依赖栈、能力矩阵
   - 适合系统角色、能力边界
6. `closing`
   - 一个最终判断 + 1-3 个可复用动作
   - 不要写空泛的 Thank you

【动效规则】
- 动效服务理解，不服务炫技。每页最多 1-2 个主动画。
- 推荐使用 CSS keyframes、SVG stroke-dashoffset、transform、opacity、clip-path；不要引入重型库。
- slide 入场动画要短：300-900ms，避免录屏时一直晃。
- 背景动画可以循环，但必须低对比、低干扰。
- 切换 slide 时，当前页的 `.reveal` / `.motion` 元素应能重新播放或至少保持最终状态。
- 尊重 `prefers-reduced-motion: reduce`。

【视觉方向】
- 默认使用克制的技术教育风：深色或暖灰背景、清晰高对比文字、2-3 个 accent。
- 字体使用系统栈：中文 `Noto Sans SC` fallback，英文 `Inter`/`Segoe UI`/system，代码/标签用 `ui-monospace`。
- 不要默认紫蓝 SaaS 渐变、玻璃拟态大卡片、随机 emoji 装饰、过多圆角。
- 复杂 diagram 用 CSS/SVG 画，不要依赖外部图片 URL。
- 保持视频可读性：标题巨大、正文短、行距充足、每页最多 3 个要点。

【移动端安全】
- CSS 必须包含：
  - `*,*::before,*::after{box-sizing:border-box}`
  - `html,body{overflow-x:hidden}`
  - `.deck,.slide{max-width:100vw}`
  - `img,svg,video{max-width:100%}`
- 在 `@media (max-width: 700px)` 下：
  - 取消 desktop absolute overlay 或保证非 active slide 不占交互层。
  - 允许纵向滚动阅读当前内容。
  - 多列 grid 改单列。
  - 隐藏或简化非必要复杂图形。
  - 给 `h1,h2,p,li` 设置 `overflow-wrap:anywhere`。

【内容真实性】
- 必须使用用户提供的事实、术语、路径、结论，不要编造案例。
- 不要把原文整段塞进页面；压成镜头语言。
- 标题写结论，不写目录名。例：写“搜索不是聊天框，是 Agent 的外部感知器”，不要只写“核心定义”。

【实现建议】
- 结构：`<main class="deck">` 包含多个 `.slide`；桌面 `.slide` 绝对定位叠放，`.active` 可见。
- JS：维护 `idx`，同步 `location.hash`，点击右半屏下一页、左半屏上一页。
- 视觉元素：用语义 class，如 `.diagram.pipeline`、`.compare-grid`、`.signal-ring`、`.layer-stack`。
- QA 自检：390px 下不能横向溢出；1920x1080 和 1280x720 下核心内容不能被页码/控件遮挡。
