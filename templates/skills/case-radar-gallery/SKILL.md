---
name: case-radar-gallery
zh_name: "Case Radar 精读案例集"
en_name: "Case Radar Gallery"
emoji: "🛰️"
description: "把 case-radar 的候选、精读、截图和判断整理成可分享的案例画廊"
category: report
scenario: design
aspect_hint: "桌面长页面 / 案例画廊"
featured: 52
recommended: 6
tags: ["case-radar", "gallery", "research", "案例集", "精读", "截图"]
example_id: sample-case-radar-gallery
example_name: "Case Radar · 案例集"
example_format: markdown
example_tagline: "事实层 + AI 推测 + 用户判断区"
example_desc: "适合承接 case-radar 输出的 candidates / notes / screenshots"
---

【模板: Case Radar 精读案例集】
【意图】把 case-radar / 案例侦察结果做成一份可分享、可二次筛选的 HTML 案例画廊。重点是“真物优先”，不是泛泛总结。

【输入适配】
用户内容可能包含：
- 候选清单: 名称、URL、作者、平台、stars/likes、用途、初筛理由。
- 精读笔记: 事实、截图路径、源码片段、亮点、风险、为什么适合用户。
- 本地资源路径: `screenshots/cases/*.png`、`snippets/*.md`、`snippets/*.html` 等。
- 结论摘要: 推荐优先级、下一步动作、入库位置。

【硬性信息规则】
- 完整保留每个案例的名称、来源 URL、作者/组织、关键指标和输入里的事实。
- 不捏造 screenshot、star、like、价格、作者身份。输入没有就标注“未提供”。
- 如果输入里有本地相对图片路径，可以在 HTML 中按原路径引用；如果没有图片，不要编造图片，用 CSS 信息块替代。
- 必须区分“事实层”和“AI 推测层”。不要把推测写成事实。

【整体结构】
1. Header
   - 日期 / 版本 / 数据来源。
   - H1: `{主题} · Case Radar`。
   - Lede: 80 字以内说明本页筛了什么、为什么值得看。
   - 3 个层级标签: 事实层、AI 推测层、你的判断区。

2. Sticky TOC
   - 最多 8 个锚点: 总览 / 工具 spotlight / 精读案例 / 横向对比 / 下一步。
   - 背景使用半透明暖白 + blur。

3. Executive Scan
   - 3-5 张横向 summary cards。
   - 包括: 最强信号、最适合用户的机会、最大风险、建议下一步。
   - 每张卡只放一个结论，下面列 2-3 条证据。

4. Tool / Pattern Spotlight（条件性）
   - 如果输入中某个工具、仓库、方法被反复提及，单独做 spotlight。
   - 包含: 它解决什么、为什么现在值得看、和用户当前工作流的连接点。

5. 精读卡（主体）
   - 默认 5-7 张；但数量由用户内容决定，不能丢案例。输入 12 个精读案例就输出 12 张。
   - 每张卡结构固定：
     - Badge: `精读 #N · 类型 / 平台`
     - 标题 + 一句话 tagline。
     - 真物区: 图片 / 多图横排 / 代码块 / 原文摘录四选一。
     - Facts: 来源、作者、指标、原文关键句。
     - Why it matters: 这个案例妙在哪里。
     - For myartings: 为什么可能适合 iOS 独立开发 / AI 开发 / 内容工作流。
     - Risk / What not to copy: 不要照抄什么。
     - CTA: 打开来源 / 查看截图 / 查看片段。

6. 横向对比表
   - 维度建议: 成熟度、可复制性、开发成本、审美质量、商业化相关性、对当前项目价值。
   - 用 1-5 分或 High/Medium/Low，但必须能从输入事实推导。

7. Next Step 深色块
   - 3-5 个可执行下一步。
   - 每条以动词开头，例如: “复刻一个最小版本”、“并入 KB 页面”、“用 HTML-Anything 重渲染”、“做小红书卡片”。

【视觉签名】
- 背景: 暖白 `#fafaf7`；卡片白 `#ffffff`；主文字 `#1a1a1a`。
- 强调色: 焦糖橙 `#c5530e`；事实层灰；AI 推测紫 `#7c4dff`；用户判断橙。
- 中文字体优先: `-apple-system`, `BlinkMacSystemFont`, `PingFang SC`, `Helvetica Neue`, `Microsoft YaHei`, sans-serif。
- 卡片要像“研究画廊”，不是 dashboard。少用大面积渐变，避免 AI 味太重。
- 图片容器用 `object-fit: contain`，不要裁切横版截图。
- CTA 按钮要明显可点，至少 `padding: 8px 16px`。

【组件规则】
- `.layer-tag.fact` 灰色：只放原文、出处、数据。
- `.layer-tag.ai` 紫色：AI 整合判断，必须可被用户否定。
- `.layer-tag.user` 橙色：留白区，提示用户可以补判断。
- `.pick-insight` 绿色左边线：写“妙在”。
- `.pick-why-you` 橙色左边线：写“为什么是你 / 为什么适合 myartings”。
- `.pick-risk` 玫红左边线：写风险和不要照抄。

【反模式】
- 不要输出 35 张小卡全景，默认只做精读主体；除非输入要求全景。
- 不要用装饰性封面图。有信息就放图，没有就放事实块。
- 不要把“AI 猜测”伪装成事实。
- 不要把每个案例写成同质化营销文案。
- 不要丢 URL；URL 是 case-radar 的证据链。
