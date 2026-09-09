# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (symptome-source-master, d4ef9de, 2026-08-31T19:13:44Z) |
| post | postflight-analysis.json (symptome-migrated, a529953, 2026-08-31T21:37:36Z) |

Verdicts: **unchanged** 27 · **improved** 1 · **expected-change** 4 · **REGRESSION** 2 · **not-measurable** 0.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`identity.version`**: `2026.0.0-rc.1` → `2027.0.0-ballot.rc1` — machine-identity field changed -- the migrated package is no longer the same package
- **`licence.contradictory`**: `false` → `true` — the target now declares CONTRADICTORY licences (the target declares: attribution4.0international, cc-by-4.0, creativecommons) -- one file will be read as the licence by someone, and it will be the wrong one

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | mii-ig-symptom | mii-ig-symptom | unchanged |  |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/modul-symptom | https://www.medizininformatik-initiative.de/fhir/modul-symptom | unchanged |  |
| `identity.packageId` | de.medizininformatikinitiative.kerndatensatz.symptom | de.medizininformatikinitiative.kerndatensatz.symptom | unchanged |  |
| `identity.name` | MII_IG_Symptom | MII_IG_Symptom | unchanged |  |
| `identity.version` | 2026.0.0-rc.1 | 2027.0.0-ballot.rc1 | **REGRESSION** | machine-identity field changed -- the migrated package is no longer the same package |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.license` | CC-BY-4.0 | CC-BY-4.0 | unchanged |  |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | Medizininformatik Initiative | Medizininformatik Initiative | unchanged |  |
| `identity.status` | active | active | unchanged |  |
| `identity.title` | MII IG Symptom | MII IG Symptom | unchanged |  |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | false | true | **REGRESSION** | the target now declares CONTRADICTORY licences (the target declares: attribution4.0international, cc-by-4.0, creativecommons) -- one file will be read as the licence by someone, and it will be the wrong one |
| `dependency_health.injection_risk` | true | false | improved | the dependency-injection risk the source carried is cleared |
| `narrative_sources.dual_source` | true | true | unchanged |  |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 3 | 3 | unchanged |  |
| `artifacts.extensions` | 0 | 0 | unchanged |  |
| `artifacts.valuesets` | 0 | 0 | unchanged |  |
| `artifacts.codesystems` | 0 | 0 | unchanged |  |
| `artifacts.logicals` | 1 | 1 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 0 | 0 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 7 | 7 | unchanged |  |
| `artifacts.rulesets` | 9 | 50 | expected-change | the count rose by 41 -- artefacts added by the migration; the report names what and why |
| `artifacts.invariants` | 0 | 0 | unchanged |  |
| `artifacts.mappings` | 1 | 1 | unchanged |  |
| `artifacts.other_total` | 0 | 0 | unchanged |  |
| `artifacts.total` | 12 | 12 | unchanged |  |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 11 | 25 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 2 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 14 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 46 | 46 | unchanged |  |

