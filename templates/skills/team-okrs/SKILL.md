---
name: team-okrs
zh_name: "团队 OKR 追踪"
en_name: "Team OKRs"
emoji: "🎯"
description: "季度 banner + 3 个目标 + KR 进度条 + owner + 状态 pill"
category: dashboard
scenario: product
aspect_hint: "桌面 1440"
tags: ["okr", "objectives", "key results", "目标"]
---

【模板: Team OKRs】
【意图】OKR 追踪页, 一眼看出进度。
【布局】
- Quarter banner (Q? + 主题)
- 3 个 objectives 列, 每个含一组 KR
- 每个 KR 一条进度条 + 数值 + owner avatar + 状态 pill
- 右侧 'this quarter at a glance' 摘要
【硬性视觉签名 — 贴近 example.html】
- 产品团队 OKR 工作台风: 背景 `#f5f6f9`, 卡片 `#ffffff`, 正文 `#161924`, muted `#5d6678`, 边框 `#e3e6ee`。
- 主强调色用蓝 `#2c4ee8` 和浅蓝底 `#eaeefe`; success `#1f8a5a`, warning `#b58522`, risk `#b13b3b`。
- 3 列 objective 卡片要像可执行工作面板, 圆角 14-16px, 边框清晰, 进度条稳定不跳动。
- 状态 pill、owner avatar、KR 数字要小而密; 不要 marketing pricing card 风。
- Quarter banner 可以更醒目, 但整体仍是安静的 product ops dashboard。
