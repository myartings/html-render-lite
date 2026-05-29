# HTML Artifact 生态 Case Radar

日期：2026-05-18
来源：Jike / GitHub / 公开网页

## 总览

本轮扫描关注 AI 时代 HTML artifact 的真实用法：HTML report、HTML deck、小红书卡片、数据可视化、原型复刻。

## 精读案例

### 1. HTML-Anything
- 类型：本地 HTML artifact 工作台
- URL：https://github.com/nexu-io/html-anything
- 事实：支持多模板，调用本地 Claude / Codex / OpenClaw 等 Agent 生成单文件 HTML。
- 真物：`screenshots/cases/html-anything-home.png`
- 妙在：把“内容输入 → 模板选择 → Agent 生成 → 浏览器预览 → 导出”串成一个工作台。
- 为什么适合 myartings：可以接 case-radar、system-study、readable-output 后处理，生成报告、deck、小红书卡片。
- 风险：不要把 HTML 当知识真源，Markdown / JSON / YAML 才是长期真源。

### 2. HTML is the new PPT
- 类型：社区实践信号
- URL：https://m.okjike.com/
- 事实：多位创作者讨论用 HTML 取代 PPT / Markdown 做表达层。
- 妙在：HTML 同时具备排版、交互、可截图、可发布能力。
- 为什么适合 myartings：独立 app 营销材料、教程卡片、产品 demo 都可复用。
- 风险：正式商业协作中 PPT / Word / PDF 仍有惯性，不要神化 HTML。

## 横向判断

| 案例 | 成熟度 | 可复制性 | 当前价值 |
|---|---|---|---|
| HTML-Anything | Medium | High | High |
| HTML is the new PPT | Low | Medium | Medium |

## 下一步

1. 用 HTML-Anything 复刻本案例集第二版。
2. 做一个小红书图文卡片模板测试。
3. 把稳定经验回写到 KB 的 HTML artifact 页面。
