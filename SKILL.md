---
name: lesson-plan-authoring-skill
description: Use when authoring or revising university course lesson plans, teaching-design Word documents, multi-session teaching plans, knowledge maps, or synchronized lesson-plan source packages from a syllabus, especially when an approved school template or calibrated revision must be preserved.
---

# Lesson Plan Authoring Skill

## Overview

Author semantics once, in Markdown; compile presentation into Word. A lesson plan is not a syllabus rewrite: every session must convert authoritative course requirements into a teachable sequence with student action, observable evidence, assessment linkage, and a maintainable source package.

**Core rule:** **Markdown is the canonical content source. DOCX is a compiled presentation artifact.** Content correctness and Word formatting are separate QA contracts and must be checked in that order.

## Mode gate

1. **New authoring** — build from the current official syllabus + assessment plan + approved school template/examples.
2. **Revision with canonical Markdown** — freeze the approved source/baseline and edit Markdown/assets only within the requested scope, then recompile Word.
3. **Legacy Word-only baseline** — if the exact approved lesson plan exists only as DOCX, perform a one-time legacy migration to canonical Markdown, verify semantic/structural parity, then continue Markdown-first. Do not keep Word and Markdown as independently authored sources.
4. **Baseline missing** — if the user names a calibrated/revised baseline but the exact version is unavailable, do not silently fall back to an older draft.

**REQUIRED REFERENCE:** read `references/baseline-and-change-control.md` for revision tasks.

## Authoritative source priority

1. exact user-approved calibrated lesson-plan baseline, when revising;
2. current official syllabus / course foundation / assessment plan;
3. approved school teaching-design template and comparable examples;
4. specified textbook/course resources;
5. pedagogical derivation only where sources leave design freedom.

Never invent teacher identity, signatures, dates, attendance, student performance, grades, observed classroom reactions, or unprovided institutional facts.

## Mandatory build pipeline

`authoritative evidence → lesson/course content model → canonical Markdown + semantic images + manifest → content QA → Word compilation with school template → full-page visual QA → delivery`

The direction is one-way for normal work:

`Markdown → Word`

**Normal `Word → Markdown` reverse authoring is prohibited.** The only exception is the one-time legacy migration described above.

If Word QA exposes a semantic problem, return to Markdown, fix the canonical source, then recompile Word. Do not patch lesson content directly inside DOCX and leave Markdown stale.

**REQUIRED REFERENCE:** read `references/deliverable-bundle-contract.md` before a full-course build.

## Markdown/content gate

Markdown is responsible for **content correctness and maintainability**, not page layout. Before Word compilation, verify:

- course identity, hours, lesson count, syllabus coverage, assessment weights and objective mappings;
- complete session records and 100-minute teaching logic;
- teacher/student actions, runnable/inspectable products, evidence and evaluation loop;
- knowledge maps as true knowledge hierarchies;
- no fabricated post-class facts;
- stable relative image references and synchronized manifest;
- no placeholder/TBD content unless explicitly required by the school template.

**No Word compilation before this content QA gate passes.**

## Session contract

Each class meeting must preserve the school template while containing: topic/hours/week placeholder; knowledge map; knowledge/ability/value objectives; curriculum ideology and professional-innovation integration; key/difficult points; methods/tools; 100-minute design; teacher/student actions; independent student product; debugging/testing/review; observable evidence and assessment linkage; in-class check; summary; homework; attendance slot; post-class reflection prompt/template; references.

**REQUIRED REFERENCE:** read `references/lesson-record-contract.md` before drafting a full course.

## Knowledge-map contract

A knowledge map answers only: **“What knowledge is in this lesson, and how is it structurally related?”**

Use `lesson topic → 2–4 first-level knowledge modules → concrete concepts/relationships`. Do not put unit IDs, assessment IDs, “可运行代码”, “学习证据”, “后续课次”, “提交报告”, or generic progress arrows into the map.

**REQUIRED REFERENCE:** read `references/knowledge-map-contract.md` whenever knowledge maps are produced.

## Word compilation and visual QA

Word is responsible for **school-format presentation**, not independent content authoring. Compile DOCX only from the content-approved Markdown bundle plus the approved Word template.

Word-stage edits may change presentation only: fonts, sizes, spacing, table geometry, merged cells, borders, image scaling, pagination, page/section breaks, headers/footers and other non-semantic layout properties.

A DOCX is not final until rendered and every page is visually inspected for table width/continuation, clipping, fonts, C/C++ glyphs, knowledge-map readability, blank pages, pagination and hidden/sample residue. For localized revisions, visually compare baseline and output.

**Semantic edits discovered during Word QA must go back to Markdown and trigger recompilation.**

**REQUIRED REFERENCE:** read `references/visual-qa.md` before delivery.

## Deliverable contract

Unless explicitly waived, a full-course delivery contains:

1. **Canonical Markdown source**;
2. course-specific `images/` semantic assets;
3. `manifest.json` and `README.md`;
4. source ZIP containing Markdown + images + manifest + README;
5. **compiled final DOCX**;
6. optional complete-delivery ZIP containing both canonical source bundle and DOCX.

The DOCX must be reproducible from the canonical source bundle and approved template. If DOCX and Markdown disagree semantically, Markdown/source is corrected first and DOCX is rebuilt; do not reconcile by hand-editing both.

## Hard boundaries

- Do not fabricate post-class reflection facts.
- Do not overwrite an approved baseline with an older/unverified variant.
- Do not rewrite unrelated sections during a localized revision.
- Do not convert a knowledge map into a teaching-flow/evidence-flow diagram.
- Do not compile Word before Markdown content QA passes.
- Do not use DOCX as a second independently authored content source.
- Do not reverse-generate Markdown from Word in normal workflow.
- Do not claim Word is final before render-and-review passes.
- Do not claim full-course delivery is complete when canonical Markdown/source assets are missing.
- Do not write to GitHub without separate explicit authorization.

## Red flags

Stop and re-check if you think:

- “I can make the content cleaner directly in Word.”
- “The DOCX is already good, so I can extract Markdown afterward.”
- “Word and Markdown can each be edited independently as long as they look similar.”
- “The filenames are similar, this baseline is probably fine.”
- “A linear evidence chain is close enough to a knowledge map.”
- “The text looks correct, rendering is unnecessary.”
- “I can fill the reflection with plausible student reactions.”

All are failure modes.

## Quick delivery checklist

- authoritative syllabus/assessment version confirmed;
- exact baseline confirmed for revision;
- canonical Markdown authored first;
- lesson count × hours = course hours;
- content QA passes before Word compilation;
- every lesson has action + product + evidence + evaluation;
- every knowledge map is a knowledge hierarchy and every image reference resolves;
- source ZIP contains Markdown + images + README + manifest;
- DOCX compiled from the approved source bundle and school template;
- final DOCX rendered and every page visually inspected;
- any semantic QA correction was made in Markdown and recompiled;
- localized revision diff checked when applicable;
- GitHub untouched unless separately authorized.
