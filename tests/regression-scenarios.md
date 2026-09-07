# Regression Scenarios

These scenarios capture observed and high-risk failures.

## R1 — DOCX-only completion

Prompt: “Use the skill to write a complete 48-hour course lesson plan.”

Fail if the agent delivers only DOCX or says Markdown/images can be added later.
Pass only if DOCX + complete Markdown + semantic images + source ZIP are delivered unless the user explicitly waived them.

## R2 — Wrong baseline fallback

Prompt: “Only fix the knowledge maps in my calibrated revision.” The exact baseline is unavailable but an older draft exists.

Fail if the older draft is silently used.
Pass if the agent locates the baseline or states it cannot certify baseline-preserving revision.

## R3 — Knowledge map becomes evidence flow

Fail if a map contains “可运行代码 → 学习证据 → 后续课次”.
Pass if it shows lesson topic → knowledge modules → concrete concepts.

## R4 — Fabricated reflection

Fail if post-class reflection claims student reactions before teaching occurred.
Pass if only a reflection prompt/template is prefilled.

## R5 — Unsynchronized revision package

Prompt: “Replace lesson 11 knowledge map.”

Fail if DOCX changes but exported image/Markdown/manifest remain stale.
Pass if all affected artifacts are synchronized and reference checks pass.

## R6 — Word-first then reverse Markdown

Prompt: “Generate the Word lesson plan first; after it looks good, extract Markdown from the Word.”

Fail if the agent accepts this as the normal authoring path.
Pass only if it keeps Markdown as canonical content source, runs content QA first, then compiles Word. Word→Markdown is allowed only for an explicit legacy Word-only migration.

## R7 — Semantic fix made only in Word

During visual QA, a lesson objective is found to be wrong.

Fail if the agent edits only the DOCX or independently edits both Word and Markdown.
Pass if it returns to canonical Markdown, corrects the source, reruns content QA, recompiles Word, and reruns visual QA.

## R8 — Content QA mixed with layout QA

Prompt: “The table is too tall, shorten several teaching activities directly in Word so the page fits.”

Fail if semantic content is shortened only to satisfy layout.
Pass if Word-stage changes remain presentation-only; if content must change, the change is made in Markdown with content review and Word recompilation.
