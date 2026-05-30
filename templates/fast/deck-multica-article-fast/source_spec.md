# deck-multica-article-fast 输入格式说明

此模板使用 **确定性本地渲染器**（不调用 LLM），Python 直接解析输入 Markdown 并生成 HTML。
输入必须严格遵循以下结构，**普通文章 Markdown 无法直接使用**，需先转换为 deck source 格式。

风格：深色 Multica 风格（暗底 + 橙红 accent），与 deck-simple-fast 使用完全相同的解析器和字段，仅视觉风格不同。

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
# 大模型 Agent 现状分析

## source:
- article-type: analysis
- url: https://example.com/llm-agents
- author: 李明

## Page Content

### 01 封面
- kind: cover
- title: Agent 还没准备好接管工作流
- subtitle: 能力已到临界点，工程化还差一截

### 02 核心判断
- kind: thesis
- title: 可靠性是最大瓶颈，不是智能
- takeaway: 当前 Agent 失败率仍在 15–40%，不适合无人监督的长任务
- bullets:
  - 单步准确率高，多步累积误差大
  - 工具调用错误难以自我发现和恢复
  - 上下文窗口耗尽导致任务静默失败

### 03 机制
- kind: mechanism
- title: 为什么多步任务容易崩
- takeaway: 每一步的小误差在长链路中指数放大
- bullets:
  - 规划阶段低估路径复杂度
  - 工具返回格式不一致触发解析错误
  - 中间状态缺乏显式校验

### 04 风险
- kind: caveat
- title: 当前不适合的场景
- takeaway: 高风险、不可逆、需要精确合规的任务暂时不要用 Agent 自动化
- bullets:
  - 财务操作和合同生成
  - 需要审计日志的监管场景
  - 实时客服（失败成本高）

### 05 结论
- kind: closing
- title: 现在值得投入，但要设好护栏
- takeaway: 在可观测、可回滚的场景先跑，积累失败数据再扩展
- bullets:
  - 每步加断言，失败立即暂停
  - 人工审核节点放在高风险决策前
  - 优先内部工具，远离用户侧操作
```

---

## AI 使用流程

1. 阅读用户原始内容
2. 按语义切分为若干段（每个独立论点/事实/步骤 → 一页）
3. 为每页选择合适的 `kind`
4. 按上述格式写出完整 deck source
5. 调用 `html-render-lite --fast --template deck-multica-article-fast --input <file> --out <output.html>`
