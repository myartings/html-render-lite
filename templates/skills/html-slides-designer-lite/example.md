# HTML Slides Designer Lite

source:
- source_type: article
- title: Beads 不是记忆库，而是 Agent 任务控制面
- author: example
- url: https://example.com/article
- article_type: tool-analysis
- target_template: html-slides-designer-lite
- recommended_pages: 6

## Deck Brief
- audience: engineers using AI coding agents
- goal: explain why a structured task graph is different from generic AI memory
- tone: direct, engineering-oriented, concise
- primary_takeaway: Beads is useful because it helps agents know project state and next actions, not because it remembers personal preferences.
- must_preserve:
  - TASKS.md is a flat list and cannot express dependencies well.
  - `bd ready` gives unblocked tasks.
  - The tool depends on agents actually using the workflow.
- avoid:
  - Do not claim star count proves value.
  - Do not market it as a full project management replacement.

## Page Plan
1. Cover / kind: cover - Beads helps agents remember the next task, not the user persona.
2. Thesis / kind: thesis - The word memory is misleading here.
3. Problem / kind: problem - Flat task lists break down in long projects.
4. Mechanism / kind: mechanism - Status, dependencies, ready, and claim form the control loop.
5. Caveat / kind: caveat - It only works if agents are instructed to use it.
6. Action / kind: action - Use it for multi-day AI coding projects.

## Page Content

### 01 Cover
- kind: cover
- title: Beads：让 Agent 不忘下一步
- subtitle: 它不是“记住你是谁”的长期记忆，而是面向 AI coding agent 的任务图与工作队列。
- footer_source: example article

### 02 Memory 这个词容易误导
- kind: thesis
- takeaway: Beads 的 memory 是项目任务记忆，不是个人偏好记忆。
- bullets:
  - source/article: 它不负责记住代码风格或用户画像。
  - source/article: 它记录任务状态、阻塞关系和下一步动作。
  - Hermes/context: 更接近 Agent 任务控制面。

### 03 TASKS.md 为什么不够
- kind: problem
- takeaway: 平面 TODO 列表无法表达长期项目的执行关系。
- bullets:
  - source/article: TASKS.md 缺少依赖、优先级和状态追踪。
  - source/article: Agent 每次都要重新判断任务顺序。
  - source/article: 多会话时上下文容易断裂。

### 04 Beads 的核心机制
- kind: mechanism
- takeaway: Beads 把下一步变成可查询的工作队列。
- bullets:
  - source/article: 每个任务有状态。
  - source/article: 任务之间可以表达 blocks / related / parent-child。
  - source/article: Agent 用 `bd ready` 找无阻塞任务，用 `bd claim` 领取。

### 05 使用边界
- kind: caveat
- takeaway: Beads 不是安装后自动生效的魔法记忆。
- bullets:
  - source/article: Agent 必须被要求主动调用 Beads 命令。
  - source/article: 没有流程约束时，它只是一个安静的数据库。
  - source/article: 底层依赖的遥测设置需要单独检查。

### 06 下一步
- kind: action
- takeaway: 把它用于长期 AI coding 项目，而不是小脚本。
- bullets:
  - Hermes/context: 偏好和知识放进 KB。
  - Hermes/context: 任务状态和依赖交给任务控制面。
  - Hermes/context: 先在一个多日项目里试运行。
