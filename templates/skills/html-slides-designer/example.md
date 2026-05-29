# Design-first HTML Slides

目标: 把 HTML slide 生成从“填固定模板”推进到“根据 brief 现场设计一套视觉系统”。

关键步骤:

1. 先定义受众、语气和使用场景, 不要先套视觉模板。
2. 把风格词转成 CSS 决策: token、字体栈、背景、构图、动画。
3. 设计少量页面类型: cover、concept grid、scenario split、closing action。
4. 每页一个 takeaway, 标题必须是结论。
5. 键盘演示、移动端阅读和 reduced motion 都要覆盖。
6. 避免紫蓝渐变、白底 SaaS、大圆角卡片堆叠、Inter/Roboto 默认味。

常见失败:

- 一开始就要求“高级感”, 结果得到紫蓝渐变和大卡片。
- 只检查 happy path, 忽略真实文本长度和小屏。
- 把所有信息塞进同一屏, 没有主次。

示例方向:

工程师向深色风格: `#0b0d12` 深底、`#ff5c39` 橙色主强调、`#c8ff4d` 酸橙高亮、mono 元信息、radial glow、1px grid、左右 scenario 对照。
