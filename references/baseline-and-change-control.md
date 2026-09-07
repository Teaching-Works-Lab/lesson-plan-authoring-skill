# Baseline and Change Control

## Revision authority

When the user identifies a calibrated, corrected, approved, or final lesson-plan version, that exact version is the revision baseline. Similar filenames, prior drafts, regenerated copies, and memory are not equivalent.

Revision authority has two layers:

- **semantic baseline** — canonical Markdown source bundle when it exists;
- **visual/layout baseline** — approved compiled DOCX/template rendering.

Do not let the visual baseline replace the semantic master.

## Canonical Markdown available

If the approved baseline includes canonical Markdown/source assets:

1. freeze that exact Markdown bundle as semantic baseline;
2. freeze the approved DOCX/render as visual baseline;
3. edit only the authorized Markdown/assets scope;
4. rerun content QA;
5. recompile DOCX from updated canonical source;
6. compare rendered baseline vs output and explain only authorized differences plus unavoidable neutral pagination shifts.

Do not directly patch semantic lesson content in DOCX.

## Legacy Word-only approved baseline

If the authoritative approved baseline exists only as DOCX and no canonical Markdown source exists, treat it as a **legacy Word-only migration case**:

1. freeze the exact DOCX bytes/render;
2. reconstruct Markdown + semantic images + manifest;
3. verify semantic/structural parity against the approved DOCX;
4. declare verified Markdown canonical;
5. apply the requested revision in Markdown/assets;
6. compile a new DOCX using the approved layout/template as presentation baseline;
7. visually compare before delivery.

This migration is one-time. After canonical Markdown exists, normal revisions remain Markdown → Word.

## Change freeze

For localized revisions:

- freeze all non-target semantics in canonical Markdown;
- preserve non-target visual layout as closely as the compiler/template allows;
- make the smallest explainable source change;
- reject unrelated rewriting or “cleanup”;
- if the exact baseline cannot be obtained, do not certify the result as baseline-preserving.

## Typical failure

Bad: use an older DOCX because its course name matches, edit lesson text directly in Word, then extract Markdown afterward.

Good: identify the exact approved baseline; use canonical Markdown as semantic master, or migrate a Word-only legacy baseline once; make the requested source change; recompile and visually compare.
