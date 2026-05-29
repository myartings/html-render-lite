---
name: finance-report
zh_name: "季度财报"
en_name: "Finance Report"
emoji: "💼"
description: "Masthead + KPI + 收入/烧钱图 + P&L 表 + 重点 + 展望"
category: finance
scenario: finance
aspect_hint: "长页面"
featured: 10
tags: ["financial", "p&l", "mrr", "财报"]
---

【模板: 季度财报 / Finance Report】
【意图】财务向单页报告, 数字 + 图表 + 文字洞察。
【布局】
- Masthead (公司 + Q + 报告标题) + 4 个 hero KPI
- Revenue chart + Burn chart (Chart.js / ECharts)
- P&L 概要表 (zebra + sticky header)
- Top-line highlights (5 条 bullet)
- Outlook 段落
- Methodology 折叠区
【硬性视觉签名 — 贴近 example.html】
- 纸质季度报告 / investor memo 风: 页面背景 `#f7f6f2`, 主纸张 `#ffffff`, 正文 `#11141a`, muted `#5f6573`, 细线 `#e6e3dd`。
- 主强调色用低饱和蓝绿 `#1f6e8c`; 正向 `#1f8c5c`; 负向 `#b13b3b`; 不要蓝紫 SaaS 渐变。
- Display 字体用 serif: `Iowan Old Style` / `Charter` / Georgia; 正文 system sans; 数字和表格金额用 mono。
- 主容器像一张报告纸: max-width 980px 左右, 56-64px 内边距, 1px 边框, 12px 圆角, 极轻纸张阴影。
- Masthead 要有公司名、期间、报告标签和深色横线; 表格用细线、右对齐数字、total 行强边线。
