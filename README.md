# html-render-lite

本地模板（SKILL.md + 设计约束 + example.html）拼成结构化上下文，当前 LLM 直接在同一进程内写 HTML。另有 fast templates 可确定性本地渲染。无服务依赖，无网络请求。

## 原理

```
content.md
  → html-render-lite --template X --out out.html
  → 输出模板上下文（设计约束 + 风格定义 + 视觉参考 + 用户内容 + 输出指令）
  → 当前 LLM 读到上下文，用 Write 工具写 HTML
  → validate + fix
```

## 依赖

- Python 3.x
- 模板已内置在 `templates/` 目录，无需额外克隆

## 安装

```bash
git clone https://github.com/... html-render-lite
cd html-render-lite
ln -s $(pwd)/html-render-lite ~/.local/bin/html-render-lite  # 或加入 PATH
```

## 用法

```bash
# 列出 LLM 模式模板
html-render-lite --list

# 生成 HTML（agent 写入 --out 路径）
html-render-lite --template doc-kami-parchment -i source.md --out /tmp/page.html
html-render-lite --template decision-matrix -i source.md --out /tmp/decision.html
html-render-lite --template feature-explainer -i source.md --out /tmp/explainer.html
html-render-lite --template annotated-review -i source.md --out /tmp/review.html

# 管道输入
echo "Markdown content" | html-render-lite --template card-xiaohongshu --out /tmp/card.html

# package 模式（source.md + output.html + meta.json）
html-render-lite --template deck-simple -i source.md --package /tmp/pkg/ --caller claude-code --title "My Deck"

# 验证已生成的 HTML
html-render-lite --validate output.html --template deck-simple

# 自动修复（注入缺失的键盘导航 JS + 进度条）
html-render-lite --fix output.html

# fast templates（不调用 LLM）
html-render-lite --list-fast
html-render-lite --fast --template decision-matrix-fast -i source.md --out /tmp/decision.html
html-render-lite --fast --template feature-explainer-fast -i source.md --out /tmp/explainer.html
html-render-lite --fast --template annotated-review-fast -i source.md --out /tmp/review.html
```

## 模板

`templates/skills/` 下是 LLM 模式模板，通常包含：
- `SKILL.md`：模板风格定义（frontmatter + 布局约束）
- `example.html`：视觉参考（如存在，前 80 行作为 context）

共享设计约束在 `templates/shared.md`。

Fast templates 在 `templates/fast/`，每个包含：
- `template.json`：模板 id、renderer、alias
- `source_spec.md`：输入 Markdown 结构说明
- `style.css`：自包含样式

## 跨平台同步规范

repo 部署在 Linux / macOS / Windows WSL2 三台机器，通过 GitHub 同步。

**改动后必须 push：**

```bash
git add <files>
git commit -m "..."
git push origin main
```

**其他平台同步：**

```bash
git pull origin main
```

规则：
- 任意平台做了模板、shared.md、脚本改动后，当次会话结束前 push 到 GitHub
- 不要用 scp 手动传文件代替 git push/pull，否则会产生 drift
- 如果本地有未提交改动导致 pull 失败，先 `git stash` 或 `git checkout -- .`，再 pull，再判断是否需要把本地改动合并回来

## 许可证

MIT
