# AI Coding 系统学习

适用人群：有编程经验、正在用 Codex / Claude Code / OpenClaw 做产品开发的独立开发者。

## 学习目标

1. 理解 AI Coding 不是“让模型随便写代码”，而是 harness + 反馈回路。
2. 学会把需求拆成可验证的小步。
3. 避免常见反模式：一次性大改、无测试、无验收、只看速度不看维护。

## 核心概念

### Harness

Harness 是围绕 Agent 的工程化约束：任务描述、上下文、测试、检查、回滚、审查。

### Spec-Driven

先定义验收标准，再让 Agent 实现。适合复杂功能和多人协作。

### Artifact

AI 生成的交付物不只代码，也包括 Markdown、HTML、PNG、deck、原型和数据报告。

## 实战流程

1. 写一句目标。
2. 列验收标准。
3. 让 Agent 先读代码和提出计划。
4. 小步实现。
5. 跑测试 / lint / build。
6. 人类 review 关键 diff。

## 案例

### Case 1: HTML Anything

来源：https://github.com/nexu-io/html-anything

事实：它用模板 SKILL.md + 输入内容 + 本地 Agent 生成单文件 HTML。

点评：适合放在 case-radar / readable-output 后面做渲染，不适合作为知识真源。

## 争议

### 议题：HTML 会不会取代 Markdown？

主流观点：Markdown 更适合作为长期真源，版本控制友好。

非主流观点：HTML 表达力更强，更适合给人看和分享。

我的初判：7/10 倾向“二者分层”。Markdown / YAML / JSON 是真源，HTML / PNG / PDF 是交付层。

## 反模式

- 没有测试就让 Agent 大改。
- 把漂亮 HTML 当作知识库真源。
- 只追求 token 烧得多，不追求可验证产出。

## 下一步

1. 用一个真实项目跑 30 分钟 Codex 小步实验。
2. 把实验结果写回 KB。
3. 用 HTML-Anything 生成一份复盘报告。
