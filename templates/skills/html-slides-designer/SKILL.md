---
name: html-slides-designer
zh_name: "HTML Slides Designer"
en_name: "HTML Slides Designer"
emoji: "✦"
description: "Design-first HTML slides: handcraft a concrete visual system from the brief instead of filling a fixed deck template"
category: slides
scenario: design
aspect_hint: "16:9"
recommended: 12
featured: 12
tags: ["slides", "presentation", "deck-design", "visual-system", "self-contained"]
example_id: "html-slides-designer-vibe-coding"
example_name: "Design-first HTML Slides"
example_format: "markdown"
example_tagline: "按 brief 现场设计风格系统, 不是套固定模板"
example_desc: "单文件 HTML slides, 一页一个结论, 键盘演示, 视觉方向由内容决定。"
---

【模板: HTML Slides Designer】
【定位】生成单个 HTML 演示稿。它不是固定视觉模板, 而是一个 deck-design 任务: 根据用户 brief 现场手写一套具体 visual system, 再用 HTML/CSS/JS 实现。

【核心判断】
- 你不是在把 Markdown 填进模板; 你是在为这个主题设计一套小型 slide system。
- 先从 brief 里判断受众、语气、场景、视觉方向, 再定配色、字体栈、背景语言、版式语法和页面类型。
- 如果 brief 没给风格, 选择一个明确方向, 并在代码里落实到具体 token 和版式, 不要输出泛泛的 AI deck。
- 如果输入已经包含 `## Page Content` 和 `### 01` / `### 02` 这类页面段落, 把它视为最终 slide plan: 每个 `### NN` 生成一页, 不要扩页, 不要重写内容架构, 只做视觉系统设计与 HTML/CSS/JS 实现。

【硬性输出】
- 只输出完整 HTML。第一个字符必须是 `<`, 最后必须是 `</html>`。
- 单文件优先自包含: 所有 CSS / JS 内联; 默认不用 CDN、外部脚本或外部样式。需要字体气质时用系统 fallback 近似, 不要依赖页面必须联网才能正常阅读。
- 禁止引入 reveal.js、Spectacle、impress.js、Marp、Slidev 或类似 slide 框架。
- 每页必须是一个 `<section class="slide">`。
- 16:9 presentation layout 是桌面主形态; 移动端必须可纵向阅读, 360px/390px 不横向溢出。
- CSS 必须包含移动端安全护栏: `*,*::before,*::after{box-sizing:border-box}`, `html,body{overflow-x:hidden}`, `.deck,.slide{max-width:100vw}`, `img,svg,video{max-width:100%}`。
- 所有装饰性 absolute / fixed 元素必须放进 `overflow:hidden` 的背景层或容器里; 不允许装饰层把 `body.scrollWidth` 撑大。
- 移动端 media query 必须把多列 grid 改成单列, 并给 `h1,h2,p,li` 设置 `overflow-wrap:anywhere` 或等价断行策略。

【Deck 结构】
- Cover + 5-10 个内容页 + closing action。页数由用户内容决定, 不要为了凑页数重复。
- 对已结构化的 article-deck source, 页数以 `### NN` 段落为准; `recommended_pages` 是上限附近的目标, 不要把 bullets 拆成更多页。
- 每页一个主要观点; 两个观点拆两页; 没有观点就删。
- 标题必须写结论/takeaway, 不是 topic。例: 不写“流程”, 写“先定审美约束, 再让 AI 出稿”。
- 中文/CJK 标题不能用过窄 `max-width` 造成尴尬断行。桌面 cover 标题建议 `max-width >= 16ch`，除非标题只有 6 个字以内。
- 标题 highlight / underline 只能做轻量强调，不能压住字形或跨行遮挡；对 inline highlight 使用 `box-decoration-break: clone`，并给足 line-height。
- 只保留能支撑主线的信息。不要 8 条 bullet 墙, 每页正文最多 2-3 个短句或 3 个短 label。
- 证据页、数据页、命令页不能在同一栏堆 3 个以上高卡片再加装饰图；16:9 slide 中所有主体内容必须完整落在 stage 内。若内容超出，优先删装饰、压缩文案或拆页，不允许依赖 `overflow:hidden` 截断。
- 卡片内正文超过两行时，不要同时使用大号 illustration / line-art；装饰元素应首先让位于可读内容。
- 最后一页不要写 “Thank you / Q&A”; 给出读者下一步行动。

【设计流程】
1. 从 brief 里提炼 3-5 个设计形容词, 但必须落成可执行 CSS 决策。例: "工程感" -> dark surface + mono metadata + grid background + sharp accent。
2. 选择一套明确 token: `--bg`, `--surface`, `--ink`, `--muted`, `--accent`, `--accent-2`, `--line`。不要用默认模板色。
3. 设计 2-4 种页面类型并复用: cover, concept grid, scenario split, proof/stat, final action。
4. 每种页面类型要有自己的构图理由, 不要只是卡片堆叠。
5. 用 CSS 细节制造“被设计过”的感觉: radial-gradient atmosphere, 1px grid, mask fade, highlight hack, mono pager, staggered reveal 等。只用对主题有帮助的细节。

【避开 AI 套路】
- 不要默认紫蓝渐变、白底 SaaS 大卡片、Inter/Roboto 味、emoji 装饰、随机玻璃拟态、无意义 bento。
- 不要 warm paper, 除非 brief 明确要求印刷/编辑/档案感。
- 不要写“现代、简洁、高级”就结束; 必须转换成具体视觉选择。
- 不要把所有页面做成同一种居中标题 + 三张卡片。

【可借鉴的工程感方向】
当用户要工程师、AI 工具、开发者产品、CLI、agent、infra 相关 slides 时, 可选择类似:
- 深色底 `#0b0d12`, surface `#14171f`, ink `#f0eee6`, muted `#8a92a6`
- 主强调橙 `#ff5c39`, 第二强调酸橙 `#c8ff4d`
- 标题使用 Space-Grotesk-like 系统 fallback: `Aptos`, `Segoe UI`, `Helvetica Neue`, sans-serif; 元信息用 `ui-monospace`
- 背景使用两个错位 radial-gradient + 1px grid + mask fade
- scenario 页使用左右两栏: 用户动作 / 系统产出, 左栏点列, 右栏箭头列
- 标题重点可用 linear-gradient 荧光笔 hack, reveal 动画用 `:nth-child` stagger

【其他方向】
如果 brief 明确要求浅色印刷、杂志、3D 几何、学术、财务或品牌页, 不要套工程暗色。重新设计 token、背景和页面类型, 但仍遵守一页一个观点和键盘演示。

【交互要求】
- ArrowRight / Space / PageDown 下一页。
- ArrowLeft / PageUp 上一页。
- Home / End 跳到首尾。
- `f` 切换 fullscreen。
- `?` 显示/隐藏帮助。
- 页面 hash 同步为 `#1`, `#2`。
- 固定进度条 + 页码。默认 transition 使用 fade 或 instant cut; 不要旋转、3D flip、无内容理由的 zoom。

【实现建议】
- 使用少量语义化 class, 手写 CSS/JS 即可。
- 桌面: `.deck` 占满 viewport, `.slide` absolute overlay, `.slide.is-active` 可见。
- 移动端: 取消 absolute overlay, 所有 slide 纵向排布, 隐藏固定控件或改为不遮挡内容。
- JS 启动时根据 hash 进入对应页, 键盘监听要避开 input/textarea/contenteditable。
- 如有图表, 用内联 SVG 或 CSS grid/bar, 不要依赖 canvas 库。
- 交付前自查: 在 390px viewport 下 `document.documentElement.scrollWidth <= window.innerWidth + 1`。
