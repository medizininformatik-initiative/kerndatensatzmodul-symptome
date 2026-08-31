# Kerndatensatzmodul Symptome / klinischer Phänotyp

FHIR-Spezifikation des Kerndatensatz-Moduls **Symptom/klinischer Phänotyp**
der Medizininformatik-Initiative (MII).

- **Canonical:** `https://www.medizininformatik-initiative.de/fhir/modul-symptom`
- **Package:** `de.medizininformatikinitiative.kerndatensatz.symptom`
- **Lizenz:** [CC BY 4.0](LICENSE) — Copyright © 2022+ TMF e. V.

> **Hinweis zur Migration (2026-08-31):** Dieser Implementierungsleitfaden
> wurde von Simplifier auf den **HL7 IG Publisher** mit dem
> [MII-KDS-Modul-Template](https://github.com/medizininformatik-initiative/mii-kds-module-template)
> (v0.13.2) migriert — **deutschsprachig führend** (Deutsch ist die
> Standardsprache, Englisch die Übersetzung). Der vollständige
> Migrationsbericht liegt im zugehörigen Pull Request; die Evidenz in
> [`migration-log/`](migration-log/). Die bisherige Simplifier-Projektstruktur
> (`implementation-guides/`, altes CI) bleibt bis zur Abnahme (Gate D)
> unangetastet im Repository. Das alte README:
> [README.simplifier-legacy.md](README.simplifier-legacy.md).

## Leitfaden

Der Leitfaden wird aus diesem Repository mit SUSHI + HL7 IG Publisher gebaut:

```sh
npx fsh-sushi .            # FSH → FHIR-Ressourcen (fsh-generated/)
# IG Publisher (Version/Pins siehe .github/workflows/ig-publisher.yml):
java -jar publisher.jar -ig ig.ini
```

CI baut jeden Branch und veröffentlicht eine Vorschau unter
`gh-pages/branches/<branch>/` (Deutsch unter `/`, Englisch unter `/en/`).

Die bisher veröffentlichte Fassung:
[MII IG Symptom v2026 auf Simplifier](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de?version=current).

## Struktur

| Pfad | Inhalt |
| --- | --- |
| `sushi-config.yaml` | Metadaten des Moduls (Identität, Abhängigkeiten, Seitenbaum) |
| `input/fsh/` | Profile, Logical Model, CapabilityStatement, Beispiele (FHIR Shorthand) |
| `input/pagecontent/` | Die narrativen Seiten — **Deutsch, die Standardsprache** |
| `input/translations/en/` | Englische Übersetzungen (Seiten, Menü, Seitentitel-`.po`) |
| `input/intro-notes/` | Einführungstexte, die auf den Artefakt-Seiten rendern |
| `input/includes/menu.xml` | Navigationsmenü (eine Datei je Sprache) |
| `qc/custom.rules.yaml`, `advisor.json` | Regeln/Toleranzen der MII-Validierung |
| `migration-log/` | Evidenz der Template-Migration (run.log, Ledger, Bericht) |
| `implementation-guides/` | **Legacy:** Simplifier-Leitfaden-Quelle (Rückbau nach Gate D) |
| `docs/` | Anleitungen und Rezepte des Modul-Templates |
| `scripts/`, `tests/` | Konventions-Checks und Validierungs-Testfälle |

## Ansprechpartner

- Martin Boeker (Klinikum rechts der Isar, TU München) — Modulverantwortlicher
- Julian Saß (Berlin Institute of Health at Charité)
- Karoline Buckow (TMF e. V.)

Fragen: [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative)
Stream `german/mi-initiative` · Anmerkungen gern als GitHub-Issue.