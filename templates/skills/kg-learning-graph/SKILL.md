---
name: kg-learning-graph
zh_name: "学习知识图谱"
en_name: "Learning Knowledge Graph"
emoji: "🕸️"
description: "从 graph.json 生成 G6 学习视图 + force-graph 展示视图的多文件 HTML Artifact 包"
category: doc
scenario: learning
aspect_hint: "responsive package"
tags: ["knowledge graph", "learning", "graph.json", "g6", "force-graph", "artifact"]
---

# 模板: 学习知识图谱

## 意图

把一个主题压缩成“小图谱、强关系、可复述”的学习 artifact。它不是大规模 ontology / database graph，而是帮助用户理解、记忆和复述一个概念、工具、书籍、文章或领域入口。

它在 `/html learn` 体系中对应 choice 4：当用户需要看“依赖、支持、对比、误读、应用、学习顺序”等 typed relations 时使用。完整学习训练仍交给 `kb-study-material`；路线/结构地图交给 `study-map-mintlify`；知识库全局导航交给 Graph Lens。

## 输入

必须准备三类源：

1. `source.md` — 学习材料正文，包含一句话理解、核心节点、关键关系、记忆链、易混淆点、最小学习路径、推荐材料。
2. `graph.json` — 结构化节点边数据，必须可被 G6 和 force-graph 共用。
3. `graph.txt` — 纯文本关系图，便于聊天窗口快速复习。

推荐 `graph.json` schema：

```json
{
  "title": "<topic> 学习知识图谱",
  "topic": "<topic-slug>",
  "version": "1.0",
  "summary": "一句话理解",
  "nodes": [
    {
      "id": "core",
      "label": "核心概念",
      "type": "concept",
      "level": 0,
      "summary": "这个节点为什么重要",
      "detail": "展开解释",
      "keywords": ["关键词"]
    }
  ],
  "edges": [
    {
      "source": "core",
      "target": "example",
      "relation": "例子是",
      "label": "例子是",
      "why": "为什么这条关系成立"
    }
  ],
  "memory_chain": ["node-a", "node-b", "node-c"],
  "learning_path": [
    {"step": 1, "node": "node-a", "task": "先理解..."}
  ]
}
```

## 输出包结构

本模板是 package/workflow template，不是单文件模板。输出目录必须包含：

```text
kg-<topic>/
├── source.md
├── graph.json
├── graph.txt
├── output.html
├── variants/
│   ├── g6.html
│   └── force.html
└── meta.json
```

- `output.html`：入口页，解释本图谱的学习目标，并链接两个视图。
- `variants/g6.html`：默认主视图，严肃学习用。
- `variants/force.html`：展示/分享视图，视觉效果优先。
- 不默认生成 Cytoscape 版本；用户明确要求 network-analysis / Cytoscape 时才加。

## 视觉与交互要求

### G6 学习视图

- 用作主视图。
- 布局优先：radial / force / compact tree 均可，但必须让中心节点、核心概念、误区/反例清楚。
- 必须有：搜索、类型筛选、节点详情卡、记忆链展示、学习路径展示。
- 点击节点后显示：label、type、summary/detail、关联关系。
- 颜色按 node.type 区分，但不要过度霓虹；学习页优先可读性。

### force-graph 展示视图

- 用作视觉分享/demo。
- 允许 Canvas 动画、粒子、发光边、自动适配视野。
- 必须保留搜索、类型筛选、节点详情卡。
- 不能牺牲文字可读性；移动端不能水平溢出。

### 入口页

- 说明这个图谱的主题、适用场景、节点/边数量。
- 给出两个明显入口：`G6 学习视图`、`ForceGraph 展示视图`。
- 展示 memory_chain 的一句话复述版本。

## 内容规则

默认规模：

```text
节点：12–25 个
边：15–35 条
中心节点：1 个
必须有 memory_chain
必须有 learning_path
必须有误区/反例节点
```

关系必须 typed。优先使用：

```text
提出 / 导致 / 引出 / 反对 / 区别于 / 支持 / 通向 / 误读 / 应用于 / 创作 / 影响 / 例子是 / 依赖
```

学习图谱优先覆盖这些关系类型：

- `依赖`：先学什么，后学什么。
- `支持`：哪个概念支撑哪个判断。
- `区别于`：相邻概念的边界。
- `误读`：常见误区指向正确理解。
- `应用于`：概念迁移到真实项目、练习或产品场景。
- `通向`：从入门节点到输出任务的学习路径。

避免弱关系：

```text
相关 / 包含 / 联系
```

## 生成流程

1. 先搜本地知识库/wiki；主题薄弱时再用用户材料或 web/current sources。
2. 先写 `source.md`，确保用户能不用图也读懂。
3. 再抽 `graph.json`：中心节点、核心概念、人物/作品/工具/案例、误区/反例、应用。
4. 为每条边写 `relation` 和 `why`，不要只连线。
5. 生成 `graph.txt`，把关系压缩成可复述文本。
6. 生成 `output.html`、`variants/g6.html`、`variants/force.html`。
7. 验证并发布 Artifact Library。

## QA

返回前至少验证：

- `graph.json` 可 parse。
- `nodes.length` 与 `edges.length` 在预期范围内。
- `memory_chain` 和 `learning_path` 非空。
- 所有 edge 的 source/target 都能在 nodes 中找到。
- `output.html`、`variants/g6.html`、`variants/force.html` 存在，非空，含 `<!doctype html>` 和 `</html>`。
- 浏览器打开入口页和两个 variant，无 JS console error。
- 至少测试一次搜索或节点点击。
- 确认没有默认生成 Cytoscape。

## 发布

使用现有 Artifact Library 包发布流程：

```bash
html-artifact-publish \
  --package /tmp/html-artifacts/kg-<topic> \
  --title "<topic> 学习知识图谱" \
  --type demo \
  --visibility shared \
  --agent hermes \
  --template kg-learning-graph \
  --id kg-<topic> \
  --overwrite
```

发布后返回 public URL、local package path、sync path。

## Pitfalls

- 图越大不等于越好。超过 30 节点时先拆子图。
- 不要让 force 动画掩盖学习路径；G6 版本才是主学习视图。
- 不要默认加入 Cytoscape；此前对比已决定放弃。
- CDN 版本会触发 artifact external reference warning；需要离线版时再 vendor G6 / force-graph JS。
