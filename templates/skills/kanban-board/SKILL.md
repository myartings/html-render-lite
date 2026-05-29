---
name: kanban-board
zh_name: "看板 / Kanban"
en_name: "Kanban Board"
emoji: "📌"
description: "To do / In progress / In review / Done 四列, 卡片 + 头像 + 泳道"
category: dashboard
scenario: operations
aspect_hint: "桌面 1440"
tags: ["kanban", "trello", "sprint", "看板"]
---

【模板: Kanban 看板】
【意图】类 Trello 的 Kanban 单页。
【布局】
- 顶部 filter bar (assignee / label / search)
- 4 列: To do / In progress / In review / Done
- 卡片含: 标题 / labels / due / avatar / 评论数
- 可选 swimlanes (按 epic / assignee 分组)
【设计细节】
- 不需要真 drag, 但视觉上要像可拖
【硬性视觉签名 — 贴近 example.html】
- 轻量 sprint board: 背景 `#f7f7f9`, 列/卡片 `#ffffff`, 正文 `#1a1d29`, muted `#5e6478`, 边框 `#e5e7ee`。
- 主强调色用紫 `#5b3df0` 与浅紫底 `#ece8ff`; label 可用粉 `#d6336c`, 青 `#1a8e8e`, 黄 `#b58522`, 绿 `#2c8a4f`。
- 四列应像可拖工作区: 列头、计数、卡片、labels、due、avatar、评论数都要小而清晰。
- 卡片圆角 12-14px, border 1px, hover 可轻微上浮; 不要重阴影或玻璃拟态。
- 顶部 filter bar 要紧凑, 保持 dashboard 可重复使用的密度。
