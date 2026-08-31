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
