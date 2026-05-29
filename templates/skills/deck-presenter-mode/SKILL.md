---
name: deck-presenter-mode
zh_name: "演讲者模式 Deck"
en_name: "Presenter Mode Deck"
emoji: "🎤"
description: "tokyo-night 默认主题, T 切换 5 主题, S 打开提词器 popup"
category: slides
scenario: engineering
aspect_hint: "16:9"
featured: 26
tags: ["presenter", "notes", "提词", "teleprompter"]
---

【模板: Presenter Mode Deck】
【意图】怕忘词的演讲者专用 deck, 含逐字稿 notes 与 popup teleprompter。
【布局】
- 每页 + `<aside class="notes">` 150-300 字稿
- 右下小 toolbar: T 切主题 / S 打开 popup
- Popup: CURRENT / NEXT / SCRIPT / TIMER 四张磁吸卡
【设计细节】
- 默认 tokyo-night; 共 5 套主题 (含 light)
【硬性视觉签名 — 贴近 example.html】
- 基础 slide system 使用 html-ppt 风格 tokens: Inter / Noto Sans SC / JetBrains Mono, 16:9 全屏, 72-96px 大内边距。
- 默认主题必须是 tokyo-night: 深色背景、清晰高对比文字、蓝/紫/绿 accent; 其他 4 套主题只通过变量切换, 不改布局。
- 右下 toolbar 要小而固定, 不遮挡内容; `T` / `S` 快捷键提示使用 mono pill。
- popup teleprompter 是演讲控制台: CURRENT / NEXT / SCRIPT / TIMER 四张磁吸卡, 信息密度高, 深色默认, light theme 可读。
- Notes 是真实逐字稿, 不是短 speaker notes; 每页 `<aside class="notes">` 必须存在。
