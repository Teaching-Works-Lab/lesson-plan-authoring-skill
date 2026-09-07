# Word Compilation and Visual QA

## Separation of responsibility

The Markdown gate validates **content**. The Word gate validates **format and presentation**.

Word QA must not silently become a second content-authoring pass. If a semantic problem is discovered while reviewing Word, return to canonical Markdown, fix it there, and recompile.

## Compilation input

Compile DOCX from:

- content-approved canonical Markdown;
- its referenced semantic images;
- manifest/build metadata as needed;
- the approved school Word template or calibrated layout baseline.

## Presentation-only concerns at Word stage

Check and adjust, without changing lesson semantics:

- fonts, font sizes and C/C++ glyph support;
- line spacing, paragraph spacing and indentation;
- table widths, merged cells, borders, row heights and row continuation;
- heading hierarchy and mixed Chinese/English line breaking;
- image size, aspect ratio, alignment and caption/label placement;
- page and section breaks, pagination and blank-page anomalies;
- headers, footers, margins and institutional template fields;
- orphan/widow lines and excessive whitespace;
- hidden/sample residue and duplicate template placeholders.

## Full-page render gate

Render the final DOCX to page PNGs and inspect **every page at readable scale** before delivery.

Verify:

- cover fields and course identity;
- no clipping/overflow/missing glyphs;
- tables continue cleanly across pages;
- knowledge maps are readable and not duplicated;
- lesson boundaries and end-of-document content are complete;
- no stale sample course assets remain.

## Revision comparison

For localized revisions, compare rendered baseline and output. Non-target differences require explanation or rollback. Pagination shifts caused by the authorized edit are acceptable only when semantically neutral.

## Semantic-feedback loop

If Word review reveals wording, missing content, wrong lesson mapping, incorrect knowledge structure, or any other semantic defect:

`Word QA finding → canonical Markdown/source asset fix → content gate → recompile Word → visual QA again`

Never resolve semantic divergence by manually editing Word and Markdown separately.

## Package consistency gate

Programmatically verify after successful Word QA:

- expected lesson count;
- every Markdown `images/...` reference exists;
- stable image names map to the correct lesson;
- no missing/orphan semantic lesson-map images;
- manifest matches actual files;
- compiled DOCX corresponds to the current canonical source bundle/build.
