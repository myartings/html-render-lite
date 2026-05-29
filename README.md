# html-render-lite

读取本地 [HTML Anything](https://github.com/nexu-io/html-anything) 模板，输出结构化上下文块。当前 LLM 直接读此输出写 HTML，不走远端 Agent。

## 原理

把 HTML Anything 的 75 套本地模板（SKILL.md + 共享设计指令 + example.html 视觉参考 + 用户内容）拼成结构化上下文。当前 LLM 在读到此上下文的进程中直接写 HTML —— 不启动 Codex/Claude Code 子进程，不走 Cloudflare Tunnel。

## 速度对比

| 路径 | 延迟 | 链路 |
|------|------|------|
| formal HTML Anything | 30-120s | agent → Node.js → HTTPS → Tunnel → gateway → spawn Codex → LLM → SSE → 回传 |
| **html-render-lite** | **1-3s** | 当前 agent → 读本地模板 → 直接写 HTML（同一进程） |

## 依赖

- Python 3.x
- 本地克隆的 HTML Anything 仓库：`git clone https://github.com/nexu-io/html-anything.git ~/workspace/html-anything`

## 用法

```bash
# 列出 75 个模板
./html-render-lite --list

# 从文件输入
./html-render-lite --template doc-kami-parchment -i source.md

# 管道输入
echo "Markdown content" | ./html-render-lite --template card-xiaohongshu

# 验证已生成的 HTML
./html-render-lite --validate output.html

# 自动修复（注入键盘导航 JS + 进度条）
./html-render-lite --fix output.html

# 指定 HTML Anything 仓库路径
./html-render-lite --template deck-simple -i source.md --repo /path/to/html-anything
```

## 工作流

```
用户说："用 doc-kami-parchment 模板生成一份报告"
  → 调用 html-render-lite --template doc-kami-parchment -i content.md
  → 获得结构化上下文（模板约束 + 设计指令 + 视觉参考 + 用户内容）
  → 当前 agent 读到此上下文
  → 在同一进程内直接写 HTML
  → 1-3 秒出成品
```

## 许可证

MIT
