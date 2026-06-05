---
name: concept-card
zh_name: "概念卡片"
en_name: "Concept Card"
emoji: "🃏"
description: "轻量概念卡片：一句话定义、关键边界、类比、例子、反例、相邻概念和行动价值，适合快速记忆、分享和索引。"
category: card
scenario: learning
aspect_hint: "responsive concept card; desktop centered 900px; mobile single card"
recommended: 30
tags: ["concept", "card", "learning", "summary", "memory"]
example_id: "concept-card-pmf"
example_name: "概念卡片 · PMF"
example_format: markdown
example_tagline: "用一张卡快速认识一个概念"
example_desc: "不是三层五图深度地图，而是快速扫读、记忆、分享用的概念卡片。"
---

【模板: 概念卡片 / Concept Card】
【定位】把一个概念压缩成一张轻量、可截图、可分享、可快速复习的卡片。它不是 `concept-map`：不需要展开五张图，也不承担完整运作机制教学；如果用户要深度理解、心智模型、三层五图、怎么用/怎么运作，改用 `concept-map`。

## 核心目标

输出一份**自包含单文件 HTML**，让用户在 30 秒内知道：

- 它是什么；
- 它不是什么；
- 用什么类比记住；
- 正例和反例；
- 它和相邻概念的边界；
- 对 myartings 有什么行动价值。

## 视觉签名

- 风格：单张精品知识卡，偏编辑感 / 复习卡 / 小红书知识卡，但不要做成长 carousel。
- 背景：暖白或浅纸色，卡片居中。
- 主色：深墨蓝；强调色可用琥珀、绿色或紫灰。
- 信息层级：一句话定义最大；边界、类比、例子用模块化小块。
- 内容密度：短句为主，避免长文。

## 固定页面结构

1. **Hero / 概念标题**
   - 概念名
   - 类型标签，例如 `商业概念` / `技术概念` / `哲学概念`
   - 一句话定义

2. **Boundary / 关键边界**
   - `它是` / `它不是`
   - 1–3 条短句

3. **Analogy / 类比**
   - 一个可记忆类比
   - 一句解释为什么这个类比成立

4. **Examples / 正反例**
   - 至少一个正例
   - 至少一个反例

5. **Adjacent Concepts / 相邻概念**
   - 2–4 个相邻概念
   - 每个一句边界说明

6. **Action Value / 对 myartings 的行动价值**
   - 这个概念如何帮助判断、学习、产品、投资或工程实践

7. **Footer / Deep Dive Link**
   - 提示：需要深度理解时使用 `concept-map` / 三层五图。

## 内容输入格式

如果输入 Markdown 中有以下字段，按字段渲染：

```markdown
# Concept Card: <topic>

## 一句话定义
## 关键边界
## 类比
## 例子
## 反例
## 相邻概念
## 对 myartings 的行动价值
```

如果输入是普通说明，自动提炼为上述结构。不要补充没有来源支撑的事实性细节。

## 布局规则

桌面端：

- 主卡片宽度 820–960px，居中。
- 顶部定义区占视觉重心。
- 下方使用 2 列 grid：边界 / 类比 / 正反例 / 相邻概念。
- 行动价值用横向强调条。

移动端：

- 单列卡片。
- 字号适合 390px 阅读。
- 全局不得横向溢出。

## 技术硬性要求

- 第一个字符必须是 `<`，以 `<!DOCTYPE html>` 开头，以 `</html>` 结束。
- 单文件自包含：CSS 和 JS 内联；默认不需要 JS。
- 必须包含 `<meta name="viewport" content="width=device-width, initial-scale=1">`。
- 不依赖外部 CDN、图片 URL、Google Fonts。
- 移动端无横向溢出：`document.documentElement.scrollWidth <= window.innerWidth + 1`。

## 禁止事项

- 不要冒充 `concept-map`，不要强行画三层五图。
- 不要写成长文。
- 不要只给定义，必须包含边界、例子、反例和行动价值。
- 不要把不确定事实写得很肯定。

## 质量自检

1. 30 秒内能否读完核心？
2. 是否有“它是 / 它不是”的边界？
3. 是否有正例和反例？
4. 是否说明了相邻概念的区别？
5. 是否给了对 myartings 的行动价值？
6. 如果用户要深度理解，是否明确提示升级到 `concept-map`？
7. 390px 手机端是否无横向溢出？
