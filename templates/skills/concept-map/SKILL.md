---
name: concept-map
zh_name: "概念地图"
en_name: "Concept Map"
emoji: "🧠"
description: "图解型三层五图概念地图：用现实场景图、机制流程图、体系定位图、案例 walkthrough 和边界反例图，把抽象概念做成具体可见的视觉说明书。"
category: doc
scenario: learning
aspect_hint: "desktop visual explainer 1280×900+; mobile stacked learning cards"
recommended: 45
tags: ["concept", "learning", "diagram", "mental-model", "framework", "三层五图"]
example_id: "concept-map-framework"
example_name: "概念地图 · 三层五图法"
example_format: markdown
example_tagline: "把一个概念画成外显、内部、外部三层心智模型"
example_desc: "中心是概念，向外展开外显层、内部层、外部层；每层包含对应图形、问题、用途和误区。"
---

【模板: 概念地图 / Concept Map】
【定位】把一个抽象概念或概念理解方法论做成已经验证过的 **Stripe Diagram Concrete Concept Page**：用一个真实场景贯穿 Hero、case setup、五图、walkthrough、边界和压缩心智模型。它不是普通文章页、不是 PPT、不是纯思维导图，也不是空间隐喻地图。重点是让用户一眼看到：概念在现实里如何出现、内部如何运作、外部为何存在，以及它不是什么。

## 核心目标

输出一份**自包含单文件 HTML**，用清晰图形表达“三层五图”：

1. **外显层**：外显图，现实中它看起来像什么。
2. **内部层**：结构图 + 动态机制图，概念内部由什么组成、如何运作起来。
3. **外部层**：位置图 + 环境动力图，概念在大体系中的位置、为什么存在、又影响什么。

页面必须能同时用于：

- 方法论存档；
- 复习；
- 以后解释具体概念时作为 checklist；
- 视觉化展示图形关系。

## 视觉签名（固定）

默认固定使用 **Stripe Diagram Concrete Concept Page**，不要再退回普通 concept cards 页面：

- 风格：Stripe / Framer 式高级视觉说明书；白色/浅蓝画布、深 navy 文字、紫蓝渐变线、浮层卡片、精致阴影、克制圆角。
- 背景：浅色 canvas，可使用淡紫/淡蓝径向光斑与细网格，但不得依赖外部图片或 CDN。
- 主色：深墨蓝 `#0b1230` / `#18324a`，强调色 `#635bff`、`#00d4ff`、`#7c3aed`。
- 真实场景：每个页面先选一个具体可观察案例；不要只展示抽象概念名。
- 图形：Hero 场景 + case setup + 五张不同形态的 SVG 图 + walkthrough + boundary。图形语言要包含场景卡、剖面图、反馈环、**分层分类体系位置图**、因果链，不能五张图长得一样。
- 内容密度：短句、卡片、图形标签为主；每个图形节点使用具体名词和动作，不要只写抽象词。

## 固定页面结构

必须按以下 section 输出：

1. **Hero + Hero Scene / 首屏具体场景图**
   - 标题：具体概念名 + 一句有张力的解释，例如“存在主义：没有说明书时，仍要选择并负责”。
   - 副标题：一句话说明这个概念在真实处境里解决什么张力。
   - 30 秒结论卡片。
   - **必须有 Stripe 风格首屏场景图**：用浮层卡片画出人物/系统、输入动作、内部机制、输出/后果，作为“外显层”的第一入口。

2. **Case Setup / 真实案例设定**
   - 给出项目/处境、角色、约束、验收条件或后果。
   - 写出一个核心误解警示，让用户知道这个概念最容易被误读成什么。

3. **Five Diagrams / 五图：同一个案例的五个视角**
   - 一个大 SVG 或图形区可以作为总览，但五图必须分别出现。
   - 三层：`外显层`、`内部层`、`外部层`
   - 五图：`外显图`、`结构图`、`动态机制图`、`位置图`、`环境动力图`
   - 必须有视觉关系：外显层连接外显图；内部层连接结构图和动态机制图；外部层连接位置图和环境动力图。

4. **Five Diagram Cards / 五图卡片**
   - 五张卡片，每张必须包含一个**真实可见的小图**，不能只是文字说明或“适合表达的视觉形式”描述。
   - 建议每张卡片使用 `<svg class="mini">` 或等价的 `.mini` CSS 图形容器，便于自动 QA 统计。
   - 每张卡片包含：
     - 图名
     - 一张独立 SVG / CSS 小图（外显图、结构图、动态机制图、位置图、环境动力图各一张）
     - 一句话定义
     - 它回答的问题
     - 适合表达的视觉形式
     - 常见误区

5. **Concrete Walkthrough / 真实案例 walkthrough**
   - 用一个小例子跑完整条链路：触发情境 → 输入/选择 → 内部组件协作 → 输出结果 → 反馈/修正。
   - 技术概念优先选一个实际工作流；抽象概念优先选一个现实处境。

6. **Boundary / Non-example Diagram / 边界与反例图**
   - 至少列出 3 个“相邻但不是它”的概念。
   - 每个反例给一句边界判断，避免用户把概念与近邻混淆。

7. **Internal vs External Dynamics / 两种“动态”区分**
   - 对比 `动态机制图` 和 `环境动力图`。
   - 必须明确：
     - 动态机制图：概念内部如何工作。
     - 环境动力图：概念在环境中为什么存在、被什么推动、又推动什么。

8. **Compressed Mental Model / 压缩心智模型**
   - 用一句话压缩这个概念的机制与边界。
   - 必须保留“真实处境 + 内部机制 + 责任/后果/输出”的链条，不要只给 slogan。

9. **Usage Checklist / 使用 checklist**
   - 解释一个概念前的 6–8 条检查项。
   - 强调不要只给定义，不要只讲什么时候用。

10. **Footer / Source Note**
   - 标注：Based on `concept-map` skill / 三层五图概念理解法。

## 内容输入格式

如果输入 Markdown 中有以下字段，按字段渲染：

```markdown
# <title>

## One Sentence
<一句话>

## Layers
### 外显层
- purpose:
- diagram:
- questions:

### 内部层
- structure:
- mechanism:

### 外部层
- position:
- environment-dynamics:

## Examples
### vibe coding
### 存在主义

## Checklist
```

如果输入是普通说明，自动提炼为上述结构。

## 布局规则

桌面端：

- 最大宽度 1220–1280px，居中。
- Hero + Overview Diagram 占首屏主要空间。
- 五图卡片使用 5 卡 grid 或 3+2 grid。
- 两种动态区分使用左右对比卡或双栏机制图。
- 示例带使用横向 2 卡或 3 卡。

移动端：

- 低于 860px 宽时所有布局单列。
- Overview Diagram 可以改为纵向 SVG 或卡片式层级列表。
- 全局不得横向溢出。
- 字号和卡片间距必须适合手机阅读。

## 图形要求

必须至少包含：

- 一个首屏 `Hero 场景图`：人物/系统 + 输入动作 + 工具/界面 + 输出产物。
- 一个三层五图总览图。
- 五张卡片内各自独立的小图（推荐以 `<svg class="mini">` 标记，便于 `html-render-lite --validate --template concept-map` 做最小统计）：
  - `外显图`：现实场景 / 隐喻图，例如人类目标 → Harness → Agent。
  - `结构图`：组件树、模块图或边界图。
  - `动态机制图`：输入 → 转换 → 输出 → 反馈 / 回滚的内部闭环。
  - `位置图`：必须是信息更丰富的 Layered Taxonomy Map / 分层分类体系图；用目录树、缩进、层级标题和高亮表达 Root System、Major Layers、Target Highlight、Sibling Concepts、Children/Applications；不要画连接线、箭头、拓扑网络或因果链。
  - `环境动力图`：外部驱动力 → 张力 / 风险 → 概念出现 → 系统变化的因果图。
- 一个 `动态机制图 vs 环境动力图` 的对比小图。
- 一个具体案例 walkthrough 图。
- 一个边界 / 反例图。
- 一个简短示例流程图，展示 `vibe coding` 或 `存在主义` 的三层压缩。

图形可以是 SVG、CSS 卡片与箭头组合，但不能只用普通 Markdown 列表。

## 禁止事项

- 不要做成普通长文文档。
- 不要让页面只有“三层五图总览 + 五张定义卡”；这会显得单调、不够具体。
- 不要只套 `docs-page` 的三栏文档样式。
- 不要做成空间地形地图；这不是 `spatial-metaphor-map`。
- 不要做成 slide deck；复习页面应可滚动浏览。
- 不要依赖外部 CDN、图片 URL、Google Fonts。
- 不要把“环境动力图”写成内部工作流程。
- 不要把“位置图”画成信息量很少的三层小树，也不要画成网络关系图；位置图必须是信息密度高的分层分类体系，默认不使用连线。

## 技术硬性要求

- 第一个字符必须是 `<`，以 `<!DOCTYPE html>` 开头，以 `</html>` 结束。
- 单文件自包含：CSS 和 JS 内联；默认不需要 JS。
- 必须包含 `<meta name="viewport" content="width=device-width, initial-scale=1">`。
- 必须包含移动端 CSS 护栏：
  - `*,*::before,*::after{box-sizing:border-box}`
  - `html,body{overflow-x:hidden}`
  - `svg{max-width:100%;height:auto}`
  - `overflow-wrap:anywhere`
- 重要文本对比度足够，SVG 节点文字不能压线或溢出。

## 推荐 HTML 骨架

使用：

- `<main class="page">`
- `<header class="hero">`
- `<section class="case">`
- `<section class="overview">`
- `<svg class="layer-map">`
- `<section class="diagram-cards">` 或 `.cards`
- 五个 `<svg class="mini">` / `.mini` 图形容器用于五图卡片
- `<section class="walkthrough">`
- `<section class="boundary">`
- `<section class="dynamic-compare">`
- `<section class="mental-model">`
- `<section class="checklist">`

## 标准示例文件

模板目录应包含，并以已验证的 `存在主义` Stripe Diagram 页面作为标准视觉样例：

- `example.md`：标准输入样例，展示 Markdown source 应该如何表达三层五图。
- `example.html`：标准视觉样例，作为 `html-render-lite` 组装上下文时的视觉参考。

`example.html` 必须满足：

- 首屏能看到“三层五图总览图”；
- 五张卡片各自有独立 `.mini` 小图；
- 明确区分 `动态机制图` 与 `环境动力图`；
- 390px 与 768px 视口无全局横向溢出。

## 质量自检

交付前检查：

1. 首屏是否一眼看出具体场景，而不只是标题和抽象定义？
2. 首屏是否一眼看出“三层五图”？
3. 五图是否各有独立用途，而不是重复？
4. 五张五图卡片是否都真的画出了对应小图，而不是只写了定义、回答问题和视觉形式？
5. 是否有案例 walkthrough 和边界 / 反例图？
6. `位置图` 是否是分层分类体系图，而不是简单三层小树或网络连线图？
7. `动态机制图` 和 `环境动力图` 是否被清楚区分？
8. 页面是否比 Markdown 更适合第一次理解和复习？
9. 手机端是否无横向溢出？
10. 是否保留了 skill 的方法论价值，而不是只做漂亮图？
