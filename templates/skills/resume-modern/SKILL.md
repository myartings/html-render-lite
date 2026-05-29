---
name: resume-modern
zh_name: "极简简历"
en_name: "Modern Resume"
emoji: "📄"
description: "现代极简简历, A4 单页, 适合打印或导出 PDF"
category: resume
scenario: personal
aspect_hint: "A4 (210×297mm)"
recommended: 12
tags: ["resume", "cv", "简历"]
example_id: sample-resume-frontend
example_name: "极简简历 · 前端工程师"
example_format: markdown
example_tagline: "A4 单页, 可打印 / 导出 PDF"
example_desc: "高级前端工程师简历, 两栏布局, 数字成就高亮"
---

【模板: 现代极简简历】
- 容器宽度模拟 A4: `w-[210mm] min-h-[297mm] mx-auto`, 内边距 16-20mm。
- 顶部姓名巨大 (text-4xl), 底下一行 contact (邮箱 / 电话 / 城市 / GitHub / LinkedIn), 中间用细竖线分隔。
- 主体两栏可选: 左 60% 主线（经历/项目/教育）, 右 40% 副线（技能/语言/获奖）。
- 章节标题: small caps 风格, 上方一条短 accent 线 (w-8 h-0.5)。
- 经历每条: 公司 + 职位 + 时间区间 (右对齐), 下方 1-3 条 bullet 用动词开头。
- 不使用花哨颜色, 黑白灰 + 1 个 accent (深蓝 / 墨绿)。
- 添加 @media print 样式, 隐藏不必要的元素, 颜色保留。
- **硬性视觉签名 — 贴近 example.html**:
  - A4 背景用暖灰 `#e9e6df`, 纸张白 `#fff`, 正文 `#1a1a1a`, 次级文字 `#6b6760` / `#5a564e`, 细线 `#e7e5e0`。
  - 默认 accent 用深蓝 `#1f4d8f`, 可按用户行业替换为墨绿, 但只保留一个 accent。
  - 字体使用 Inter / Noto Sans SC; 不要衬线装饰、头像大图、彩色技能条。
  - 版式要像高级单页 PDF: 两栏、紧凑、数字成就突出, 但留白充足。
  - 打印时阴影和背景不应影响可读性; A4 尺寸必须稳定。
