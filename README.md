# lesson-plan-authoring-skill — Markdown-first final package

This skill governs university lesson-plan authoring and revision using a single-source build model:

**authoritative evidence → canonical Markdown source bundle → content QA → Word compilation → full-page visual QA**

The central separation of responsibility is:

- **Markdown = content authority**: lesson semantics, session structure, knowledge maps, activities, evidence, assessment linkage and maintainable source assets.
- **Word = presentation authority**: school template, fonts, tables, image sizing, pagination, page breaks and visual-format compliance.

Normal Word→Markdown reverse authoring is prohibited. It is allowed only as a one-time migration when an authoritative legacy lesson plan exists only as DOCX; after migration, verified Markdown becomes canonical.

Package includes:

- `SKILL.md` — entry point and mandatory build pipeline;
- `references/baseline-and-change-control.md` — approved-baseline freeze rules;
- `references/lesson-record-contract.md` — per-session teaching/evidence contract;
- `references/knowledge-map-contract.md` — true knowledge-hierarchy rules;
- `references/deliverable-bundle-contract.md` — canonical-source, build-order and packaging contract;
- `references/visual-qa.md` — Word compilation/layout QA and semantic feedback loop;
- `tests/regression-scenarios.md` — behavioral regression scenarios;
- `tests/test-markdown-first-contract.sh` — executable contract check.

GitHub writes still require separate explicit authorization.

## WorkBuddy 安装（Skill）

本仓库根目录的 `SKILL.md` 即 WorkBuddy Skill 入口，直接克隆到 WorkBuddy 的 skills 目录即可使用：

```bash
git clone https://github.com/Teaching-Works-Lab/lesson-plan-authoring-skill.git ~/.workbuddy/skills/lesson-plan-authoring-skill
```

保留目录结构，不要单独复制 `SKILL.md`——`references/`、`data/`、`scripts/` 都是 Skill 的组成部分。安装后无需重启或注册，下次对话即可通过 `@skill:lesson-plan-authoring-skill` 显式调用，或由 WorkBuddy 按 Skill 描述自动选择。

运行环境：纯文档契约型 Skill，无需额外服务；配套校验脚本在 `tests/`。

WorkBuddy 通过 `~/.workbuddy/skills/` 目录发现 Skill，不使用 Codex Marketplace；两种方式可并存，互不干扰。
