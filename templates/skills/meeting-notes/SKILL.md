---
name: meeting-notes
zh_name: "会议纪要"
en_name: "Meeting Notes"
emoji: "🗒️"
description: "标题 + 出席 + 议程 + 决议 + action items + 下次"
category: doc
scenario: operations
aspect_hint: "长页面"
tags: ["minutes", "meeting", "1:1", "纪要"]
---

【模板: 会议纪要】
【意图】现代会议纪要, 强 action items。
【布局】
- Title bar (会议名 + 时间 + 出席 avatars)
- Agenda checklist
- Decisions block (圆角卡片)
- Action items table (Owner / Due / Status)
- Next meeting footer
【硬性视觉签名 — 贴近 example.html】
- 现代协作文档风: 背景 `#fafaf8`, 卡片/纸张 `#ffffff`, 正文 `#1a1d24`, muted `#5d6371`, 细线 `#e8e9ed`。
- 主强调色用蓝 `#2c5fae` 和浅蓝底 `#e8efff`; action 状态可用绿 `#2c8a4f`, 黄 `#b58522`, 红 `#b13b3b`。
- 信息层级要像会议工作台: title bar、决策卡、agenda checklist、action table 均可快速扫读。
- Decisions block 使用圆角卡片但不要重阴影; owner avatar / status pill 小而清晰。
- 不要做成博客文章或营销页; 输出应像可直接发给团队的 meeting minutes。
