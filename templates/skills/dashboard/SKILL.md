---
name: dashboard
zh_name: "管理后台仪表板"
en_name: "Admin Dashboard"
emoji: "🎛️"
description: "固定侧栏 + 顶栏 + KPI 网格 + 1-2 张图"
category: dashboard
scenario: operations
aspect_hint: "桌面 1440"
tags: ["dashboard", "admin", "analytics"]
---

【模板: 管理后台 Dashboard】
【意图】标准 admin/analytics 仪表板单页。
【布局】
- Fixed left sidebar (logo + 导航 + 用户 footer)
- Top bar (search + 通知 + avatar)
- Main: KPI cards 网格 (3-5 个)
- 1-2 张主图表 (折线 / 柱 / 区域)
- 底部 recent activity 列表
【硬性视觉签名 — 贴近 example.html】
- 轻量运营后台, 不是暗色 BI 大屏: 背景 `#fafaf9`, surface `#ffffff`, 正文 `#1c1b1a`, 次级文字 `#6b6964`, 边框 `#e6e4e0`。
- 主强调色用陶土橙 `#c96442`; good/bad 用低饱和绿 `#2f7d4a` 和红 `#b53a2a`。
- 固定左侧栏 220px 左右, 白底 + 右侧 1px 边框; active nav 用浅暖灰背景, 不要蓝色侧边线。
- KPI/panel 使用 10px 圆角、1px 暖灰边框、少量留白; 阴影要非常轻或不用。
- 字体使用 system sans; 标题 20-28px, KPI 数字 28px 左右, label 用 11-12px uppercase + letter-spacing。
