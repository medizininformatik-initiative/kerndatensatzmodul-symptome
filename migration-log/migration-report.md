# Migration report — MII KDS Modul Symptome → MII KDS module template

**Branch** `migration/2026.0.0-rc.1-template-v0.13.2` · **source** `master` @ `d4ef9de` · **date** 2026-08-31
**Toolkit:** skill `mii-ig-migration` v0.25.0 (+ `fhir-ig-analysis` v0.25.0) · **target:** `mii-kds-module-template` **v0.13.2** + `ig-template-mii-kds` v1.3.4 (URL reference) · **publisher** 2.3.2 (pinned jar, docker `hl7fhir/ig-publisher-base`, tx.fhir.org) · **SUSHI** 3.20.1

> **DRAFT — nothing is published.** Merging this PR publishes the new tree to the default branch;
> that decision belongs to Gate D (TF KDS / module owners), not to this migration.
> Owner decisions applied (2026-08-31): **DE-first** (German default, English translation),
> **target version 2027.0.0-ballot.rc1** (applied as a separate re-version commit AFTER the measured
> migration window), **licence CC-BY-4.0**, in-place delivery in this repository.

## Summary — read this first

The module was migrated from its Simplifier-primary hybrid layout onto the MII KDS module
template, **in place**, preserving identity byte-for-byte and every artifact:

- **Identity:** id / canonical / packageId / name / title / publisher / licence carried unchanged
  (same-module comparison: 10/10 fields, published artifact set 12/12, canonical URLs 4/4 —
  all **IDENTISCH**). The version was `2026.0.0-rc.1` through the whole measured window; the
  **re-version to `2027.0.0-ballot.rc1`** (owner decision, matching the merged sibling
  `kerndatensatz-lungenfunktion`) is the separate, final commit with its own rebuild proof, and it
  resolves the source's 3-way version self-contradiction (sushi-config/version.fsh said
  `2026.0.0-rc.1`, package.json/qc said `2026.0.0` — never released).
- **QA:** baseline (pristine `master` + the in-repo tech-test ig.ini recipe, same pinned
  toolchain) = **14 errors**; migrated = **3 errors**, and those 3 are the baseline's own
  source-inherent unresolved `Patient` subject references (2× `Patient/example`,
  1× `Patient/example-patient`) at the same element paths. The other 11 baseline errors were
  cleared by adjudicated repairs: the 3 predicted **special-url** declarations (9 errors) and the
  repaired non-absolute `de.basisprofil.r4` dependency URI (2 errors).
- **Narrative (DE-first):** all 15 source guide pages routed per the generated, human-reviewed
  `page-map.tsv` (6 `[MAP-EDIT]`s — 4 intentionally-blank pages retired, one retarget, the shared
  image tree extracted); German prose transferred **verbatim** (two silently-corrected source
  typos were restored; see ②); English = machine translations marked `TODO:REVIEW` (Gate C).
- **Verification** (`verify-migration.py`, manifests re-measured at v0.13.2):
  **87 IDENTISCH / 11 DIVERGIERT — each adjudicated below / 19 NICHT PRÜFBAR — conditions did not
  hold**. `prepost-delta`: 1 accepted regression (licence normalization echo), 1 improvement
  (dependency-injection risk cleared), 0 unexplained.
- **CI:** convention-check **dev + release-strict PASS**, unit tests **107/107**, DE-first
  language guard green (patterns inverted — template issue candidate, cf. module-template #9).

## Where the evidence lives

Everything is committed on this branch under **`migration-log/`**: `run.log` (append-only
protocol; every step, count and exit status), `preflight-/postflight-analysis.json` (Gate-0 and
post state), `page-map.tsv` (the reviewed routing contract), `derived-content.tsv` (18 markers),
`verification-findings.tsv` + `verification.md`, `prepost-delta.md`, `same-module-compare.md`,
`qa-baseline-errors.txt`, re-stamped verifier manifests, `source-snapshots/` (files the overlay
replaced), and the generated aids pasted below. Local renders: `output/` (gitignored; CI rebuilds).

## Applied fixes (already changed — a human confirms or reverts)

| # | What changed | Why | Reversible |
|---|---|---|---|
| FIX-1 | `special-url` ×3 declared (finding-observation, finding-condition, CapabilityStatement/metadata) | Gate-0 `special_url_prediction`; publisher requires the declaration for id≠url canonicals; ids/urls untouched | yes (config) |
| FIX-2 | `de.basisprofil.r4` dependency URI made canonical-shaped (source had bare `de.basisprofil.r4`) | measured publisher ERROR ×2 in baseline | yes |
| FIX-3 | `kerndatensatz.meta` pin `2026.0.x` → `2026.0.0` | floating pin; registry-highest = dist-tag = sibling precedent | yes |
| FIX-4 | + `hl7.fhir.uv.crmi` 2.0.0, − `hl7.fhir.uv.xver-r5.r4` | template meta.profile machinery requires crmi; module has no R5 cross-version usage | yes |
| FIX-5 | LICENSE = official CC-BY-4.0 text (license-align: already aligned; source shipped **no** LICENSE file) | declared licence (package.json + `mii-ex-meta-license-codeable`) | yes |
| FIX-6 | DE-first CI patch: `language-model-check.sh` patterns inverted; `convention-check.mjs`+test path swap; go-publish language order | owner decision D-1; template hard-codes EN-default (issue candidate) | yes (1 commit) |
| FIX-7 | Workflow branch filters += `master`/`migration/**`; secret fallback `SU_TERMSERV_* \|\| CDS_DEV_*` | default branch here is `master` (template assumes dev/main); GenetischeTests #52 trap | yes |
| FIX-8 | `.gitignore`: `fsh-generated/` tracked (menu include excluded), `!migration-log/` | wave requirement (#51); evidence must be committed | yes |
| FIX-9 | Re-version `2026.0.0-rc.1` → `2027.0.0-ballot.rc1` in all version-bearing files (incl. CapabilityStatement's versioned profile refs, publication-request.json) | owner decision D-2(a); applied after the measured window | yes (1 commit) |

## ① Decision queue (Gate A/D — someone must confirm)

| Id | Decision | Recommendation / applied state | If nobody acts | Who decides |
|---|---|---|---|---|
| D1 | Licence **CC-BY-4.0** (user-confirmed 2026-08-31). Note: the 2024 registry package still says CC0-1.0 (pre-relicense) — invisible to offline tools, recorded here by hand | keep CC-BY-4.0 | tree stays CC-BY-4.0 (matches master's declared state) | owners/TMF |
| D2 | `prepost-delta`'s single regression `licence.contradictory` = **normalization echo**: config `CC-BY-4.0`, LICENSE title "Attribution 4.0 International", index prose "Creative Commons …" are three spellings of ONE licence; source read "uncontradicted" only because it shipped no LICENSE file | accept (Dokument precedent) | delta report keeps one explained regression row | Gate A reviewer |
| D3 | The 3 residual QA errors (unresolved `Patient/example(-patient)` subject refs) left **source-inherent**, baseline-proven | leave; content fix is out of migration scope (follow-up candidate: add a synthetic Patient) | qa stays at err=3 | owners |
| D4 | FIX-3/FIX-4 dependency adjudications | confirm | pins stand as applied | Gate A reviewer |
| D5 | Re-version supersedes the stuck 2026 "Freigabe" (2026.0.0 was never tagged/published; wiki still lists "in Freigabe") | confirm the 2027-ballot line supersedes it | version stands at 2027.0.0-ballot.rc1 per user decision | owners/TF KDS |
| D6 | Retirement set (post-merge): `implementation-guides/` tree, legacy `main.yml` (fires on this PR — duplicate validation runs are expected and pre-announced here; on v-tags it double-fires beside `module-release.yml` until retired), Renovate PR #26 + `renovate/configure`, `tech-test-2026-07-23` branch + its gh-pages build under `branches/tech-test-2026-07-23/`, `README.simplifier-legacy.md` | execute after Gate D as a follow-up PR | legacy machinery keeps running beside the new CI | owners |
| D7 | GitHub Pages is **disabled** on this repo — previews 404 until an admin enables Pages (source: gh-pages) | enable at review time (one click) | reviewers use CI artifacts / local `output/` | repo admin |

## ② Review queue (Gates B/C — someone must check)

- **Gate B — narrative:** the 18 `DERIVED` markers (10 bridges, 8 summaries; `derived-content.tsv`)
  render as blue review boxes — confirm or reword each; the 6 `[MAP-EDIT]`s in `page-map.tsv`;
  the M9 removals (extensions / search-parameters / operations / value-sets / code-systems /
  researcher-guidance / rendering-artifacts+demo / metadata — all measured at 0 artifacts or no
  source content); M11 default text adopted; **two restored source typos**
  ("Medizinformatik-Initative", "dazuhegörigen", "erstellt wurden") — carried verbatim per the
  no-silent-correction rule; owners may fix them as a content change after merge; the
  `Datensätze` page's tree-directive pointed at the **legacy LM canonical**
  (`…/core/modul-diagnose/…/LogicalModel/Symptom`) — re-targeted to this module's LM with a
  `TODO:REVIEW` note; the adaptation "dieser Seite"→"dieses Abschnitts" on the merged
  Observation↔Condition page.
- **Gate C — language:** the 11 English pages + 2 EN intro-notes are **machine translations**,
  each marked `TODO:REVIEW`; the EN `.po` carries 15/15 page titles (toc unit is the identity
  translation). The intro-note tables keep German element texts (the FHIR resources themselves
  are untranslated).

## ③ QA triage (what the build says, and whose problem it is)

| Class | Count | Standing |
|---|---|---|
| Unresolved `Patient` subject refs in examples | 3 ERROR | **pre-existing** (baseline-proven, same element paths; German message text = localized validator, compared by path) |
| SNOMED version `…/20250701` not on tx.fhir.org | warnings | template pin (`pin-canonicals`); resolves against SU-TermServ in CI with certs (D7/#52 fallback applied) |
| crmi metadata codes (SPDX CS unknown, C4876 fragment, package-source URL non-resolving) | warnings | template machinery class, known from sibling migrations |
| `expansion-params.xhtml` fragment unused | 1 warning | template scaffold note (manifest present; page removed with metadata.md) |
| basisprofil dependsOn canonical “cannot be resolved” | 2 warnings | class change: was 2 ERRORs (non-absolute) in baseline, now the registry-shaped URL warning every module carries |
| LM structural warnings | 136 | pre-existing (baseline: same count) |

Full lists: `output/qa.html` (rebuilt by CI), `migration-log/qa-baseline-errors.txt`.

## Gate 0 — pre-flight scope

| Aspect | Measured |
|---|---|
| Shape | A (SUSHI project; hybrid Simplifier-primary; narrative in-repo, 15↔15 page cross-check vs served guide) |
| Licence evidence | CC-BY-4.0 (package.json + meta-licence extension); no LICENSE file; no sushi `license:` key |
| Canonical space | bare `…/fhir/modul-symptom`; 0 out-of-space; 3 id≠url special-url predictions (all declared) |
| Dependency health | meta pin floating (resolved), basisprofil URI defect (repaired), injection risk (cleared by direct THO/ext pins) |
| QA baseline | rebuilt with pinned 2.3.2: err=14 warn=162 (in-repo 2.2.11 tech-test build kept as secondary evidence) |

## Content map (GENERATED — where every source page went)

### Comparison table (GENERATED by comparison-table.py — do not retype; regenerate instead)

This table belongs inside `migration-log/migration-report.md` (section *Content map*), whose glossary explains every term used here; `references/codes.md` of the skill is the backstop. "Agreed page" = a page of the template's fixed menu; "migration-written blocks" = passages the migration WROTE rather than carried, marked in the rendered guide and listed per page in `derived-content.tsv`. Found a discrepancy while comparing? Record it as a report item (REV-n) — never fix a page ad hoc.

> ⚠ no `--preview-url` was given, so target pages are named but NOT linked — regenerate with the URLs to make every row clickable.

**Where every source page went** — one row per page-map row; open both links side by side to compare manually. *(constructed)* marks a source link derived from the guide root rather than read from the harvest manifest.

| Rendered source page | Rendered target page | What moved | Migration-written blocks on the target |
|---|---|---|---|
| [`MIIIGModulSymptom/Index.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom) *(constructed)* | `input/pagecontent/index.md` | merged into an agreed page | 2 |
| [`MIIIGModulSymptom/BeschreibungModul-1.x.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/BeschreibungModul-1.x) *(constructed)* | `input/pagecontent/index.md` | merged into an agreed page | 2 |
| [`MIIIGModulSymptom/KontextimGesamtprojektBezgezuanderenModulen-1.x.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/KontextimGesamtprojektBezgezuanderenModulen-1.x) *(constructed)* | `input/pagecontent/implementer-guidance.md` | merged into an agreed page | — |
| [`MIIIGModulSymptom/Referenzen-1.x.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/Referenzen-1.x) *(constructed)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Index.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x) *(constructed)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/BeschreibungvonSzenarienfrdieAnwendungderModule-1.x.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/BeschreibungvonSzenarienfrdieAnwendungderModule-1.x) *(constructed)* | `input/pagecontent/guidance.md` | merged into an agreed page | 2 |
| [`MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Datenstzeinkl.Beschreibungen-1.x.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Datenstzeinkl.Beschreibungen-1.x) *(constructed)* | `input/pagecontent/logical-models.md` | merged into an agreed page | 4 |
| [`MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/UML-1.x.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/UML-1.x) *(constructed)* | `input/pagecontent/uml-diagrams.md` | merged into an agreed page | — |
| [`MIIIGModulSymptom/TechnischeImplementierung-1.x/Index.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/TechnischeImplementierung-1.x) *(constructed)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulSymptom/TechnischeImplementierung-1.x/CapabilityStatement.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/TechnischeImplementierung-1.x/CapabilityStatement) *(constructed)* | `input/pagecontent/capability-statements.md` | merged into an agreed page | 2 |
| [`MIIIGModulSymptom/TechnischeImplementierung-1.x/Terminologien-1.x.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/TechnischeImplementierung-1.x/Terminologien-1.x) *(constructed)* | — | RETIRED (not migrated) | — |
| [`MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Index.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x) *(constructed)* | `input/pagecontent/profiles.md` | a section on a family index page | 2 |
| [`MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-Condition-Relationship.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-Condition-Relationship) *(constructed)* | `input/pagecontent/profiles.md` | a section on a family index page | 2 |
| [`MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-1.x.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-1.x) *(constructed)* | `input/intro-notes/StructureDefinition-mii-pr-symptom-observation-intro.md` | into an artefact's intro note | — |
| [`MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Condition-1.x.page.md`](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current/MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Condition-1.x) *(constructed)* | `input/intro-notes/StructureDefinition-mii-pr-symptom-condition-intro.md` | into an artefact's intro note | — |
| [`index.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome/blob/master/input/pagecontent/index.md) *(repo file, not rendered)* | `input/pagecontent/index.md` | merged into an agreed page | 2 |
| [`ImplementationGuide-Common/**`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome/blob/master/ImplementationGuide-Common/**) *(repo file, not rendered)* | — | RETIRED (not migrated) | — |

**The template's own pages** — the template puts these pages in EVERY module, so their EXISTENCE needs no source page; per row whether their CONTENT stayed template-default or also receives source content. Class: `scaffold` = the template ships it and every module keeps it · `optional` = kept only while artefacts of its type exist (check M9) · `demo` = must be gone on a release branch (check M8).

| Template page | Class | Receives source content? | Migration-written blocks |
|---|---|---|---|
| `input/pagecontent/capability-statements.md` | scaffold | yes — see its rows above | 2 |
| `input/pagecontent/changes.md` | scaffold | no — template content | 2 |
| `input/pagecontent/code-systems.md` | optional | no — template content | — |
| `input/pagecontent/downloads.md` | scaffold | no — template content | — |
| `input/pagecontent/examples.md` | scaffold | no — template content | 2 |
| `input/pagecontent/extensions.md` | optional | no — template content | — |
| `input/pagecontent/guidance.md` | scaffold | yes — see its rows above | 2 |
| `input/pagecontent/implementer-guidance.md` | scaffold | yes — see its rows above | — |
| `input/pagecontent/index.md` | scaffold | yes — see its rows above | 2 |
| `input/pagecontent/logical-models.md` | scaffold | yes — see its rows above | 4 |
| `input/pagecontent/metadata.md` | optional | no — template content | — |
| `input/pagecontent/operations.md` | optional | no — template content | — |
| `input/pagecontent/profiles.md` | scaffold | yes — see its rows above | 2 |
| `input/pagecontent/rendering-artifacts.md` | demo | no — template content | — |
| `input/pagecontent/researcher-guidance.md` | optional | no — template content | — |
| `input/pagecontent/search-parameters.md` | optional | no — template content | — |
| `input/pagecontent/security-and-privacy.md` | scaffold | no — template content | — |
| `input/pagecontent/translationinfo.md` | scaffold | no — template content | 2 |
| `input/pagecontent/uml-diagrams.md` | scaffold | yes — see its rows above | — |
| `input/pagecontent/value-sets.md` | optional | no — template content | — |
| `input/pagecontent/version-history.md` | scaffold | no — template content | — |

## Identity (GENERATED — where each value came from)

| Field | Tier | Source | Value | Contradiction |
| --- | --- | --- | --- | --- |
| id | sushi-config | sushi-config.yaml:5 | mii-ig-symptom |  |
| canonical | sushi-config | sushi-config.yaml:6 | https://www.medizininformatik-initiative.de/fhir/modul-symptom |  |
| title | sushi-config | sushi-config.yaml:7 | MII IG Symptom |  |
| name | sushi-config | sushi-config.yaml:8 | MII_IG_Symptom |  |
| status | sushi-config | sushi-config.yaml:9 | active |  |
| version | sushi-config | sushi-config.yaml:10 | 2026.0.0-rc.1 |  |
| packageId | sushi-config | sushi-config.yaml:11 | de.medizininformatikinitiative.kerndatensatz.symptom |  |
| fhirVersion | sushi-config | sushi-config.yaml:12 | 4.0.1 |  |
| copyrightYear | sushi-config | sushi-config.yaml:13 | 2022+ |  |
| releaseLabel | sushi-config | sushi-config.yaml:14 | ci-build |  |
| publisher | sushi-config | sushi-config.yaml:15-17 | Medizininformatik Initiative (https://www.medizininformatik-initiative.de/) |  |
| license | package.json+meta-license-extension | package.json:license + sushi-config.yaml:36-42 (no license: key in sushi-config) | CC-BY-4.0 |  |

## Verification (GENERATED)

## Verification (generated — do not retype)

Produced by `verify-migration.py` from the target tree AND `migration-log/run.log`, the two oracles. **87 IDENTISCH · 11 DIVERGIERT · 19 NICHT PRÜFBAR.**

Verdicts: **IDENTISCH** = matches the source · **DIVERGIERT** = differs, named below · **NICHT PRÜFBAR** = could not be checked, which is **not** a pass and owes a named human an action.

| Layer | Check | What it asks | IDENTISCH | DIVERGIERT | NICHT PRÜFBAR |
|---|---|---|---|---|---|
| conservation | C1 | every source artefact still exists in the migrated module | 1 | 0 | 0 |
| conservation | C2 | every artefact is reachable from the rendered Artifacts page | 2 | 0 | 0 |
| conservation | C3 | every source guide page was migrated or explicitly retired | 16 | 0 | 0 |
| conservation | C4 | the source's narrative text is present somewhere in the target | 3 | 7 | 6 |
| conservation | C5 | menus lead somewhere, and every page is in a menu | 4 | 0 | 0 |
| conservation | C6 | each text passage landed on the page the page map promised | 11 | 0 | 0 |
| conservation | C7 | content the migration wrote is marked as such in the guide | 1 | 0 | 2 |
| fidelity | F1 | module identity is unchanged (id, canonical, version, licence, ...) | 9 | 0 | 0 |
| fidelity | F2 | dependency versions are pinned exactly as the source pinned them | 2 | 1 | 3 |
| fidelity | F3 | the licence is asserted from evidence, never defaulted | 2 | 0 | 0 |
| fidelity | F4 | no mechanical FSH conversion residue is left | 1 | 0 | 0 |
| provenance | P1 | the rendered site reports the template package it was built with | 1 | 0 | 0 |
| provenance | P2 | the module-template ref the skeleton came from is the latest release | 1 | 0 | 0 |
| provenance | P3 | the IG Publisher version matches the workflow pin | 1 | 0 | 1 |
| provenance | P4 | the source guide was pinned to a published version, not 'current' | 0 | 1 | 0 |
| provenance | P5 | ig.ini points at the IG resource the build actually writes | 1 | 0 | 0 |
| rendering | R1 | tables, tabs and images render with content, not empty | 2 | 0 | 1 |
| rendering | R2 | page header and footer metadata render correctly | 0 | 2 | 0 |
| rendering | R3 | a translated page really differs from the default language | 1 | 0 | 0 |
| rendering | R4 | no links point at template example artefacts that were deleted | 1 | 0 | 0 |
| rendering | R5 | every page has a title unit in the translation catalogue | 1 | 0 | 0 |
| log | L0 | a run log exists at all | 1 | 0 | 0 |
| log | L1 | every partial-success warning was acted on | 1 | 0 | 0 |
| log | L2 | every expected step actually wrote a log line | 21 | 0 | 4 |
| log | L3 | no identity contradiction is still open | 2 | 0 | 0 |
| log | L4 | the log's counts agree with what the tree holds | 1 | 0 | 2 |

### DIVERGIERT — each one a stop or a recorded decision

| id | Check | What it asks | Subject | Evidence | Next action | Auto-fixable |
|---|---|---|---|---|---|---|
| `C4-a0566d` | C4 | the source's narrative text is present somewhere in the target | BeschreibungModul-1.x.page.md | 1 of 15 PROSE runs of the source page are in no target page (first: ## Beschreibung Modul Das Erweiterungsmodul Symptome/klinisc…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-eb1659` | C4 | the source's narrative text is present somewhere in the target | BeschreibungvonSzenarienfrdieAnwendungderModule-1.x.page.md | 3 of 22 PROSE runs of the source page are in no target page (first: ## Beschreibung von Szenarien für die Anwendung der Module 1…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-196ae3` | C4 | the source's narrative text is present somewhere in the target | CapabilityStatement.page.md | 3 of 6 PROSE runs of the source page are in no target page (first: Um eine dezentrale Datenauswertung mittel des Deutsche Forsc…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-fc91ca` | C4 | the source's narrative text is present somewhere in the target | FHIR-Profile-1.x/Index.page.md | 2 of 5 PROSE runs of the source page are in no target page (first: Insbesondere sei hier die [International Patient Summary]( h…); 3 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-c61d78` | C4 | the source's narrative text is present somewhere in the target | MIIIGModulSymptom/Index.page.md | 4 of 15 PROSE runs of the source page are in no target page (first: # Kerndatensatz Modul Symptome/klinischer Phänotyp Die vorli…); 6 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-80da04` | C4 | the source's narrative text is present somewhere in the target | Observation-Condition-Relationship.page.md | 1 of 27 PROSE runs of the source page are in no target page (first: Der Inhalt dieser Seite basiert auf dem [HL7 FHIR Symptoms I…); 11 generated table row(s) excluded -- migration replaces that view with the artefact page (R1 checks THAT) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `C4-ef59ff` | C4 | the source's narrative text is present somewhere in the target | index.md | 1 of 1 PROSE runs of the source page are in no target page (first: # MII IG Modul Symptom Feel free to modify this index page w…) | map the missing text to a target page section, or record the loss in the report's content map | no |
| `F2-ce5cda` | F2 | dependency versions are pinned exactly as the source pinned them | de.medizininformatikinitiative.kerndatensatz.meta | target 2026.0.0  vs  source pin 2026.0.x (the source tree (--source)) | the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision | no |
| `P4-379bde` | P4 | the source guide was pinned to a published version, not 'current' | source guide version | the recorded guide URL carries ?version=current (run.log, action harvest-decision) -- the live, editable project, not a published version | re-harvest from a PUBLISHED version; `current` is not reproducible. Where the guide has no published version at all, that is the finding -- record it as such rather than leaving the pin unstated | no |
| `R2-48ed52` | R2 | page header and footer metadata render correctly | output/de id="ig-status" [{{] | on 1 page(s), e.g. searchform.html: Search {{title}} (Current Build) | rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) | no |
| `R2-d1da9a` | R2 | page header and footer metadata render correctly | output/en id="ig-status" [{{] | on 1 page(s), e.g. searchform.html: Search {{title}} (Current Build) | rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) | no |

### NICHT PRÜFBAR — not a pass; each needs a human

| id | Check | What it asks | Subject | Why not mechanisable | Who does what |
|---|---|---|---|---|---|
| `C4-f71df9` | C4 | the source's narrative text is present somewhere in the target | AnwendungsflleInformationsmodell-1.x/Index.page.md | the source page carries NO prose -- 0 generated table row(s) only | conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) |
| `C4-09b0b0` | C4 | the source's narrative text is present somewhere in the target | Condition-1.x.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 1 of 7 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-2b0948` | C4 | the source's narrative text is present somewhere in the target | Observation-1.x.page.md | the source page embeds an element-tree rendering (5 occurrences of the renderer's marker); 2 of 18 runs are in no target page, but prose and rendered view cannot be told apart in it | read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here |
| `C4-2c1219` | C4 | the source's narrative text is present somewhere in the target | Referenzen-1.x.page.md | the source page carries NO prose -- 0 generated table row(s) only | conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) |
| `C4-e758ee` | C4 | the source's narrative text is present somewhere in the target | TechnischeImplementierung-1.x/Index.page.md | the source page carries NO prose -- 0 generated table row(s) only | conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) |
| `C4-66cb7a` | C4 | the source's narrative text is present somewhere in the target | Terminologien-1.x.page.md | the source page carries NO prose -- 0 generated table row(s) only | conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) |
| `C7-3cfb4d` | C7 | content the migration wrote is marked as such in the guide | Condition-1.x.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `C7-da081c` | C7 | content the migration wrote is marked as such in the guide | Observation-1.x.page.md | C4 could not tell this page's prose from its embedded element-tree rendering, so whether anything was rewritten here is not measured | read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d |
| `F2-fd0e73` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.fhir.uv.crmi | target-only dependency 2.0.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `F2-047205` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.fhir.uv.extensions.r4 | target-only dependency 5.3.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `F2-8f9355` | F2 | dependency versions are pinned exactly as the source pinned them | hl7.terminology.r4 | target-only dependency 7.3.0 (not in the source) | confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition |
| `P3-c39a79` | P3 | the IG Publisher version matches the workflow pin | IG Publisher currency | the publisher reports itself out of date (current 2.3.3) | upgrading the publisher is a target-repository decision, not a migration one -- record it, do not act on it here |
| `R1-76f413` | R1 | tables, tabs and images render with content, not empty | source-versus-target rendering | no harvested source HTML (./migration-log/guide-harvest/html) and/or no page map | harvest with --keep-html and write the page map; without a source rendering, 'non-empty where non-empty in the source' has no reference |
| `L2-23b069` | L2 | every expected step actually wrote a log line | 2.1 package-identity | no line in the log; the step is conditional (no sushi-config.yaml in the source) | confirm the condition did not hold -- The published package is the only machine source for the dependency PINS (spec §2.1.1). |
| `L2-7163a2` | L2 | every expected step actually wrote a log line | 2.1 repo-identity | no line in the log; the step is conditional (no sushi-config.yaml in the source) | confirm the condition did not hold -- The repository's LICENSE text is the only machine source for `license` — the field that must never default (spec §2.2). |
| `L2-07bdbb` | L2 | every expected step actually wrote a log line | 5.1c simplifier-discover | no line in the log; the step is conditional (no rendered-IG URL was supplied) | confirm the condition did not hold -- Without the discovery chain the guide is not found, and a migration then ships the template's starter pages. |
| `L2-930ba2` | L2 | every expected step actually wrote a log line | 5.1d guide-harvest | no line in the log; the step is conditional (the narrative is not in the repository) | confirm the condition did not hold -- This is the step whose absence shipped the template's starter pages under a module's name. |
| `L4-106e61` | L4 | the log's counts agree with what the tree holds | conversion count | no `gofsh-convert … actual=` line in the log | shape B only; for shape A there is nothing to convert |
| `L4-f17740` | L4 | the log's counts agree with what the tree holds | page count | no harvested count in the log and/or no harvest manifest | harvest the guide (step 2c) where the narrative is not in the repo |

**Inputs:** target `.` · source `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/e5166a98-2808-4386-8dfd-02ed2236a07e/scratchpad/mig/source-pristine` · rendered `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/e5166a98-2808-4386-8dfd-02ed2236a07e/scratchpad/mig/source/output` · log `./migration-log/run.log`


The 11 DIVERGIERT rows are individually adjudicated in `migration-log/run.log`
(actions `c4-adjudications`, `prepost-delta-adjudication`, `re-version`): 7 × C4 (restored-verbatim
typos, recorded drops — SUSHI boilerplate index, TOC heading+directive, Simplifier resolve link —,
one recorded adaptation, and the known URL-in-run checker limitation), F2 meta pin (FIX-3),
P4 no published guide version exists (`?version=current` is the only reachable version — the
finding the spec expects for an unpinnable source; page snapshots preserved as evidence),
2 × R2 `searchform.html {{title}}` (publisher-own chrome, sibling-precedent).

## Protocol

`migration-log/run.log` is the append-only protocol: every step of the skill's expected-steps
manifest emitted its line (the verifier's L-layer reads it back as the second oracle; the four
NICHT-PRÜFBAR L2 rows are the conditional steps whose conditions did not hold: no shape-B
conversion, no identity recovery needed, no guide discovery, no harvest).

## Sign-off (GENERATED checklist)

### QA checklist (GENERATED by qa-checklist.py — do not retype; regenerate instead)

One checkbox per open obligation, from the machine ledgers. Ticking a box asserts the *named person* did the *named thing*. This list belongs inside `migration-log/migration-report.md` (section *Sign-off*): the detail behind every item id, the glossary for every code, term, gate owner and source shape, and the *How to re-run* commands all live there (and in the skill's `references/codes.md`). Pages named bare live in `input/pagecontent/`; names ending in `-intro` live in `input/intro-notes/`. 87 finding(s) verdicted IDENTISCH owe nobody anything and are not listed.

#### Gate A — identity (module maintainer, with TF-KDS)

- [ ] **F2-ce5cda** (F2 - dependency pins identical to the source's): the source pin is the evidence; a registry dist-tag is not. Restore the pin or make the bump a Gate-A decision — *fix it, or accept it with a named reason in the report*
- [ ] **F2 ×3** (F2 - dependency pins identical to the source's): confirm at Gate A that this is template machinery (hl7.fhir.uv.crmi is) and not an accidental addition — *do the named action so the check can run - this is not a pass*  <sub>ids: F2-fd0e73, F2-047205, F2-8f9355</sub>

#### Gate B — narrative (the module's clinical and technical authors)

- [ ] **C4 ×4** (C4 - the source's narrative text present somewhere): conservation of a generated view is not a text question; confirm the artefact page replaces it (R1) — *do the named action so the check can run - this is not a pass*  <sub>ids: C4-f71df9, C4-2c1219, C4-e758ee, C4-66cb7a</sub>
- [ ] **C4 ×7** (C4 - the source's narrative text present somewhere): map the missing text to a target page section, or record the loss in the report's content map — *fix it, or accept it with a named reason in the report*  <sub>ids: C4-a0566d, C4-eb1659, C4-196ae3, C4-fc91ca, C4-c61d78, C4-80da04, C4-ef59ff</sub>
- [ ] **C4 ×2** (C4 - the source's narrative text present somewhere): read the page against its target: migration replaces the VIEW with the artefact page (R1), so only its prose has to be conserved -- and only a human can say which is which here — *do the named action so the check can run - this is not a pass*  <sub>ids: C4-09b0b0, C4-2b0948</sub>
- [ ] **R2 ×2** (R2 - page header/footer metadata render correctly): rendered header/footer metadata defect -- qa.txt does not report it. Fix the metadata it renders (a jurisdiction code the template cannot resolve is the measured case) — *fix it, or accept it with a named reason in the report*  <sub>ids: R2-48ed52, R2-d1da9a</sub>
- [ ] **R1-76f413** (R1 - tables, tabs and images render with content): harvest with --keep-html and write the page map; without a source rendering, 'non-empty where non-empty in the source' has no reference — *do the named action so the check can run - this is not a pass*
- [ ] **`capability-statements`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`changes`**: review 2 migration-written block(s) (summary; default/en) — *keep, correct, or delete each one*
- [ ] **`examples`**: review 2 migration-written block(s) (summary; default/en) — *keep, correct, or delete each one*
- [ ] **`guidance`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`index`**: review 2 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`logical-models`**: review 4 migration-written block(s) (bridge; default/en) — *keep, correct, or delete each one*
- [ ] **`profiles`**: review 2 migration-written block(s) (summary; default/en) — *keep, correct, or delete each one*
- [ ] **`MIIIGModulSymptom/Referenzen-1.x.page.md` RETIRED**: [MAP-EDIT] intentionally blank in source ('Diese Seite wurde absichtlich leer gelassen') - nothing to merge; Referenzen concern re-routes to implementer-guidance if content ever appears — *confirm nothing in it is needed*
- [ ] **`MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Index.page.md` RETIRED**: [MAP-EDIT] folder index intentionally blank; its 3 children route to guidance/logical-models/uml-diagrams - the template's Guidance cluster replaces the folder grouping — *confirm nothing in it is needed*
- [ ] **`MIIIGModulSymptom/TechnischeImplementierung-1.x/Index.page.md` RETIRED**: [MAP-EDIT] folder index intentionally blank; its children route to profiles/capability-statements - template artifact cluster replaces the folder grouping — *confirm nothing in it is needed*
- [ ] **`MIIIGModulSymptom/TechnischeImplementierung-1.x/Terminologien-1.x.page.md` RETIRED**: [MAP-EDIT] intentionally blank in source; module defines 0 terminology artifacts (code-systems page itself is an M9 removal) — *confirm nothing in it is needed*
- [ ] **`ImplementationGuide-Common/**` RETIRED**: [MAP-EDIT] shared image tree: referenced images COPIED FLAT to input/images/ (17_Abbildung_Symptome_de.jpg, ig_bilder_UML.png, Warning.jpg); the tree itself retires with implementation-guides/ after Gate D — *confirm nothing in it is needed*

#### Gate C — language (a reviewer competent in both languages)

- [ ] **C7 ×2** (C7 - migration-written content is marked as such): read the page against its target (the same human action C4 asks for) and mark whatever the migration wrote per spec section 9d — *do the named action so the check can run - this is not a pass*  <sub>ids: C7-3cfb4d, C7-da081c</sub>
- [ ] **`translationinfo`**: review 2 migration-written block(s) (summary; default/en) — *keep, correct, or delete each one*

#### Gate D — release (TF-KDS / AG IOP / NSG; merging is what publishes)

- [ ] **P3-c39a79** (P3 - IG Publisher version matches the workflow pin): upgrading the publisher is a target-repository decision, not a migration one -- record it, do not act on it here — *do the named action so the check can run - this is not a pass*
- [ ] **P4-379bde** (P4 - source guide pinned to a published version): re-harvest from a PUBLISHED version; `current` is not reproducible. Where the guide has no published version at all, that is the finding -- record it as such rather than leaving the pin unstated — *fix it, or accept it with a named reason in the report*
- [ ] **L2-23b069** (L2 - every expected step wrote a log line): confirm the condition did not hold -- The published package is the only machine source for the dependency PINS (spec §2.1.1). — *do the named action so the check can run - this is not a pass*
- [ ] **L2-7163a2** (L2 - every expected step wrote a log line): confirm the condition did not hold -- The repository's LICENSE text is the only machine source for `license` — the field that must never default (spec §2.2). — *do the named action so the check can run - this is not a pass*
- [ ] **L2-07bdbb** (L2 - every expected step wrote a log line): confirm the condition did not hold -- Without the discovery chain the guide is not found, and a migration then ships the template's starter pages. — *do the named action so the check can run - this is not a pass*
- [ ] **L2-930ba2** (L2 - every expected step wrote a log line): confirm the condition did not hold -- This is the step whose absence shipped the template's starter pages under a module's name. — *do the named action so the check can run - this is not a pass*
- [ ] **L4-106e61** (L4 - the log's counts agree with the tree): shape B only; for shape A there is nothing to convert — *do the named action so the check can run - this is not a pass*
- [ ] **L4-f17740** (L4 - the log's counts agree with the tree): harvest the guide (step 2c) where the narrative is not in the repo — *do the named action so the check can run - this is not a pass*
- [ ] **pre/post delta**: `prepost-delta.md` shows no REGRESSION row, or every regression is explained in the report — *never merged unexplained*
- [ ] **CI**: the module's own checks are green on the migration branch
- [ ] **gates A–C**: signed by the named reviewers above
- [ ] **publication decision**: recorded with name and date — *merging is what publishes*

<!-- REPORT-AUTHORED ITEMS - the generator cannot enumerate judgement.
     Add ONE checkbox per DEC-n / REV-n / QA-n block of this report,
     under the gate that owns it, in the form:
     - [ ] **DEC-1** <its one-line what> - *<its next action>*  -->
