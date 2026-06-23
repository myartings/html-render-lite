---
name: html-learn
zh_name: "HTML Learn"
en_name: "HTML Learn"
emoji: "📖"
description: "统一学习入口：一次生成入口页、learn concept 与 learn topic 三个学习页面。"
category: doc
scenario: learning
aspect_hint: "html learn router / concept-map or kb-study-material / mobile readable"
recommended: 46
tags: ["learning", "concept-map", "kb-study-material", "study", "html-learn"]
example_id: html-learn-router
example_name: "HTML Learn · 自动学习页面"
example_format: markdown
example_tagline: "一个入口，两种学习页面，三页一起生成"
example_desc: "生成统一入口页，并同时生成 learn concept/concept-map 与 learn topic/kb-study-material 两个子页。"
---

【模板: HTML Learn / 统一学习入口】

## 定位

本模板必须严格以共享目录压缩包 `# HTML 学习模板系统设计方案__## 1. 设计定位___现代学习工作台 (1).zip` 中的页面为视觉与结构基准。原始参考已复制到本模板目录：

- `references/Learn Home.dc.html`
- `references/Learn Concept.dc.html`
- `references/Learn Topic.dc.html`
- `references/Learn Template.dc.html`

生成时要复刻它们的产品形态：暖白背景、窄内容列、sticky study header、左侧 learning rail、细边框白色卡片、mono 小标签、克制蓝/棕 accent、密集但留白明确的现代学习工作台。不要改成普通文档页、营销落地页、卡片堆叠页或泛用 dashboard。

`html-learn` 是产品层入口，也是一组三页学习包，不是第三套视觉模板。它一次生成三个 HTML 页面：

1. `index.html` / `output.html`：统一学习入口页，帮助用户选择学习路径。
2. `concept-map.html`：`learn concept` 子页，使用 `concept-map` 信息架构。
3. `topic.html`：`learn topic` 子页，使用 `kb-study-material` 信息架构。

内部只有两个子模式，但两个子模式要和统一入口页一起生成：

1. `learn concept` → 使用 `concept-map` 的信息架构。
2. `learn topic` → 使用 `kb-study-material` 的信息架构。

两个子模式必须共享同一套 **html learn workbench / 现代学习工作台** 视觉系统：暖白背景、克制蓝 accent、系统字体、sticky study header、learning rail、diagram panel、practice block、source strip、review footer。

## 输出页面

### 1. 统一入口页 / index.html + output.html

入口页必须是真实可读的学习首页，不是空跳转页。它要包含：

- 本次学习对象的标题、简短定位和适用人群。
- 两个路径入口：`learn concept` 和 `learn topic`。
- 每个入口说明适合什么时候用、学完能得到什么、预计投入。
- 两个入口必须链接到同包内的 `concept-map.html` 和 `topic.html`。
- 一个简短的选择提示：只想理解核心概念先看 concept；要系统学习、资料整理、行动练习看 topic。

### 2. learn concept / concept-map.html

使用 `concept-map` 信息架构，服务“学懂一个概念”。

### 3. learn topic / topic.html

使用 `kb-study-material` 信息架构，服务“学完一个主题 / 资料包”。

## 子模式内容规则

虽然三页一起生成，但内容重点不同：

选择 `learn concept` 的情况：

- 用户问“解释 X”、“理解 X”、“X 是什么”、“做一个概念地图”。
- 输入聚焦单个概念、方法、框架、哲学词、技术词。
- 主题可以用一个真实场景贯穿。
- 适合输出“五图入门 + 双图一练验证”。

选择 `learn topic` 的情况：

- 用户给多篇材料、知识库主题、资料包、调研报告、文章合集。
- 输入包含来源、争议、实践路径、行动清单、多个相关概念。
- 用户明确说“系统学习”、“学习路线”、“资料整理”、“topic”、“主题页”。
- 单个 concept-map 装不下来源摘要、学习路径、争议和行动闭环。

不确定时：

- 如果输入只有一个术语或一句问题，走 `learn concept`。
- 如果输入有 3 个以上来源 / 章节 / 子主题，走 `learn topic`。
- 如果是 topic 但其中有一个核心概念，`learn topic` 内部可以嵌入一个 mini concept map；不要反过来把 `learn concept` 做成完整教材。
- 入口页仍然要同时给出两个子页入口，不因为默认倾向而省略任何一个子页。

## 视觉系统

必须使用统一 design tokens：

- 背景：`#F6F5F2` / `#FAFAF7`
- 卡片：`#FFFFFF`
- 侧栏 / rail：`#EFEEE8` / `#F2F2EC`
- 主文字：`#1B1B19`
- 次文字：`#5C5A55`
- 弱文字：`#8C8A84`
- 边框：`#E6E4DF`
- 主 accent：`#3C5A8C`
- 蓝色浅底：`#F2F6FB`
- 蓝色边框：`#C9D4E6`
- topic 辅助 accent：`#7A5B2E`
- insight 绿色：`#4F9772`
- warning 琥珀：`#B0883E`
- risk 红褐：`#9A4F42`

字体只用系统字体：

- 正文：`system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", "PingFang SC", "Microsoft YaHei", sans-serif`
- 标签 / 代码：`ui-monospace, SFMono-Regular, Menlo, monospace`

禁止：

- Google Fonts / 外部字体 / CDN。
- Tailwind CDN。本模板覆盖共享约束中“可引入 Tailwind / Google Fonts”的旧规则。
- support.js、Design Compiler runtime、`{{ }}`、`sc-if`、`style-hover`。
- 大面积紫蓝渐变、装饰光球、bokeh、无意义背景图。
- 营销 hero、PPT deck、小红书卡片、普通 markdown 文档。

## learn concept 信息架构

当路由到 `learn concept`，页面必须包含：

1. Study Header：概念名、学习类型、预计阅读时间、难度、学习目标。
2. Hero Scene：真实场景图，而不是抽象标题。
3. Why it matters：这个概念解决什么认知困惑。
4. Five Diagrams：外显图、结构图、动态机制图、位置图、环境动力图。五图必须真的画出来，不能只用文字卡片冒充；每个 `.mini` 卡片至少包含一个内联 SVG、节点图、流程图或矩阵式可视结构，用箭头 / 节点 / 层级 / 坐标表达关系。
5. Concrete Walkthrough：用同一个案例跑完整链路。
6. Boundary / Non-examples：至少 3 个相邻但不是它的概念。
7. Understanding Check：外显场景识别图、对比矩阵、3–5 个练习题。
8. Compressed Mental Model：一句话压缩模型。

## learn topic 信息架构

当路由到 `learn topic`，页面必须包含：

1. Study Header：主题名、学习目标、来源数量、适用人群。
2. Source Digest：资料来源、可信度、覆盖范围。
3. Concept Backbone：主题核心概念骨架。
4. Learning Path：阶段学习顺序。
5. Key Tensions：争议、误区、容易混淆的问题。
6. Applied Playbook：如何使用这些知识，具体行动清单。
7. Mini Concept Map：只展开一个核心概念的小地图，不要抢主结构。
8. Review & Practice：复习问题、场景应用题、下一步阅读 / 下一步行动。

## 技术硬性要求

- 第一个字符必须是 `<`，以 `<!DOCTYPE html>` 开头，以 `</html>` 结束。
- 单文件自包含：CSS 和少量 vanilla JS 内联；没有 JS 时页面仍然可读。
- 必须包含 `<meta name="viewport" content="width=device-width, initial-scale=1">`。
- 必须包含移动端 CSS 护栏：
  - `*,*::before,*::after{box-sizing:border-box}`
  - `html,body{overflow-x:hidden}`
  - `svg,img,canvas,iframe,video{max-width:100%;height:auto}`
  - `p,li,code,a{overflow-wrap:anywhere}`
- 最低支持 390px 宽度。
- 表格和长图只允许局部横向滚动，不能造成全局横向滚动。
- 左侧 `learning rail` 只能在桌面宽度显示。手机宽度必须隐藏 rail 或改成顶部 / 底部导航，正文容器必须退回单列，不能用固定 `190px + content` 两栏挤压正文。

## 输出要求

package 模式必须输出三份完整 HTML：

- `index.html`：统一入口页。
- `concept-map.html`：learn concept 子页。
- `topic.html`：learn topic 子页。

为了兼容 Artifact Library，`output.html` 必须与 `index.html` 内容一致或等价，作为包入口。

不要在页面里告诉用户“我选择了哪个模板”。页面应自然呈现为一个统一的 html learn 学习产品体验。
