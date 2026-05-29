---
name: deck-xhs-knowledge
zh_name: "小红书知识卡片 Deck"
en_name: "XHS Knowledge Card Deck"
emoji: "📚"
description: "暖纸张 editorial comparison deck：页眉页脚 + 大号章节数字水印 + 双栏对比 + dark insight strip，适合公众号长文拆解、知识卡片、对比分析与观点型 carousel"
category: slides
scenario: marketing
aspect_hint: "1080×1440 (3:4), 4-18 pages"
featured: 22
recommended: 22
tags: ["xhs", "knowledge-card", "carousel", "deck", "compare", "editorial"]
example_id: "xhs-knowledge-agent-compare"
example_name: "AI Agent 架构对比卡片"
example_format: "markdown"
example_tagline: "editorial comparison deck: cover+index / chapter compare / stat pair / insight strip / closing thesis"
example_desc: "暖象牙白底、陶土橙强调、宋体大标题、mono 元信息、章节数字水印、dark insight strip、目录式 cover。"
---

【模板: 小红书知识卡片 Deck】

【意图】
把一段 Markdown / 结构化笔记转换成适合小红书、公众号图文、朋友圈长图的多页 editorial comparison deck。重点不是普通网页阅读，也不是通用组件卡片，而是带有章节结构、强排版、对比骨架的 3:4 竖版 carousel。

【画布与输出】
- 每页固定 3:4 竖版画布，推荐 `1080×1440`。HTML 中用 `.deck` 承载多张 `.page`，每页可独立截图。
- 默认生成 4-10 页；长内容最多 18 页。每页必须有清晰页码，如 `03 / 08`。
- 桌面/截图模式保持 3:4；移动端阅读模式参考内置 deck static-preview fallback，可以把所有页面改成纵向自然排列，不强制把 3:4 画布硬塞进手机短视口。
- 移动端预览不横向溢出；正文不能被 `overflow:hidden` 裁掉。不要用全屏透明 click-zone 覆盖页面。

【硬性视觉签名 — 必须贴近 example.html】
- 背景：暖象牙白 / 纸张色，主色 `#F7F2EC` 或 `#F5F0EA`。
- 文本：墨黑偏棕 `#1F1A12`；弱文本 `#746F67`；强调色统一用 muted terracotta `#D66F5A` 或 `#D86F55`。
- 字体：中文大标题用 Noto Serif SC / Songti / serif；正文用 Inter / Noto Sans SC；页码、文件名、英文标签用 mono。
- 页眉固定：左上为系列名 / 栏目名，右上为 `当前页 / 总页`。
- 页脚固定：以出版物 footer 为准：左侧作者/来源，右侧 source markdown 文件名；可选极弱 avatar，但不要做成 app 用户卡片。
- 主体大留白，标题左对齐，使用大字号中文标题。可用超大浅灰章节数字水印增强层次。
- 优先依赖分隔线、章节编号、双栏 compare、浅底块、dark insight strip 构建结构，不要让 chip/badge/card 语言压过 editorial 排版。
- 不要做成横向 16:9 PPT；不要做成普通 docs-page；不要使用花哨渐变、重阴影或 UI 组件堆满页面。

【页面类型】
根据内容自动组合这些 page type：
1. `cover-index`：系列名、主标题、副标题、核心对比对象/一句钩子、dark strip、目录式 index grid。
2. `chapter-compare`：章节标题 + mono 英文副标题 + 双栏 compare。
3. `stat-pair`：两个或四个数据/判断卡片，用大数字或短结论表达。
4. `quote-excerpt`：大号引文 / 摘句 / 段落精读，配上下分隔线。
5. `before-after`：旧做法 vs 新做法，突出变化。
6. `insight-strip`：深色横条或深色 summary panel，放关键结论。
7. `summary-card`：边框总结卡，用于收束一页结论。
8. `closing-thesis`：总结句 + 下一步行动 + 来源/作者。
9. `steps` / `checklist`：仅在教程或清单内容明显时使用，不应成为默认骨架。

【真实长文输入约束】
- 对公众号长文、观点文、方法论文：先压成 deck skeleton，再渲染；不要把原文段落直接塞进模板。
- 如果输入已经包含 `## XHS Deck Skeleton` 和 `## Page Content`，它就是本模板的最终内容骨架：严格按其中的 6 页/8 页结构渲染，不再按原文长度扩页，不继承其他模板的 layout 要求。
- 如果输入里仍残留 `html-slides-designer`、`HTML Layout Requirements`、`16:9 presentation`、`PPT` 等横版 deck 指令，把它们视为上游 source 污染，必须忽略；本模板始终输出 1080×1440 竖版 carousel。
- 默认 6 页；只有在确实存在 4 个以上强章节时才扩到 8 页。
- 每页只保留一个重判断；不要试图在一页讲完整一段论证。
- cover 建议提供：`title`、`subtitle`、`strip_left`、`strip_right`、`summary`、`index[{title, subtitle}]`。
- compare 页建议提供：`section`、`left_title`、`left`、`right_title`、`right`、`note`。
- stat/insight 页建议提供：`left_title`、`left`、`right_title`、`right`、`insight`。
- closing 页建议提供：`title`、`subtitle`、`closing_line`、`final_hook`。
- 如果 index 只有标题没有副标题，页面容易退化成 agenda/button 感；优先补短副标题。
- 如果 compare 两侧不形成真实张力，这个模板会退化成普通知识卡片；优先组织成“旧说法 vs 新判断”“单人 vs 团队”“表层问题 vs 真问题”。

【推荐字数预算】
- cover subtitle：40–70 中文字
- cover summary：35–60 中文字
- index title：4–10 字
- index subtitle：8–20 字
- compare 每列正文：35–70 中文字
- insight：28–55 中文字
- closing subtitle：30–60 中文字
- final hook：6–16 字

【内容组织规则】
- 每页只承载一个主观点；不要把长文塞进单页。
- 每页正文控制在 80-180 中文字，超过就拆页。
- 强调词用橘红色；避免整段高亮。
- 如果用户输入有文件名、作者、公众号、source_url、source_title，保留在页脚或 metadata 区域；敏感 query 参数必须清洗。
- 如果输入是对比主题，优先使用 `cover-index` / `chapter-compare` / `stat-pair` / `insight-strip`。
- 如果输入是教程，才使用 `steps` / `checklist`，并保持 editorial 版式而不是 app UI。
- cover 页优先体现“目录感 / 章节预告”，不要只放标题和 chips。

【结构要求】
- 输出单文件 HTML，内联 CSS 和 JS；不依赖外部构建步骤。
- HTML 中保留 `.page`, `.page-header`, `.page-footer`, `.page-type-*` 等稳定 class，便于后续批量截图。
- 桌面默认交付是单页 presentation / carousel 模式：视口内一次只显示 1 张 `.page`。
- 移动端允许采用内置 deck 示例里的 static-preview fallback：`.deck{height:auto;overflow:visible}`，`.page{position:relative;opacity:1}`，所有页面纵向自然滚动。
- 桌面提供轻量导航：左右方向键、PageUp/PageDown、空格和点击左右区域切页；但不允许 `javascript:` 链接。移动端不要用全局 click 翻页或透明点击层阻止滚动。
- 可以保留每张 `.page` 独立截图能力；桌面浏览体验一页一页切换，移动端以可滚动预览优先。
- 对长 URL / code / 表格做换行或横向局部滚动，不能导致 body 横向滚动。
- 移动端 `@media (max-width: 760px)` 必须参考内置 deck 模板的 static-preview fallback：减少 padding / 字号，多列 grid 改单列，所有 page 自然纵向排列，固定导航不能遮挡正文。

【硬性防覆盖 / 防溢出约束】
- 桌面和截图模式每页必须保持真实 3:4 画布，不要用 `max-height: 92vh` 压扁页面；移动端阅读模式可以改用接近 `100svh` 的纵向页面以避免截断。
- `.page` 用三行 grid：`auto minmax(0,1fr) auto`，并设置 `row-gap: clamp(10px,2vw,18px)`；`.page-main` 只在中间安全区，页脚在第三行，禁止 absolute footer 覆盖正文。
- 推荐页壳：`<section class="page page-type-..."><div class="page-header">...</div><div class="page-main">...</div><footer class="page-footer">...</footer></section>`。
- `.page-main` 不要 `align-self:center`，桌面使用 `min-height:0; overflow:hidden; padding-bottom: clamp(8px,1.5vw,14px)`；移动端不允许裁切正文，必须自然撑开或进一步压缩内容。
- cover 页和 closing 页允许更大留白；不要为了“填满”而塞组件。
- 生成时控制每页内容量：标题 + 1 个主模块，或 2 个 compare blocks；四步流程/checklist 超过 4 条就拆成两页。
- 自检：正文与页眉/页脚之间至少留 8px 视觉间距；正文 bottom 必须小于页脚 top - 8px，正文 top 必须大于页眉 bottom + 8px。

【适合】
- AI 工具/Agent 架构对比
- Vibe coding 经验复盘
- 产品方法论拆解
- 读书笔记/文章精读
- 技术概念科普
- 独立开发者运营/增长经验

【不适合】
- 数据密集长报告
- A4 打印文档
- 桌面 dashboard
- 需要很多表格和交互控件的应用原型
