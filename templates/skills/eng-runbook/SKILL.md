---
name: eng-runbook
zh_name: "工程 Runbook"
en_name: "Engineering Runbook"
emoji: "📕"
description: "服务概述 + alerts 表 + dashboards + 操作命令 + on-call + 事故清单"
category: doc
scenario: engineering
aspect_hint: "长页面"
tags: ["runbook", "ops", "oncall", "sre"]
---

【模板: Engineering Runbook】
【意图】工程 oncall 用的可拷贝命令的 runbook 单页。
【布局】
- Service overview (拓扑 + 依赖)
- Alerts table (severity / threshold / runbook link)
- Dashboards links 卡片
- Common procedures (mono 代码块, 一键复制)
- On-call rotation (本周 + 下周)
- Incident response checklist
【硬性视觉签名 — 贴近 example.html】
- 深色 SRE console 风: 背景 `#0c0e14`, 卡片 `#14171f`, 二级卡片/代码块 `#1c2030`, 文字 `#eaecf3`, muted `#8b94ad`, 分割线 `#262b3b`。
- 主强调色用 mint green `#6ee7b7`; warning `#fbbf24`; danger `#f87171`。
- 大量使用 mono 信息密度: crumb、meta、severity、命令、阈值、表头用 `ui-monospace` / `JetBrains Mono`。
- section 间距清楚, 卡片圆角约 12px, border 1px, 不要亮色渐变、marketing hero、浅色文档风。
- 命令块必须是深底、可横向滚动、带注释/变量高亮, 让 on-call 能直接复制。
