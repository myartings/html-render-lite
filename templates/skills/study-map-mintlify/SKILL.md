---
name: study-map-mintlify
zh_name: "Study Map 学习地图"
en_name: "Study Map Learning Board"
emoji: "🧭"
description: "Mintlify 风格学习地图：思维导图 + 概念图 + Learning Flow + Structure Matrix + 来源，适合知识库主题页和研究学习材料"
category: doc
scenario: education
aspect_hint: "桌面长页面 / 顶部 sticky nav"
recommended: true
tags: ["study", "learning", "mind-map", "concept-map", "flowchart", "matrix", "knowledge-base", "学习地图", "知识库"]
example_id: sample-vibe-coding-study-map
example_name: "Study Map · Vibe Coding"
example_format: markdown
example_tagline: "思维导图 + 概念图 + Learning Flow + Structure Matrix"
example_desc: "Mintlify 文档风学习地图，适合知识库主题、路线结构、概念关系和多来源研究整理"
---

【模板: Study Map 学习地图 · Mintlify 风格】
【意图】把一个学习主题做成固定结构的学习看板 HTML，不是文章页、不是 PPT、不是 dashboard，也不是完整 Learning Pack。适用场景：知识库主题页可视化、研究材料整理、公众号/网页搜索结果合成学习地图。

【定位边界】
- 本模板是 `/html learn` 选择 3 的默认模板，负责“看见形状”：路线、分区、概念关系、学习顺序。
- 它是 `kb-study-material` 中 `Shape Snapshot` 的专门展开版。
- 不默认加入自测题、行动阶梯、复习卡片、迁移任务；这些属于 `kb-study-material`。
- 本模板里的矩阵必须叫 `Structure Matrix`，服务主题空间结构，不服务概念辨析训练。

【固定页面结构】
必须严格按以下 7 个 section 依次输出，每个 section 都独立成卡片/区块，之间用大留白分隔：

1. **Hero**
   - 顶部左对齐（不是居中）。
   - 包含：badge 标签（如 `Study Map`）、H1 主题标题 + 一句话定义、来源说明 source note（灰色小字）。

2. **Overview**
   - 4 个卡片，grid 布局。
   - 每张卡片：标题 + 一行说明。
   - 目的是回答“这个主题最重要的 4 件事是什么”。

3. **Mind Map**
   - 一个 SVG 思维导图。
   - 中心节点 + 4-6 个分支节点。
   - 节点间用放射状曲线连接。
   - 图形放在浅色 diagram 容器内，允许横向滚动但不允许全局横向溢出。

4. **Concept Map**
   - 一个 SVG 概念图。
   - 5-8 个概念节点，每条连线必须有中文关系词。
   - 用箭头表示方向。
   - 关系词位置必须在连线中间，不遮挡节点。
   - 回路（如右下节点回到左下节点）必须用曲线/折线，不允许用水平线横穿中间节点。
   - 图形优先 clean、可读、逻辑正确。

5. **Learning Flow**
   - 实践流程/学习流程，用编号 step 卡片排布。
   - 4-8 个步骤。
   - 每个步骤：编号、标题、一行说明。
   - 用 grid 排布，桌面 4 列，移动端单列。

6. **Structure Matrix**
   - 结构矩阵，4 个象限或 2-4 个维度，用来回答“这个领域怎么分区、概念怎么排列、先后顺序是什么”。
   - 每个象限：结构维度标签、标题、3-5 个 bullet。
   - 用 2x2 grid 排布。
   - 象限背景色用柔和色区分，不用纯白。
   - 不要写成 `Contrast Matrix` / `Practice Matrix`；不要放检验题、自测题或行动优先级。

7. **Sources / Notes**
   - 来源列表（知识库文章、公众号搜索摘要、网页）。
   - 公众号搜索摘要必须标注为“搜索摘要线索”，不能冒充全文结论。
   - 综合判断/结论放在底部深色 callout。

【视觉签名 · Mintlify 文档风】
- 背景: `#ffffff`。
- 主文字: `#0d0d0d`，次文字 `#666`，弱文字 `#999`。
- 主 accent: `#18E299`（Mint green），深 accent: `#0fa76e`。
- 辅助色：`#f2fff9`（极淡绿底）、`#d4fae8`（绿色 callout 背景）。
- 字体: 系统无衬线，中文优先 `PingFang SC`，英文优先 `Inter`。
- 卡片: 白色底、1px 浅边框 `rgba(0,0,0,.07)`、`border-radius: 22-26px`、柔和阴影 `0 2px 4px rgba(0,0,0,.03)`。
- 布局: 居中 max-width 1180px，顶部 sticky nav，section 之间用 `border-top: 1px solid var(--line)` 分隔。
- 导航: 顶部 sticky 栏，6 个锚点链接（Overview / Mind / Concept / Flow / Structure / Sources）。
- 不使用：彩色便签、重阴影、玻璃拟态、大面积渐变、纯黑纯白、霓虹色、Tailwind CDN、Google Fonts 外链。

【SVG 图形规范】
- Mind Map: viewBox 约 1040×540，中心节点用绿色圆角 rect，分支节点用白色 rect，连线用浅灰曲线 `stroke:#aaa`，节点文字居中。
- Concept Map: viewBox 约 1060×430，节点用白色/浅绿 rect `rx="18"`，连线用浅灰 `stroke:#999` 带箭头 `marker-end`，关系词用绿色小字 `fill:#0fa76e`。
- 所有 SVG 放在 `.diagram` 容器内，容器 `overflow:auto` 允许内容横向滚动。
- SVG 中 `<style>` 内嵌在 `<svg>` 内部，不引用外部 CSS。

【移动端硬性规则】
- 必须包含 `<meta name="viewport" content="width=device-width, initial-scale=1">`。
- `@media (max-width: 900px)` 降级：导航隐藏、grid 列数改为 1、Hero 左对齐不变、字号适当缩小。
- SVG 容器保留横向滚动，全局页面不能横向溢出。
- 卡片、步骤、矩阵在移动端单列排布。

【交付要求】
- 单文件 HTML，开头 `<!doctype html>`，结尾 `</html>`。
- 内联所有 CSS 在 `<style>` 中。
- 不引用外部 CDN、图片 URL、Google Fonts。
- 完整覆盖所有 7 个 section。
- 第一个输出字符必须是 `<`。

【反模式】
- 不要做成 PPT / deck。
- 不要把所有节点堆在一个大 SVG 里。
- 不要用任何外部 CDN 或框架。
- 不要伪造来源；公众号搜索摘要必须标注。
- Concept Map 连线不能横穿中间节点。
- 不要把 `Structure Matrix` 写成概念辨析、反例判断或训练矩阵。
- 不要加入完整 Learning Pack 的自测、复习卡片、Action Ladder、Transfer Task。
- 不要把整体做成白板风或便签风（那是 Miro 风格，不是 Mintlify）。
