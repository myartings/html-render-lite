# Artifact publish 怎么工作

目标：解释 `/html` 和 `/htmlq` 生成的 HTML artifact 如何从本地文件变成公开链接。

## Files Read

- `html-render-lite`: 负责根据模板生成 output.html / source.md / meta.json。
- `html-artifact-publish`: 负责把 package 导入 Artifact Library，并导出 public URL。
- `templates/skills/*/SKILL.md`: LLM-mode 模板定义。
- `templates/fast/*/template.json`: fast-mode 模板元数据。

## 30-second Summary

- `/html` 是 LLM-mode：先组装模板上下文，再由 Agent 写出完整 HTML。
- `/htmlq` 是 fast-mode：本地确定性 renderer 直接生成 HTML。
- 发布阶段应顺序执行，避免 public export 并发冲突。

## Flow

### 01 选择模板
- Trigger: 用户发起 `/html` 或 `/htmlq`。
- File/function: `html-artifact-workflow` skill。
- Data: intent、template id、title、source markdown。
- Output: render command。

### 02 生成 package
- Trigger: render command。
- File/function: `html-render-lite`。
- Data: source.md、template definition、example.html。
- Output: `output.html`、`source.md`、`meta.json`。

### 03 验证 HTML
- Trigger: package ready。
- File/function: `html-render-lite --validate`。
- Data: template id、output.html。
- Output: validation result。

### 04 发布 artifact
- Trigger: validation passed。
- File/function: `html-artifact-publish`。
- Data: package directory。
- Output: public `index.html` URL。

## Gotchas

- `/html` 不应该使用 `--fast`。
- `/htmlq` 才默认使用 fast templates。
- Artifact publish 不适合并行跑；之前并发导出 public URL 时出现过 502。

## FAQ

### 新模板视觉在哪里控制？

标准模板由 `templates/skills/<template>/SKILL.md` 和 `example.html` 控制；fast 模板由 `templates/fast/<template>-fast/style.css` 控制。

### 公开链接失败时先查哪里？

先查本地 package 是否完整，再查 validate，再查 publish 日志和 public export 是否成功。

## Next Read

- `html-render-lite` 的 `assemble()` 和 `render_fast()`。
- Artifact Library 的 public export 逻辑。
