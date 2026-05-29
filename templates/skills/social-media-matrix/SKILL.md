---
name: social-media-matrix
zh_name: "社媒矩阵追踪面板"
en_name: "Social Media Matrix Tracker"
emoji: "🛰️"
description: "电影感多平台社媒分析: 互动图、悬浮洞察、区间对比、明暗主题"
category: dashboard
scenario: creator
aspect_hint: "桌面长页"
featured: 1
tags: ["matrix", "tracker", "multi-platform"]
---

【模板: 社媒矩阵追踪 (Social Matrix Tracker)】
【意图】电影感、数据密集的多平台社媒看板。
【布局】
- Hero header (统一品牌 + 时间窗 + 主题切换)
- Multi-platform KPI matrix (横 platform × 纵 metric)
- 交互式 charts (hover tooltip + range compare)
- Insights drawer (右抽屉, 文字洞察)
- Top posts grid
【设计细节】
- dark / light 切换; 数据用 seed 兜底
【硬性视觉签名 — 贴近 example.html】
- 默认 dark cinematic: 背景 `#040612`, 容器 `#070b1a`, 文字 `#edf2ff`, muted `#9ea9c5`, grid/line `#636f8b`。
- accent palette 固定为 mint `#68e4bd`, blue `#67b9ff`, purple `#9a86ff`, yellow `#f3d26e`, pink `#ff7d94`; light mode 用 cream `#f8f4eb` 但保留同一组 accent。
- 字体: UI 用 Inter / SF Pro; 大数字或 editorial emphasis 可用 `Cormorant Garamond`。
- 卡片可以有暗色玻璃、细边框、hover tooltip、range compare, 但不要变成普通 admin table。
- 图表和矩阵要高密度, 但每个数据块要有清晰标题、单位和时间窗。
