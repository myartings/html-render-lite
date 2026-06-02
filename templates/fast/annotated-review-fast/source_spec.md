# annotated-review-fast 输入格式说明

用于 PR、diff、方案或代码审查，生成 findings-first 的 review surface。

```markdown
# Review 标题

## Risk Map
- overall: medium
- affected: Auth flow, Purchase screen
- tests: missing renewal case

## Findings

### H1 订阅状态可能误判
- severity: high
- file: Sources/App/SubscriptionStore.swift
- line: 128
- problem: grace period 被当作 inactive
- recommendation: 区分 billing retry、grace period 和 expired

### M1 缺少回归测试
- severity: medium
- file: Tests/SubscriptionTests.swift
- line: 42
- problem: 只测了 active / expired
- recommendation: 补 renewal、billing retry、refund 用例

## Test Gaps
- 没有覆盖退款
- 没有覆盖网络失败

## Next Steps
- 修改状态机
- 补测试
```

规则：

- Findings 必须在前，按 severity 排序。
- finding 标题建议带 H/M/L 编号。
- `severity` 支持 `critical`、`high`、`medium`、`low`。
- 有 file/line 就写，没有就省略。
