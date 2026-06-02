# 选择首发 iOS App 方向

目标：选一个 2 周内能做出 MVP、能自用 dogfood、后续有订阅可能的独立 iOS App 方向。

约束：
- 技术栈优先 SwiftUI / SwiftData。
- 首版不要依赖复杂后端。
- 要能在小红书或 Twitter 上讲清楚价值。
- myartings 自己最好每天能用。

## Options

### 英语口语微练习
- Summary: 每天 3 分钟口语练习，AI 给出一句可执行反馈。
- Pros: 自用痛点强；使用频次高；订阅路径自然。
- Cons: 语音反馈质量会影响体验。
- Risks: 语音识别和反馈成本可能偏高。

### AI 工作日报
- Summary: 自动把一天的 commit、聊天和任务整理成日报。
- Pros: dogfood 强；可以和现有工作流结合。
- Cons: 权限、隐私、数据来源复杂。
- Risks: 初版集成成本过高。

### 健身打卡
- Summary: 简洁记录胸腹训练、体脂和进度照片。
- Pros: MVP 快；数据结构简单。
- Cons: 差异化弱；留存不确定。
- Risks: 市场同质化严重。

## Criteria

- Self-use: High - 自己是否每天需要
- MVP cost: High - 2 周内能否完成闭环
- Monetization: Medium - 是否有订阅或付费理由
- Differentiation: Medium - 是否能讲清楚不同点
- Risk: Medium - 上线、成本、维护风险

## Decision

推荐先做英语口语微练习。它最符合自用高频、MVP 可控、订阅路径自然三个条件。

## Uncertainty

- AI 反馈质量是否足够稳定。
- 单次练习的成本能否压到可接受范围。
- 用户是否愿意每天打开。

## Next Decision Step

用 3 天做一个极小闭环：录音、转写、AI 反馈、下一句练习建议。只验证每天是否愿意自用，不做完整产品。
