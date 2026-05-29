---
name: deck-mobile-card
zh_name: "移动端卡片摘要"
en_name: "Mobile Card Deck"
emoji: "📱"
description: "移动优先的竖向卡片 deck，一屏一个核心信息，竖向滑动翻页，桌面居中窄列"
category: slides
scenario: product
aspect_hint: "mobile 390"
tags: ["deck", "mobile", "card", "scroll", "swipe"]
---

【模板: 移动端卡片摘要】
【意图】移动优先的竖向卡片 deck（pitch / overview / 知识摘要）。一屏一个核心信息，竖向 scroll-snap 翻页，桌面端显示为居中窄列（420px）。
【布局】
- Cover + N 个 content 卡片 + 收尾（N 由【用户内容】长度决定，完整覆盖每个要点；短内容 5–8 起步，长内容应更多）
- 每卡片一个核心信息，不要把多个独立要点塞进一张卡片
- 顶部进度条（3px 高）+ 右侧圆点导航（固定定位）
- 每张卡片右下角显示 counter（如 "03"）

【交互】
- 竖向 scroll-snap（`scroll-snap-type: y mandatory`），touch 滑动 / 键盘 ↑↓ 或 ←→ 均可翻页
- 滚动时实时更新进度条宽度和圆点高亮状态
- 点击圆点可跳转到对应卡片

【硬性技术要求】
- `<meta name="viewport" content="width=device-width, initial-scale=1">`（必须有）
- `-webkit-text-size-adjust: 100%`（防止 iOS Safari 自动放大字体）
- `height: 100svh` 用于卡片高度（svh 避免 iOS 地址栏跳动；fallback 写 `100vh`）
- `-webkit-overflow-scrolling: touch`（iOS 惯性滚动）
- 字体大小用 `clamp()`，最小值 ≥ 14px，不要硬写 px
- 不引用外部图片 URL；图形元素用 CSS / SVG 内联

【硬性视觉签名 — 贴近 example.html，继承 deck-simple 色板】
- 暖白极简：背景 `#fafaf9`，正文 `#1c1b1a`，muted `#6b6964`，边框 `#e6e4e0`，surface `#ffffff`
- 主强调色陶土橙 `#c96442`；不要蓝紫渐变、magazine 海报风
- Georgia serif 仅用于 cover/quote 的少量 display 字体；counter / 页码用 ui-monospace
- Cover 卡片：深色背景 `#1c1b1a`，文字反白

【卡片版式池（可复用，每种可多次出现）】
- cover：大标题 + 副标题，深底白字
- stat：超大数字 + 一行说明
- text：eyebrow + h2 + 正文段落
- points：eyebrow + h2 + 3–4 条带左边框的要点列表
- quote：大引号装饰 + Georgia 引用文字 + 署名
- pills：eyebrow + h2 + 标签胶囊组
- cta：深色背景，行动号召，同 cover 风格

【桌面适配 — 纯加法，不修改移动端任何样式】
- `@media (min-width: 640px)`：body 居中，`.deck` 宽度固定 420px，两侧加 `1px solid var(--border)`
- 右侧圆点导航在桌面端位置跟随 deck 右边缘（`right: calc(50% - 210px - 28px)`）
