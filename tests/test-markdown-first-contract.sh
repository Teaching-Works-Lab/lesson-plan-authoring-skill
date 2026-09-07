#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILL="$ROOT/SKILL.md"
DELIV="$ROOT/references/deliverable-bundle-contract.md"
VISUAL="$ROOT/references/visual-qa.md"

require() {
  local pattern="$1" file="$2" label="$3"
  if ! grep -Eiq "$pattern" "$file"; then
    echo "FAIL: $label" >&2
    return 1
  fi
  echo "PASS: $label"
}

require 'Markdown.*canonical.*(content|source)|canonical.*Markdown' "$SKILL" 'Markdown is declared canonical content source'
require 'DOCX.*compiled artifact|Word.*compiled artifact|compile.*Word' "$SKILL" 'Word/DOCX is declared a compiled presentation artifact'
require 'content QA.*before.*(Word|DOCX)|before.*(Word|DOCX).*content QA' "$SKILL" 'content QA precedes Word compilation'
require 'Word.*Markdown.*(prohibit|forbid|not.*normal|legacy)|Word.*→.*Markdown' "$SKILL" 'normal Word-to-Markdown reverse authoring is prohibited'
require 'semantic.*Markdown.*recompile|return.*Markdown.*recompile|回.*Markdown.*重新编译' "$SKILL" 'semantic edits return to Markdown and trigger recompilation'
require 'legacy.*migration|遗留.*迁移' "$DELIV" 'legacy Word-only migration is explicitly exceptional'
require 'Markdown.*image.*manifest.*(QA|gate)|content.*gate' "$DELIV" 'Markdown source bundle has its own pre-Word gate'
require 'format|layout|pagination|font|table' "$VISUAL" 'Word QA is presentation-focused'
require 'canonical.*Markdown|Markdown.*canonical' "$ROOT/references/baseline-and-change-control.md" 'revision baseline contract preserves Markdown as semantic master'
require 'legacy.*Word|Word-only|legacy migration' "$ROOT/references/baseline-and-change-control.md" 'Word-only approved baseline enters legacy migration path'

echo 'ALL MARKDOWN-FIRST CONTRACT CHECKS PASSED'
