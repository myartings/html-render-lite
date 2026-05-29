---
name: pricing-page
zh_name: "定价页"
en_name: "Pricing Page"
emoji: "💳"
description: "三档定价 + 特性对比表 + FAQ"
category: prototype
scenario: sales
aspect_hint: "桌面 1440"
tags: ["pricing", "plans", "定价"]
---

【模板: 定价页】
【意图】标准 SaaS 三档定价页, 一眼对齐价值与价格。
【布局】
- Header + monthly/annual 切换
- 3 档定价卡片 (Free / Pro / Enterprise), 中间档 popular 高亮
- 完整特性对比表 (✓ / – / 不同档勾)
- FAQ (details/summary)
- 底部 CTA
【硬性视觉签名 — 贴近 example.html】
- 克制 SaaS 定价页: 背景 `#fafaf9`, 正文 `#1c1b1a`, muted `#6b6964`, 边框 `#e6e4e0`, 卡片白底。
- 主强调色用陶土橙 `#c96442`; popular 中间档可用实色按钮/细边框强调, 不要蓝紫大渐变。
- Header 不要做巨大营销 hero; 重点是价格、套餐差异、对比表可扫。
- 定价卡片圆角约 10-12px, 1px 边框, 阴影极轻; featured 卡片只比其他卡片更强一点。
- FAQ 用原生 details/summary 或简洁 accordion 风格, 和表格视觉保持同一套暖中性色。
