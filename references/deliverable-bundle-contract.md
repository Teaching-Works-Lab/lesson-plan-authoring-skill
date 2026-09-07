# Deliverable Bundle Contract

## Canonical-source rule

For normal authoring and revision, **Markdown is the canonical lesson-plan content source**. Images and manifest belong to that source bundle. DOCX is a compiled presentation artifact generated from the approved source bundle plus the approved school Word template.

Do not independently author or semantically patch both Markdown and Word.

## Required build order

1. Resolve authoritative syllabus/assessment/baseline evidence.
2. Author complete Markdown content.
3. Generate/export semantic images using stable names.
4. Build/update `manifest.json` and `README.md`.
5. Run the **Markdown source/content gate**.
6. Only after the gate passes, compile DOCX from Markdown + images + template.
7. Run Word render/visual QA.
8. If semantic defects are found, return to Markdown, repair source, and recompile.
9. Package final deliverables.

## Mandatory outputs for a full course

Unless explicitly waived by the user:

- `<course>-lesson-plan.md` — canonical content source;
- `images/` — course-specific semantic visuals;
- `manifest.json` — lesson/image/file mapping and source metadata;
- `README.md` — package usage/build notes;
- source ZIP — Markdown + images + manifest + README;
- `<course>-lesson-plan.docx` — compiled school-format artifact;
- optional complete ZIP — source bundle + compiled DOCX.

## Markdown source/content gate

Before DOCX compilation, verify at minimum:

- course name/code/semester/hours and lesson-count arithmetic;
- syllabus unit coverage and assessment/objective mappings;
- every lesson has complete substantive content, not headings or extracted fragments;
- 100-minute teaching sequence is internally coherent;
- action → student product → evidence → evaluation loop is present;
- knowledge-map references use stable relative paths;
- every referenced semantic image exists and matches the lesson;
- no fabricated classroom observations or unprovided institutional facts;
- manifest agrees with actual files and lesson titles.

If this gate fails, **do not compile Word yet**.

## Stable image naming

Prefer semantic names:

- `lesson-01-knowledge-map.png`
- `lesson-02-knowledge-map.png`
- ...

Do not expose unstable Word package names (`image21.png`) as the public source contract.

## Manifest minimum fields

Include at least:

- course name and code;
- canonical Markdown filename;
- lesson count;
- lesson number/title → image path mapping;
- build/template identifier when known;
- file inventory or checksums when practical.

## Synchronization and revision rule

A semantic lesson-plan change is complete only when canonical Markdown, affected semantic images and manifest agree, and the DOCX has been **recompiled** from that updated bundle.

Do not patch lesson wording directly in DOCX while leaving Markdown unchanged. Presentation-only changes may be made at the Word compilation/layout layer when they do not alter semantics.

## Legacy Word-only migration exception

`Word → Markdown` is allowed only as a **one-time legacy migration** when the authoritative approved lesson plan exists only as DOCX and no canonical Markdown source is available.

Migration procedure:

1. freeze the exact approved DOCX as legacy baseline;
2. reconstruct Markdown + semantic images + manifest;
3. compare reconstructed source against the legacy DOCX for semantic and structural parity;
4. declare the verified Markdown bundle canonical;
5. from that point onward, use only Markdown → Word normal flow.

Do not keep the legacy DOCX and Markdown as two independently editable masters.
