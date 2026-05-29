---
name: deck-replit
zh_name: "Replit Slides 风 Deck"
en_name: "Replit Slides Deck"
emoji: "🟣"
description: "Replit Slides 八套主题 (helix/holm/vance/bevel/world/atlas/bluehouse)"
category: slides
scenario: product
aspect_hint: "16:9"
tags: ["replit", "themed", "memo"]
example_id: sample-deck-replit
example_name: "Replit Slides · World Mint"
example_format: markdown
example_tagline: "Replit Slides 八套主题之一"
example_desc: "World Mint 主题封页 + agenda 双页, sans + neon mint accent"
example_source_url: "https://replit.com/slides"
example_source_label: "Replit Slides"
---

【模板: Replit Slides Style Deck】
【意图】Replit Slides 风的单文件 horizontal-swipe deck, 选 1 套主题不混用。
【布局】
- Pick one theme: helix / holm / vance / bevel / world-dark / world-mint / atlas / bluehouse
- Cover + agenda + N 个 content + 收尾 (N 由【用户内容】长度决定, 完整覆盖每个要点; 短内容 6-10 起步, 长内容应更多)
【设计细节】
- 每套主题有完整调色板 + 字体 + accent, 不要混用

【输入不匹配时的备选行为】
如果输入是一篇长文章，**不要纠结选主题**，直接使用 world-mint 作为默认主题。按内容拆页输出 Cover + content + 收尾，每页一个要点。**直接从写 HTML 开始，不要做先规划。**
