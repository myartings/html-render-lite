# feature-explainer-fast 输入格式说明

用于解释一个功能、模块、系统机制或 repo 局部路径。

```markdown
# 功能 / 模块标题

## TL;DR
一句话说明这个功能怎么工作。

## Files Read
- `Sources/App/Feature.swift`: 入口和状态
- `Sources/App/Model.swift`: 数据结构

## Flow

### 01 接收输入
- title: 接收用户输入
- detail: View 层把动作转成 intent
- files:
  - `FeatureView.swift`

### 02 写入状态
- title: 更新 model
- detail: ViewModel 校验后写入 SwiftData
- files:
  - `FeatureViewModel.swift`
  - `Schema.swift`

## Gotchas
- 易错点 1
- 易错点 2

## FAQ
### 为什么这里不用 X？
因为……

### 改这里会影响哪里？
会影响……
```

规则：

- `Files Read` 用于 provenance，不要省。
- `Flow` 下用 `### NN ...` 表示机制步骤。
- `Gotchas` 写实现风险和维护坑。
- `FAQ` 用 `### 问题` + 正文。
