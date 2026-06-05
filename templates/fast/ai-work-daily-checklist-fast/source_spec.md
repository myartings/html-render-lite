# ai-work-daily-checklist-fast 输入格式说明

面向 `work_summary.py daily --html` 生成的 AI 工作日报 source.md。

## 必需结构

```markdown
# AI 工作日报｜2026-06-05

> 一眼看重点，细节点开再看。

## 30 秒看懂

1. PhotoManager：修复相册权限声明并发布 Build 3

## 已办事项清单

1. PhotoManager：修复相册权限声明并发布 Build 3（agent-memory: ...）
2. iOSTemplate：swiftui-design-skill 同步到 13 个项目（agent-memory: ...）

## 今日主线

**一句话主线：** PhotoManager：发布 Build 5，系统隐藏相簿按最新 100 张恢复

## 风险 / 决策 / 下一步

### 关键决策
- ...

## 详细记录

### 今日完成
- ...
```

## 渲染目标

- 首屏是工作看板，不是报告文章。
- 所有已办事项都进入清单。
- 按 `项目：事项` 自动分组。
- 详情和证据默认折叠。
- 视觉基调接近 Linear / GitHub Project / Apple Notes：白底、细线、紧凑、克制。
