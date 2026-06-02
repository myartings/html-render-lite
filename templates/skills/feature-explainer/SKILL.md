---
name: feature-explainer
zh_name: "功能机制解释器"
en_name: "Feature Explainer"
emoji: "🧩"
description: "把代码库功能、模块机制或系统流程解释成可审阅的路径图"
category: doc
scenario: engineering
aspect_hint: "桌面长页面 / 路径图"
featured: 32
tags: ["feature", "explainer", "repo", "codebase", "mechanism", "源码"]
---

【模板: 功能机制解释器】
【意图】解释一个功能、模块、数据流或系统机制是如何工作的。适合读 repo 后给人讲清楚“请求怎么走、文件怎么连、坑在哪里”。不要写成普通教程。

【核心输出】
- 页面必须列出实际读过的文件 / 文档 / diff。
- 必须给出从入口到结果的 numbered path。
- 必须区分事实、推断和未知。
- 必须有 gotchas / failure modes / FAQ。

【输入适配】
用户内容可能包含：
- 目标功能或模块名。
- 文件路径、代码片段、git diff、日志、README。
- Agent 对代码库的阅读结果。

【布局】
1. Header
   - eyebrow: `Feature Explainer`
   - H1: `{功能/模块名} 怎么工作`
   - lead: 一句话说明读完能理解什么。
   - meta chips: files read、entry point、confidence、scope。

2. 30-second Summary
   - 3-5 条要点。
   - 第一条必须是机制总述。

3. Source Map
   - `Files Read` 列表，按作用分组：entry、model/state、business logic、UI/API、tests/docs。
   - 每个文件写 1 句“它在机制里负责什么”。
   - 使用 monospace 展示路径；长路径必须换行。

4. Path / Flow
   - 使用 numbered cards 或 vertical timeline。
   - 每步包含：trigger、file/function、state/data、output。
   - 如果有分支，用 nested cards 或 collapsible details。

5. Data / State Model
   - 展示关键数据结构、状态字段、事件、依赖。
   - 可以用简洁表格或轻量 diagram-like boxes。

6. Gotchas
   - 至少列出 3 类：边界条件、容易误解的实现、测试/上线风险。
   - 如果没有足够证据，写“未验证”。

7. FAQ
   - 回答人类读代码时自然会问的问题。
   - 例如“入口在哪里？”“失败时会怎样？”“改这里会影响哪里？”。

8. Next Read / Next Change
   - 如果要继续深挖，下一步读哪些文件。
   - 如果要改代码，建议先改哪里、跑什么验证。

【硬性视觉签名】
- 工程解释界面，不要博客杂志风。
- 背景 warm docs `#fafaf9`；正文 `#1c1b1a`；muted `#6b6964`；边框 `#e6e4e0`；强调 `#c96442`。
- 左侧可有 source map/sidebar，主区域是 flow steps，右侧可有 mini TOC 或 risk notes。
- 代码路径用 mono，小号但清晰。
- Callout 左边框用陶土橙；风险用红；验证状态用绿/黄。
- 移动端必须单栏，source map 不得把正文挤没。

【内容规则】
- 文件路径必须来自输入或实际读取结果，不要编造。
- 对未读文件不要装作已读；可列为 `Need to read`。
- 推断必须标注 `Inference`。
- 不要输出大段源码，除非用户要求；用短片段或路径引用即可。
