---
name: spatial-metaphor-map
zh_name: "空间隐喻地图"
en_name: "Spatial Metaphor Map"
emoji: "🗺️"
description: "把抽象系统画成地图/城市/山路/岛屿/基地：中心能力、入口、输入/工具区、桥梁、反馈塔、复习/迭代环线、迁移目标、迷雾误区"
category: doc
scenario: learning
aspect_hint: "desktop poster 1280×900; mobile stacked cards"
featured: 28
recommended: 28
tags: ["learning", "map", "spatial", "metaphor", "poster", "diagram"]
example_id: "english-learning-map"
example_name: "英语学习地图示例"
example_format: "markdown"
example_tagline: "把英语学习画成一座会循环的城市"
example_desc: "中心是口语广场，上方是反馈塔与迁移高地，下方是城门/听力港口/词汇仓库，外圈是复习环线。"
---

【模板: 空间隐喻地图 / Spatial Metaphor Map】
【定位】把抽象系统画成一张可一眼理解的「地图海报」，而不是 dashboard、普通流程图、思维导图或三栏文档。

## 核心目标

输出一份**自包含单文件 HTML**，用空间结构表达一个学习/产品/工程/个人系统：

- 中心是什么能力/产物？
- 从哪里进入？
- 哪些区域提供输入/材料/工具？
- 哪个桥梁负责结构化/连接？
- 哪个高地代表真实迁移/交付目标？
- 哪个灯塔/塔楼负责反馈、验证、校准？
- 哪条外圈环线代表复习/迭代/反馈回流？
- 哪个迷雾/沼泽区代表假学习、误区或反模式？

## 视觉签名

必须像一张「地图 / 城市 / 山路 / 岛屿 / 基地 / 工厂 / 生态地形」：

- 默认风格：羊皮纸地图 + 蓝色墨线 + 手绘路线 + 轻微纹理。
- 背景：暖纸 `#eadbb8 / #f8efd4`，不要纯白 SaaS 页面。
- 主线：虚线或手绘曲线路径，必须有方向感。
- 地形：至少包含 2–3 种地图元素，如山脉、高地、港口/湖泊、迷雾区、环形路径、罗盘、边框角标。
- 节点：像地图上的地点标牌，说明直接写在节点里；不要依赖右侧详情 panel 才能理解。
- 地图本体必须自解释；交互最多只能是轻微 hover，不要做 dashboard 风格控制台。

## 强制结构

除非用户明确指定别的隐喻，否则使用这套空间语法：

1. **Goal / 迁移高地**：放在上方，代表真实交付或真实能力。
2. **Feedback Tower / 反馈塔**：放在 goal 下方，负责验证、纠错、校准。
3. **Context/Input Zone / 输入或材料区**：左侧。
4. **Tool/Output Zone / 工具或输出区**：右侧。
5. **Bridge / 桥梁**：中间偏上，连接材料和输出。
6. **Core / 中心广场**：正中央偏下，是系统核心能力/产品核心。
7. **Entry Gate / 入口城门**：下方或左下，从具体任务/问题/每日动作进入。
8. **Loop / 外圈环线**：包围核心区域，表示复习、反馈、迭代、状态回流。
9. **Danger Zone / 迷雾区**：右下角，列出假学习/误区/反模式。
10. **Daily Route / 今日路线**：底部深色注释条，用一句话给最小行动路线。

## 内容要求

每个节点必须包含：

- icon：一个语义明确的 emoji 或内联 SVG 符号。
- title：2–7 个中文字或短英文。
- desc：一句短说明，说明该区的动作或判断。
- tag：短标签，如 `input` / `output` / `feedback` / `review` / `ship`。

不要堆长文。每个节点说明最好 20–45 个中文字。节点太多时优先合并，推荐 8–11 个节点。

## 输入解析

如果用户给结构化 Markdown，按以下字段解析：

```markdown
# <title>

## Metaphor
- type: city-map | island | mountain | operating-base | factory | ecosystem
- center: <中心能力>
- goal: <迁移目标>
- entry: <入口>
- loop: <反馈/复习/迭代环线>

## Nodes
- icon: 🗣
  title: 口语广场
  role: core
  desc: 复述、shadowing、AI 对话
  tag: fluent output

## Danger Zone
- 只收藏不复习
- 只背单词不输出

## Daily Route
城门 → 输入 → 输出 → 反馈 → 复习回流
```

如果用户给的是普通描述，请自动提炼成上述结构。不要要求用户补完整字段，除非主题本身完全不清楚。

## 布局规则

桌面端：

- 画布比例接近 `1280 × 900` poster。
- 标题区在顶部，不超过总高度 22%。
- 地图区占主要面积，节点绝对定位，不能互相遮挡。
- 外圈环线必须可见，不能被节点完全盖住。
- 右下角迷雾区必须明显但不抢中心。
- 底部 legend 和 Daily Route 不得遮挡地图节点。

移动端：

- 不要强行保留绝对定位地图。
- 低于 900px 宽时，地图节点改为纵向卡片列表。
- 隐藏复杂 SVG 路径/罗盘/斜体标注，保留节点顺序和 Daily Route。
- 必须无横向溢出：`document.documentElement.scrollWidth <= window.innerWidth + 1`。

## 禁止事项

- 不要做右侧详情面板主导的 dashboard。
- 不要把它做成普通流程图、Mermaid 风、思维导图、组织架构图。
- 不要只用卡片网格；必须有地图地形和路线。
- 不要依赖外部图片 URL。
- 不要用大面积紫蓝渐变 SaaS 风。
- 不要输出 Markdown、解释文字或代码围栏；最终只输出 HTML。

## 技术硬性要求

- 第一个字符必须是 `<`，以 `<!DOCTYPE html>` 开头，以 `</html>` 结束。
- 单文件自包含：CSS 和 JS 内联；默认不需要 JS。
- 可使用内联 SVG 绘制山脉、水域、雾区、路线、环线、箭头。
- 必须包含 `<meta name="viewport" content="width=device-width, initial-scale=1">`。
- 必须包含移动端 CSS 护栏：
  - `*,*::before,*::after{box-sizing:border-box}`
  - `html,body{overflow-x:hidden}`
  - `svg{max-width:100%;height:auto}`
  - `overflow-wrap:anywhere`
- 重要文本对比度要足够，节点文字不能压线或溢出。

## 推荐 HTML 骨架

使用：

- `<main class="poster">`
- `<header class="header">`
- `<section class="map">`
- `<svg>` 绘制地形、路径、环线
- 多个 `<article class="node ...">` 表示地点
- `<div class="legend">`
- `<aside class="note">` 表示今日路线

## 质量自检

交付前在心里检查：

1. 一眼看上去像地图吗？
2. 中心能力是否最突出？
3. 入口、主路、反馈塔、目标高地、迷雾区是否不用解释也能看懂？
4. 是否比普通文字列表更直观？
5. 手机端是否退化成可读卡片，而不是横向挤压地图？
