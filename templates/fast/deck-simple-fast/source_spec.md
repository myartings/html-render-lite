# deck-simple-fast 输入格式说明

此模板使用 **确定性本地渲染器**（不调用 LLM），Python 直接解析输入 Markdown 并生成 HTML。
输入必须严格遵循以下结构，**普通文章 Markdown 无法直接使用**，需先转换为 deck source 格式。

---

## 整体结构

```markdown
# 文章/内容标题

## source:
- article-type: 文章类型（如 analysis / essay / report）
- url: 来源链接（可选）
- author: 作者（可选）

## Page Content

### 01 封面标题
- kind: cover
- title: 显示在封面的主标题
- subtitle: 副标题或一句话总结

### 02 页面标题
- kind: thesis
- title: 核心论点标题
- takeaway: 核心结论，一两句话
- bullets:
  - 支撑要点 1
  - 支撑要点 2

### 03 下一页
...
```

---

## 必填规则

- `### NN 标题` — 页码必须是 1-2 位数字，后跟空格和标题，**这是解析器识别新页的唯一依据**
- 每页至少有一个 `- title:` 或 `- takeaway:`
- `## Page Content` 段落标题必须存在，解析器依赖它切换到页面解析模式

---

## kind 可选值

| kind | 用途 | 推荐内容 |
|------|------|---------|
| `cover` | 封面 | title + subtitle |
| `thesis` | 核心论点 | title + takeaway + 2–4 bullets |
| `evidence` | 论据/事实 | title + takeaway + bullets（默认） |
| `mechanism` | 机制/原理 | title + takeaway + bullets（渲染为流程步骤） |
| `process` | 步骤流程 | title + takeaway + bullets（渲染为编号步骤） |
| `timeline` | 时间线 | title + takeaway + bullets（渲染为编号列表） |
| `comparison` | 对比 | title + takeaway + bullets（左右两栏对比） |
| `caveat` | 风险/边界 | title + takeaway + bullets（警示风格） |
| `quote` | 引用 | title + quote: 引用原文 |
| `action` | 行动建议 | title + takeaway + bullets |
| `closing` | 收尾/结论 | title + takeaway + bullets |
| `knowledge-link` | 知识库关联 | title + takeaway + bullets（卡片网格） |

---

## 完整示例

```markdown
# GPT-4o 多模态能力分析

## source:
- article-type: analysis
- url: https://example.com/gpt4o-analysis
- author: 张伟

## Page Content

### 01 封面
- kind: cover
- title: GPT-4o 让多模态真正可用
- subtitle: 从演示到产品的最后一公里

### 02 核心判断
- kind: thesis
- title: 速度是关键突破，不是能力
- takeaway: GPT-4o 的真正意义在于把多模态推理的延迟降到实时级别
- bullets:
  - 语音响应延迟从 2.8s 降至 320ms
  - 视觉理解与语言回复首次同步
  - 情感感知开启了新的交互范式

### 03 技术机制
- kind: mechanism
- title: 端到端统一模型
- takeaway: 不再是三个模型串联，而是单一 transformer 处理所有模态
- bullets:
  - 音频直接进入 token 流，无需转文字
  - 图像 patch 与文字 token 共享注意力层
  - 统一训练使跨模态推理更连贯

### 04 主要局限
- kind: caveat
- title: 还不是你想象的那样
- takeaway: 当前版本在几个关键场景仍有明显缺陷
- bullets:
  - 长视频理解仍靠抽帧，无法追踪连续动作
  - 情感语音功能在正式版中已降级
  - 中文语音质量明显弱于英文

### 05 结论
- kind: closing
- title: 多模态的拐点已到，但产品化还早
- takeaway: 对开发者：值得现在投入；对终端产品：等下一个版本
- bullets:
  - 优先探索实时语音 + 视觉的垂直场景
  - 避开需要高精度情感识别的消费级产品
```

---

## AI 使用流程

1. 阅读用户原始内容
2. 按语义切分为若干段（每个独立论点/事实/步骤 → 一页）
3. 为每页选择合适的 `kind`
4. 按上述格式写出完整 deck source
5. 调用 `html-render-lite --fast --template deck-simple-fast --input <file> --out <output.html>`
