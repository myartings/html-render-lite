---
name: flowai-team-dashboard
zh_name: "FlowAI 团队管理"
en_name: "FlowAI Team Dashboard"
emoji: "🌊"
description: "三个 tab 的团队管理后台: 成员、详情、活动日志, 含图表 + CSV 导出"
category: dashboard
scenario: operations
aspect_hint: "桌面 1440"
tags: ["flowai", "team", "members"]
---

【模板: FlowAI 团队管理 Dashboard】
【意图】FlowAI 美学的团队管理 admin 单页。
【布局】
- Tabs: Team Members / Team Details / Activity Log
- KPI stat row
- Member table (avatar + 角色 + 状态)
- Role distribution bar chart
- Online presence + activity sparklines
- Top contributors panel
【设计细节】
- light/dark 切换, hover tooltip, click-to-zoom panels
- CSV export 按钮 (前端实现)
【硬性视觉签名】
- FlowAI 团队管理后台应偏现代 AI ops: 浅色模式用冷白/浅青灰背景、白色 panel、青蓝 accent; 深色模式用深蓝黑背景、半透明深色 panel、cyan/blue accent。
- Tabs、KPI、成员表、role chart、activity log 要像同一个产品系统, 不要混用默认 Tailwind 彩虹色。
- 图表和在线状态可以使用 cyan、blue、emerald 三色, risk/warn 才使用 amber/red。
- panel 圆角 14-18px, 1px 边框, 阴影轻; dark mode 可用 subtle glow, 不要强霓虹。
- `example.html` 当前只 iframe 到缺失的 `assets/template.html`; 生成时以本 SKILL 的视觉签名为准, 不依赖缺失资产。
