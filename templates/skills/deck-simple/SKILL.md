---
name: deck-simple
zh_name: "通用 Simple Deck"
en_name: "Simple Deck"
emoji: "▫️"
description: "通用 horizontal-swipe HTML deck, 不要 magazine 调"
category: slides
scenario: product
aspect_hint: "16:9"
tags: ["deck", "simple", "swipe"]
---

【模板: Simple Deck】
【意图】干净通用的 horizontal-swipe deck (pitch / overview / study)。
【布局】
- Cover + N 个 content 页 + 收尾 (N 由【用户内容】长度决定, 完整覆盖每个要点; 短内容 6-10 起步, 长内容应更多)
- 每页一个核心信息 + 1 张图 / 1 个图表
- 顶部 progress bar
【设计细节】
- 键盘 ← / → 切换 + hash 同步
【硬性视觉签名 — 贴近 example.html】
- 暖白极简 deck: 背景 `#fafaf9`, 正文 `#1c1b1a`, muted `#6b6964`, 边框 `#e6e4e0`, surface `#ffffff`。
- 主强调色用陶土橙 `#c96442`; 不要蓝紫渐变、彩虹标题或 magazine 海报风。
- 可用 Georgia serif 做 cover/quote 的少量 display, mono 用于页码/progress/meta。
- 每页 16:9, 一个核心信息, 布局安静; 图表/图片只作为内容支撑。
- 交互必须保留左右键、hash 同步和顶部 progress bar。
