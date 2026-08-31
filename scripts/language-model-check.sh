#!/usr/bin/env bash
# language-model-check.sh — guard the GERMAN-default / English-translation model.
#
# MIGRATION EDIT (DE-first, owner decision D-1 2026-08-31; skill mii-ig-migration
# v0.25.0 run, see migration-log/run.log 5.2): this module renders in GERMAN by
# default (sushi-config.yaml `i18n-default-lang: de`) with an ENGLISH translation
# under `input/translations/en/` — the INVERSE of the template default, per the
# MII meta-wiki Release-2027 note "IG Umbau — DE First" and the source guide
# (German-only). The template's original script guarded the EN-default model;
# its PATTERNS are INVERTED here (allowlisting every hit would be whack-a-mole —
# execution lesson from the Studie migration; upstream template issue candidate:
# parameterize the guarded language, module-template issue #9).
#
#   scripts/language-model-check.sh        # scan the tracked text files
#
# Exit 0 = clean, 1 = residue found. Run by .github/workflows/convention-check.yml.
#
# Legitimate hits go in ALLOW below, one "<path>|<substring>" per entry — do NOT
# weaken PATTERNS.
#
# Not scanned: input/translations/en/** (the English translation itself),
# docs/** (template-inherited recipes that describe the TEMPLATE's en-default
# model in general terms — kept verbatim; the module's own language model is
# stated in README.md and sushi-config.yaml), implementation-guides/** (the
# retained pre-Gate-D Simplifier source tree), migration-log/** (the migration
# evidence quotes both models), and this file. Binary files are skipped by
# `git grep -I`.
#
# Bash 3.2 compatible.
set -u
cd "$(dirname "$0")/.." || exit 1

# Phrases that assert the wrong language model for THIS module (English-default
# vocabulary). Inverted from the template's curated EN-default set.
#
# Word boundaries are written as `[^A-Za-z]` / `(^|[^A-Za-z])` / `([^A-Za-z]|$)`,
# NOT as `\b`: git's built-in regex engine is not the GNU one, and it silently
# matches nothing for a `\b` pattern on some platforms — a guard that quietly
# under-matches is worse than no guard.
PATTERNS=(
  'english[^.]{0,30}[^A-Za-z](default|leading|authoritative|binding)([^A-Za-z]|$)'
  'english[^A-Za-z]{0,6}(is|stays|remains|as)?[^A-Za-z]{0,6}(the[^A-Za-z]{0,6})?(source|original)([^A-Za-z]|$)'
  'english[^.]{0,25}[^A-Za-z]the (source|original)([^A-Za-z]|$)'
  'falls back to english'
  'leave it english'
  'english-led([^A-Za-z]|$)'
  'english starter page'
  '(^|[^A-Za-z])en-default([^A-Za-z]|$)'
  'back to de-default'
  'englisch \(standardsprache\)'
  'i18n-default-lang:[^A-Za-z]{0,4}en([^A-Za-z]|$)'
  'input/translations/de([^A-Za-z]|$)'
)

# Reviewed exceptions: "<path>|<substring of the offending line>", one per line.
ALLOW=''

args=()
for pattern in "${PATTERNS[@]}"; do
  args+=(-e "$pattern")
done

hits="$(git grep -n -I -i -E "${args[@]}" -- . \
  ':(exclude)input/translations/en' \
  ':(exclude)docs' \
  ':(exclude)implementation-guides' \
  ':(exclude)migration-log' \
  ':(exclude)README.simplifier-legacy.md' \
  ':(exclude)scripts/language-model-check.sh')"
rc=$?

# git grep exits 0 on a hit, 1 on no hit, and >1 on an error. The error case
# must not be mistaken for a clean tree, so the status is handled explicitly.
case "$rc" in
  1) echo "language-model-check: no English-default residue found."; exit 0;;
  0) ;;
  *) echo "ERROR: git grep failed (exit $rc)." >&2; exit "$rc";;
esac

status=0
while IFS= read -r hit; do
  [ -n "$hit" ] || continue
  f="${hit%%:*}"
  allowed=0
  while IFS= read -r entry; do
    [ -n "$entry" ] || continue
    case "$entry" in
      "$f|"*)
        needle="${entry#*|}"
        case "$hit" in *"$needle"*) allowed=1;; esac;;
    esac
  done <<EOF
$ALLOW
EOF
  [ "$allowed" = 1 ] && continue
  echo "$hit"
  status=1
done <<EOF
$hits
EOF

if [ "$status" != 0 ]; then
  cat >&2 <<'MSG'

English-default language residue found (see the lines above).

This IG is GERMAN-default with an English translation (owner decision, DE-first):
  - input/pagecontent/**            German  — the source
  - input/translations/en/**        English — the translation, renders on /en/
  - input/includes/menu.xml         German  — the source menu
There is no input/translations/de/ in this module.

If a hit is legitimate, add it to ALLOW in scripts/language-model-check.sh with a
reason in the commit message. Do not widen the exclusions or relax PATTERNS.
MSG
else
  echo "language-model-check: no English-default residue found."
fi
exit "$status"