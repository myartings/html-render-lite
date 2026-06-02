# decision-matrix-fast 输入格式说明

用于把多方案选择渲染成可快速判断的 HTML decision surface。

```markdown
# 决策标题

## Decision
- recommendation: 推荐方案
- confidence: medium
- reason: 推荐理由

## Criteria
- Impact: 5 - 对目标收益的影响
- Cost: 3 - 开发/维护成本
- Risk: 4 - 上线、技术、策略风险

## Options

### 01 方案 A
- summary: 一句话说明
- score: 8
- verdict: recommended
- pros:
  - 优点 1
  - 优点 2
- cons:
  - 缺点 1
- risks:
  - 风险 1

### 02 方案 B
- summary: 一句话说明
- score: 6
- verdict: watch
- pros:
  - 优点
- cons:
  - 缺点
- risks:
  - 风险

## Uncertainty
- 哪些信息缺失
- 什么时候需要改判
```

规则：

- `## Decision`、`## Criteria`、`## Options` 是主要段落。
- `### NN 方案名` 会被识别为一个 option。
- `score` 建议 0-10。
- `verdict` 建议用 `recommended`、`watch`、`reject` 或 `risky`。
