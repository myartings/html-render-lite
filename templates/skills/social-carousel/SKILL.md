---
name: social-carousel
zh_name: "社交媒体三联"
en_name: "Social Carousel"
emoji: "🎠"
description: "三张方形卡片轮播, 标题串联, 品牌 mark + 编号"
category: card
scenario: marketing
aspect_hint: "1080×1080 ×3"
featured: 7
tags: ["instagram", "linkedin", "thread", "carousel", "三联"]
---

【模板: 三联社交轮播 / Social Carousel】
【意图】3 张 1080×1080 方形卡片, headline 跨张串联。
【布局】
- Card 1: display headline (开头) + 品牌 mark + 1/3
- Card 2: display headline (中段) + 视觉重点 + 2/3
- Card 3: display headline (结尾) + CTA + loop icon + 3/3
【设计细节】
- 颜色统一一套调色板, 卡片之间渐进切换
- 三个 headline 拼起来是完整一句话

【输入不匹配时的备选行为】
如果输入是一篇长文章而非三句 headline，不要空等：
1. 从文章中提取 3 个关键点，分别作为三张卡片的 headline。
2. Card 1: 开头/背景；Card 2: 核心/转折；Card 3: 结论/CTA。
3. 直接输出 HTML。
