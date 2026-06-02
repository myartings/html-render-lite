# HTML workflow 变更审查

审查对象：新增 `decision-matrix`、`feature-explainer`、`annotated-review` 三类模板，并接入 `/html` 与 `/htmlq` 路由。

## Review Verdict

- verdict: Caution
- confidence: medium
- release recommendation: 可以发布，但需要补视觉基准和发布回归。

## Risk Map

- overall: medium
- affected: template selection, fast renderers, public artifact publish
- tests: local validate passed, public link check needed

## Findings

### H1 并行 publish 可能导致 public export 502
- severity: high
- location: artifact publish workflow
- evidence: 并行发布多个 Artifact 时曾出现一次 public export 502。
- impact: 用户拿到的公开链接可能暂时不可用。
- recommendation: 发布 Artifact 时顺序执行，不要并行打。

### M1 新模板容易滑回旧文档风格
- severity: medium
- location: `templates/skills/*/example.html`
- evidence: 没有强视觉参考时，LLM-mode 容易复用旧模板的暖色卡片文章结构。
- impact: 新模板和旧模板区分不明显。
- recommendation: 把视觉基准固定在每个新模板自己的 `example.html` 和 fast `style.css` 中。

### L1 workflow skill 不应承载具体模板视觉
- severity: low
- location: `html-artifact-workflow/SKILL.md`
- evidence: 全局写 Anthropic-style 会污染 deck-simple、data-report、kami-parchment 等旧模板。
- impact: 非目标模板可能被错误套用同一风格。
- recommendation: workflow 只负责路由和发布；视觉规则留在模板实现层。

## Test Gaps

- 需要用真实 decision / feature / review 输入各跑一次 `/html`。
- 需要用同一输入各跑一次 `/htmlq` fast render。
- 需要公开链接逐个 `curl -L` 验证 200。

## Next Steps

- 收窄 workflow skill 说明。
- 补齐三个标准模板的 `example.md`。
- 验证 `html-render-lite --list` 和 `--list-fast`。
