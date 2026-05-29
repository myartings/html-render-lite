---
name: docs-page
zh_name: "技术文档页"
en_name: "Docs Page"
emoji: "📘"
description: "三栏文档页: 侧导航 + 正文 + 右 TOC"
category: doc
scenario: engineering
aspect_hint: "桌面 1440"
tags: ["docs", "api", "tutorial", "guide"]
---

【模板: 技术文档页】
【意图】API / 教程文档单页, 长读体验优先。
【布局】
- Inline-start nav (sections + sticky)
- Article body (含代码块, callouts, 表格)
- Inline-end TOC (sticky, scroll-spy)
- 顶栏 search + version + 主题切换
【硬性视觉签名 — 必须贴近 example.html】
- 整体不是蓝白 SaaS 风，而是 warm neutral docs 风。
- 色板必须使用 example.html 的暖中性色系：
  - 页面背景 `#fafaf9`
  - 主文字 `#1c1b1a`
  - 次文字 `#6b6964`
  - 边框 `#e6e4e0`
  - 主强调色 / active 状态 `#c96442` 陶土橙
  - 组件表面 `#ffffff`
  - 代码背景 `#f4f4f2`
- 禁止把 `blue / indigo / sky / #155eef` 作为主品牌色或 active 状态色；正文普通链接可以保留浏览器式蓝色。
- Active sidebar item 必须是 `#c96442` 实色背景 + 白字 + 6px 左右圆角，不要浅蓝背景或蓝色左边框。
- TOC 当前项、callout 标签、callout 左边框统一使用 `#c96442`。
- 不要大面积渐变、强阴影、dashboard KPI 卡片风、hero marketing 风。

【设计细节】
- 代码块: 浅暖灰 `#f4f4f2` 背景 + `#e6e4e0` 细边框 + 8px 圆角；不要默认深色代码块，除非用户明确要求 dark code。
- callout: 白底 + `#e6e4e0` 细边框 + 左侧 3px `#c96442` 竖线；不要浅蓝 info box。
- 顶栏 search: 白/暖白背景 + 浅边框 + `Search · ⌘K` 占位，视觉轻量。
