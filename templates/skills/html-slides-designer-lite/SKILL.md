---
name: html-slides-designer-lite
zh_name: "HTML Slides Designer Lite"
en_name: "HTML Slides Designer Lite"
emoji: "✦"
description: "Faster controlled version of html-slides-designer for structured article deck sources: fixed visual system, limited layouts, desktop slides plus official-style mobile static preview"
category: slides
scenario: design
aspect_hint: "16:9 desktop; mobile static preview"
recommended: 12
tags: ["slides", "presentation", "deck-design", "article-deck", "lite"]
example_id: "html-slides-designer-lite-article"
example_name: "Article Deck Slides Lite"
example_format: "markdown"
example_tagline: "结构化文章 source -> 稳定横版 HTML slides"
example_desc: "固定工程暗色视觉系统、有限页面类型、桌面 16:9 翻页、移动端纵向静态预览。"
---

【模板: HTML Slides Designer Lite】

【定位】
这是 `html-slides-designer` 的轻量受控版，优先服务 Article Deck / 公众号文章总结这类已经结构化的 deck source。它不是重新发明视觉系统的设计师模式，而是把 `## Page Content` 里的页面稳定实现成一套高质量横版 HTML slides。

【输入假设】
- 输入通常已经包含 `## Deck Brief`、`## Page Plan`、`## Page Content`、`### 01` / `### 02` 等页面段落。
- 如果存在 `## Page Content` 和 `### NN`，必须视为最终 slide plan：每个 `### NN` 生成一页，不扩页，不重排主线，不把 bullet 拆成更多页。
- `recommended_pages` 只作为参考；实际页数以 `### NN` 段落为准。

【视觉系统】
- 使用固定工程暗色系统，不要每次重新设计风格：
  - `--bg: #0b0d12`
  - `--surface: #14171f`
  - `--ink: #f0eee6`
  - `--muted: #8a92a6`
  - `--accent: #ff5c39`
  - `--accent-2: #c8ff4d`
  - `--line: rgba(240,238,230,.08)`
- 字体使用系统 fallback：标题 `Aptos`, `Segoe UI`, `Helvetica Neue`, sans-serif；metadata / command / pager 使用 `ui-monospace`。
- 背景使用深色底 + 轻量 radial glow + 1px grid。不要做紫蓝 SaaS 渐变、白底大卡片、玻璃拟态、emoji 装饰。

【页面类型】
只使用这些可复用版式，按输入 `kind` 选择最接近的一种：
1. `cover`：eyebrow + 大标题 + subtitle + source。
2. `takeaway`：大标题结论 + 2-3 个短 bullet / label。
3. `split`：左右两栏对照，适合 problem / mechanism / comparison。
4. `evidence`：关键事实、命令、数据或实测证据，最多 3 个卡片。
5. `caveat`：风险、不要误读、限制条件。
6. `action` / `closing`：结论 + 下一步行动。

【内容规则】
- 页面标题必须写结论，不写空泛 topic。
- 每页只保留一个主要观点；正文最多 2-3 个短句或 3 个短 label。
- 如果输入 bullet 很多，压缩成更短的 visible copy；不要新增事实，不要编造。
- `source/article` 与 `Hermes/context` 的归因必须保留，不要把个人判断误写成原文观点。
- 代码/命令用 monospace，长 URL / code 要换行或局部横向滚动，不能撑宽页面。

【硬性输出】
- 只输出完整 HTML。第一个字符必须是 `<`，最后必须是 `</html>`。
- 单文件自包含：CSS / JS 内联，默认不用 CDN、外部脚本或外部样式。
- 禁止引入 reveal.js、Spectacle、impress.js、Marp、Slidev 或类似 slide 框架。
- 每页必须是一个 `<section class="slide">`。
- 桌面是 16:9 presentation：`.deck` 占满 viewport，`.slide` absolute overlay，`.slide.active` 可见。
- 移动端必须采用内置 deck 的 static-preview fallback：`html,body{height:auto;overflow:auto}`，`.deck{height:auto;overflow:visible}`，`.slide{position:relative;min-height:100svh;height:auto;opacity:1;pointer-events:auto}`。
- 移动端隐藏固定 pager / hint / progress，不要用透明 click-zone 或全局 touch handler 阻止浏览器滚动。
- 移动端多列 grid 改单列，`h1,h2,p,li` 设置 `overflow-wrap:anywhere` 或等价断行策略。
- 交付前自查：390px viewport 下 `document.documentElement.scrollWidth <= window.innerWidth + 1`。

【交互】
- 桌面支持 ArrowRight / Space / PageDown 下一页。
- 桌面支持 ArrowLeft / PageUp 上一页。
- 桌面支持 Home / End 跳到首尾。
- 可选：桌面点击右 70% 下一页，左 30% 上一页；移动端不要启用全局点击翻页。
- 不需要 overview、speaker notes、复杂动画。transition 使用 fade 或 instant cut。

【实现建议】
- 用少量语义 class：`.deck`, `.slide`, `.bg`, `.content`, `.eyebrow`, `.pager`, `.split`, `.panel`, `.proof`, `.chips`。
- 桌面 slide padding 使用 `clamp(2rem,5vh,5rem) clamp(2rem,7vw,7rem)`。
- 固定页码放右下角；移动端隐藏。
- 如果内容超出桌面 slide，优先压缩文案或降低局部字号，不要依赖 `overflow:hidden` 裁切正文。
