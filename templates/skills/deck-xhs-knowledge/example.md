# 谁在替你思考：Codex vs Claude Code Subagent 架构

source_file: codex-vs-cc-subagent.md
author: Kenny Wu
series: Subagent 架构对比
channel: 公众号·肯玩 AI

## Deck Brief
- 风格：warm ivory editorial comparison deck
- 目标：把一篇 AI 工具/工作流分析文拆成强章节、多页对比卡片
- 版式关键词：cover with index / chapter compare / stat pair / insight strip / closing thesis

## Cover
- hook: 谁在替你思考
- subtitle: 当 AI 开始自己开子线程，真正的分野不在数量，而在计划权、执行权和上下文边界。
- strip_left: Codex
- strip_right: Claude Code
- summary: 这不是功能表对比，而是两种 agent 组织哲学。
- index:
  - 核心判断
  - 定义差异
  - 运行模式
  - 落地原则

## Chapter Compare
### 核心判断
- Attention: 把研究、实现、审查分离，避免一个主 Agent 同时背负所有上下文噪音。
- Authority: 不同子任务拥有不同工具边界与权限半径，降低误操作扩散。
- Accountability: 每个执行单元都要有清晰输入、输出和验收条件。
- Boundary: 真正的性能提升来自边界清晰，而不是简单堆 Agent 数量。

## Stat Pair
### 定义与触发
- Codex: 更偏任务执行闭环，围绕当前目标拆分、执行、验证、汇报。
- Claude Code: 更偏长期工作室治理，用稳定角色、Skills、Hooks、Worktrees 组织复杂项目。
- Insight: 一个优先回答“这次任务怎么做完”，另一个优先回答“这类任务以后怎么稳定做”。

## Quote / Excerpt
- 真正的升级，不是让更多 Agent 同时说话，而是让研究、实现、测试、审查各自有清楚边界。
- 注释: 把所有问题塞进一个超大主线程，通常只会让上下文更浑、更难验收。

## Before / After
- Before: 一个超大主 Agent 包办研究、编码、测试、文档，所有风险混在同一上下文里。
- After: 把研究、实现、审查、测试拆给不同执行单元，再由主 Agent 用验收门汇总。
- Rule: 先问有几个责任边界，再决定需要几个 Agent。

## Closing Thesis
- 不要先问“我要几个 Agent”。
- 先问：这个任务究竟有几个不同的责任边界？
