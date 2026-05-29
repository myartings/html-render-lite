---
name: invoice
zh_name: "可打印发票"
en_name: "Printable Invoice"
emoji: "🧾"
description: "标准发票: 寄件/收件 + 明细 + 税 + 总额 + 付款指引"
category: finance
scenario: finance
aspect_hint: "A4"
recommended: 13
tags: ["invoice", "bill", "发票"]
---

【模板: 可打印发票】
【意图】A4 可打印的发票单页。
【布局】
- Header: 发票号 / 日期 / 截止日
- From / Bill to 两块
- Line items table (描述 / 数量 / 单价 / 金额)
- Tax breakdown + Totals (右对齐)
- Payment instructions 区
【设计细节】
- @media print 样式; 颜色对比保留
【硬性视觉签名 — 贴近 example.html】
- A4 纸质发票: 背景 `#f3f1ec`, 纸张 `#ffffff`, 正文 `#15140f`, muted `#6e6a5d`, 边框 `#ddd6c4`。
- 主强调色用深绿 `#1f4d3a`, 浅绿底 `#e3ece8`; 不要蓝紫 SaaS 收据模板。
- Display 字体用 `Iowan Old Style` / `Charter` / Georgia; 正文 system sans; 金额、编号、税率用 mono。
- 表格线要细, 金额右对齐, totals 区要强层级; payment instructions 保持可打印清晰。
- 可加入小型签名/paid stamp 风格细节, 但必须保持商务发票可读性。
