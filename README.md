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
