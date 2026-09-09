# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/e5166a98-2808-4386-8dfd-02ed2236a07e/scratchpad/mig/source-pristine` |
| target repo | `.` |
| routing table | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/e5166a98-2808-4386-8dfd-02ed2236a07e/scratchpad/recon/agent-skills-v0.25.0/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/private/tmp/claude-503/-Users-marcel-Development-cross-hub-patientportal/e5166a98-2808-4386-8dfd-02ed2236a07e/scratchpad/mig/source/migration-log/preflight-analysis.json` |
| artefact census | fsh-generated/resources (7 resources; cross-checked by Gate 0's generated_crosscheck) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-08-31T19:39:33Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (b) the Simplifier guide tree `implementation-guides/ImplementationGuide-2024.x-DE`, walked from its `toc.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `ImplementationGuide-2024.x-DE` | MII IG Symptom v2026 | 2024.x | 2026.0.0 | DE | 15 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |
| `ImplementationGuide-Common` | - | - | - | - | 0 | unrecognized directory - needs a retain/retire proposal (5.1a #4) |

**Chosen: `ImplementationGuide-2024.x-DE`** - highest version overall - sushi-config states no `language:`, so the language criterion of spec 5.1a #1 could not be applied: ImplementationGuide-2024.x-DE (directory version 2024.x, guide.yaml version 2026.0.0).

The module's narrative language read from `sushi-config.yaml` `language:` is **not stated**.

- sushi-config states no `language:`; the narrative language could not be determined, so only the version decided.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

### 1.1 Depth histogram

Walked from `implementation-guides/ImplementationGuide-2024.x-DE/toc.yaml`: an entry whose `filename` ends in `.page.md` is a page, any other `filename` is a sub-directory holding its own `toc.yaml`. A sub-directory is a LEVEL, not a page, so every page of one directory shares one level (that is how Simplifier renders a folder), and the levels are shifted so the shallowest page sits at level 1 - this guide's root `toc.yaml` lists only a folder, which adds no page level. Routing still needs a page parent, so each directory is represented by its `Index.page.md` and its remaining pages plus its sub-folders' representatives become that page's children; a parent may therefore share its children's level.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 4 | 27% |
| 2 | 7 | 47% |
| 3 | 4 | 27% |
| **total** | **15** | 100% |

Maximum depth used: **3**. Total words across the 15 source pages: **3005**. Pages in `input/pagecontent/`: **1**.

### 1.2 Parent-child tree

```
`- Index  `MIIIGModulSymptom/Index.page.md`
   |- Beschreibung Modul  `MIIIGModulSymptom/BeschreibungModul-1.x.page.md`
   |- Kontext im Gesamtprojekt / Bezüge zu anderen Modulen  `MIIIGModulSymptom/KontextimGesamtprojektBezgezuanderenModulen-1.x.page.md`
   |- Referenzen  `MIIIGModulSymptom/Referenzen-1.x.page.md`
   |- Index  `MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Index.page.md`
   |  |- Beschreibung von Szenarien für die Anwendung der Module  `MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/BeschreibungvonSzenarienfrdieAnwendungderModule-1.x.page.md`
   |  |- Datensätze inkl. Beschreibungen  `MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Datenstzeinkl.Beschreibungen-1.x.page.md`
   |  `- UML  `MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/UML-1.x.page.md`
   `- Index  `MIIIGModulSymptom/TechnischeImplementierung-1.x/Index.page.md`
      |- CapabilityStatement  `MIIIGModulSymptom/TechnischeImplementierung-1.x/CapabilityStatement.page.md`
      |- Terminologien  `MIIIGModulSymptom/TechnischeImplementierung-1.x/Terminologien-1.x.page.md`
      `- Index  `MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Index.page.md`
         |- Zusammenhang  `MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-Condition-Relationship.page.md`
         |- Observation  `MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-1.x.page.md`
         `- Condition  `MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Condition-1.x.page.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-mii-ig-symptom.md` | 253 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 31 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 529 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 131 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 299 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 42 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 115 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 120 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 28 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 435 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 33 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 1919 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `operations.md` | 96 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `profiles.md` | 67 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `rendering-artifacts.md` | 3844 | 0 | 8 | 3 | 0 | 0 | 0 | 0 | **TRIPS** - 3844 words > 2500 |
| `researcher-guidance.md` | 99 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `search-parameters.md` | 97 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 396 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 70 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 42 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 159 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 503 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

### 2.1 Pages that trip the size gate

- **`rendering-artifacts.md`** - 3844 words > 2500.
  - rule 5: re-run routing preferring branches 1 and 2, or split.

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 26 | 33 | 7 |
| widest dropdown (Artefakte) | 11 | 10 | -1 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Anleitung | 5 | 5 |
| Konformität | 5 | 5 |
| Artefakte | 11 | -1 |
| Metadaten | 2 | 8 |

After the proposals in section 4: total 7 free, top level 1 free, freest dropdown Metadaten (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `MIIIGModulSymptom/Index.page.md` | 1 | 5 | 298 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `MIIIGModulSymptom/BeschreibungModul-1.x.page.md` | 1 | 0 | 231 | 3 merge into agreed page | index.md | semantic match 'beschreibungmodul' -> index (routing-table) |
| 3 | `MIIIGModulSymptom/KontextimGesamtprojektBezgezuanderenModulen-1.x.page.md` | 1 | 0 | 457 | 3 merge into agreed page | implementer-guidance.md | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) |
| 4 | `MIIIGModulSymptom/Referenzen-1.x.page.md` | 1 | 0 | 11 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 5 | `MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Index.page.md` | 2 | 3 | 13 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulSymptom/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 6 | `MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/BeschreibungvonSzenarienfrdieAnwendungderModule-1.x.page.md` | 2 | 0 | 349 | 3 merge into agreed page | guidance.md | semantic match 'szenarien' -> guidance (routing-table) |
| 7 | `MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Datenstzeinkl.Beschreibungen-1.x.page.md` | 2 | 0 | 104 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 8 | `MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/UML-1.x.page.md` | 2 | 0 | 88 | 3 merge into agreed page | uml-diagrams.md | semantic match 'uml' -> uml-diagrams (routing-table) |
| 9 | `MIIIGModulSymptom/TechnischeImplementierung-1.x/Index.page.md` | 2 | 3 | 12 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulSymptom/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 10 | `MIIIGModulSymptom/TechnischeImplementierung-1.x/CapabilityStatement.page.md` | 2 | 0 | 93 | 3 merge into agreed page | capability-statements.md | semantic match 'capabilitystatement' -> capability-statements (routing-table) |
| 11 | `MIIIGModulSymptom/TechnischeImplementierung-1.x/Terminologien-1.x.page.md` | 2 | 0 | 11 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 12 | `MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Index.page.md` | 3 | 3 | 113 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 3 children, 2 anchoring distinct artefacts (StructureDefinition) |
| 13 | `MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-Condition-Relationship.page.md` | 3 | 0 | 565 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Index.page.md (no anchor of its own) |
| 14 | `MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-1.x.page.md` | 3 | 0 | 396 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-symptom-observation-intro.md | tokens match on mii-pr-symptom-observation (1 candidate artefact) |
| 15 | `MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Condition-1.x.page.md` | 3 | 0 | 264 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-symptom-condition-intro.md | tokens match on mii-pr-symptom-condition (1 candidate artefact) |

Branch totals: 1 intro-note = 2, 2 section on index page = 2, 3 merge into agreed page = 8, 4 own page = 3.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Index.page.md - nested under MIIIGModulSymptom/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Datenstzeinkl.Beschreibungen-1.x.page.md - nested under MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulSymptom/TechnischeImplementierung-1.x/Index.page.md - nested under MIIIGModulSymptom/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

Size-gate trips (rule 5) needing a routing re-run or a split:

- `rendering-artifacts.md` - 3844 words > 2500.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	MIIIGModulSymptom/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulSymptom/BeschreibungModul-1.x.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulSymptom/KontextimGesamtprojektBezgezuanderenModulen-1.x.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulSymptom/Referenzen-1.x.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulSymptom/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/BeschreibungvonSzenarienfrdieAnwendungderModule-1.x.page.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Datenstzeinkl.Beschreibungen-1.x.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulSymptom/AnwendungsflleInformationsmodell-1.x/UML-1.x.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulSymptom/TechnischeImplementierung-1.x/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulSymptom/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulSymptom/TechnischeImplementierung-1.x/CapabilityStatement.page.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	MIIIGModulSymptom/TechnischeImplementierung-1.x/Terminologien-1.x.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 2 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-Condition-Relationship.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-1.x.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-symptom-observation-intro.md	tokens match on mii-pr-symptom-observation (1 candidate artefact)
5.4c page-routing	MIIIGModulSymptom/TechnischeImplementierung-1.x/FHIR-Profile-1.x/Condition-1.x.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-symptom-condition-intro.md	tokens match on mii-pr-symptom-condition (1 candidate artefact)
5.4c page-routing	index.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	map rows=17 retired=1 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **17** total - 16 routed source pages (15 from the primary tree, 1 union pages outside it) and 1 RETIRED guide-tree summary row(s).

### 7.1 Union pages outside the primary tree

Pages of the universe the primary page tree does not list - routed by the same passes, after it (menu budget included).

| Source page | Branch | Target | Measurement |
| --- | --- | --- | --- |
| `index.md` | 3 | `input/pagecontent/index.md` | agreed page named 'index' exists in the target <br>_(union page: in input/pagecontent but not in the primary page tree)_ |

### 7.2 RETIRED guide trees

| Tree | Reason |
| --- | --- |
| `ImplementationGuide-Common/**` | unrecognized directory - needs a retain/retire proposal (5.1a #4) |

### 7.3 Coverage validation

Universe re-derived from disk: **16** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 16 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `search-parameters.md` | `searchparameters` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `code-systems.md` | `codesystems` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

_The census reports no `other`-bucket artefact types._

Declared-vs-generated mismatches Gate 0 reports (2) - the GENERATED counts above are the authoritative ones: `examples` 7->3, `profiles` 3->2.

