---
name: weekly-update
zh_name: "团队周报 Deck"
en_name: "Weekly Update Deck"
emoji: "🗓️"
description: "6-8 页横向滑动周报: 已发布 / 进行中 / 阻塞 / 指标 / 求助"
category: slides
scenario: operations
aspect_hint: "16:9 ×8"
featured: 23
tags: ["weekly", "周报", "status"]
---

【模板: 团队周报 Deck】
【意图】6-8 页 horizontal-swipe slides, 周报固定结构。
【布局】
- Cover (周次 + 团队 + 一句话主题)
- Shipped (列表 + owner)
- In flight (进度条)
- Blocked (红色 callout)
- Metrics (KPI 卡片网格 + 周对比)
- Asks (求助清单)
- Thanks 收尾
【设计细节】
- 键盘左右切换, hash 同步
【硬性视觉签名 — 贴近 example.html】
- 暗色团队周报 deck: 背景 `#0e0d12`, slide/card `#19171f` / `#221f2a`, 文字 `#f4f0e6`, muted `#a09aaf`, 线条 `#2c2935`。
- 主强调色用 yellow `#ffcc4d`; 辅助用 purple `#b388ff` 与 pink `#ff6f91`; blocked 页可用红调但不要刺眼。
- 字体 display 用 Inter/system, meta/progress/owner 用 JetBrains Mono 或 ui-monospace。
- 每页只突出一个周报主题, KPI 卡和进度条要稳定; 不要做成普通长页面。
- 顶部或底部 progress bar、页码、hash 导航必须和视觉系统一致。

【输入不匹配时的备选行为】
如果输入是一篇长文章而非周报数据，不要空等：
1. 将文章拆成周报结构：Cover 放标题，核心结论→Shipped，待办思路→In flight，挑战→Blocked，关键数据→Metrics。
2. 每页只保留一个核心信息，6-8 页。
3. 直接输出 HTML，不需要每条都能精准匹配周报项。
