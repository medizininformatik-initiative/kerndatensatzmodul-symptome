# Kerndatensatzmodul Symptome / klinischer Phänotyp

FHIR-Spezifikation des Kerndatensatz-Moduls **Symptom/klinischer Phänotyp**
der Medizininformatik-Initiative (MII).

- **Canonical:** `https://www.medizininformatik-initiative.de/fhir/modul-symptom`
- **Package:** `de.medizininformatikinitiative.kerndatensatz.symptom`
- **Lizenz:** [CC BY 4.0](LICENSE) — Copyright © 2022+ TMF e. V.

Der Leitfaden wird seit 2026-08-31 mit dem **HL7 IG Publisher** auf Basis des
[MII-KDS-Modul-Templates](https://github.com/medizininformatik-initiative/mii-kds-module-template)
gebaut — **deutschsprachig führend** (Deutsch ist die Standardsprache, Englisch
die Übersetzung). Die frühere Simplifier-Projektstruktur ist in der
Git-Historie erhalten.

[![FHIR-Validierung](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome/actions/workflows/validation.yml/badge.svg)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome/actions/workflows/validation.yml)
[![IG-Vorschau](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome/actions/workflows/ig-publisher.yml/badge.svg)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome/actions/workflows/ig-publisher.yml)

## Veröffentlichter Implementierungsleitfaden

### Build-Versionen

- **Aktuelle Veröffentlichung**: https://medizininformatik-initiative.github.io/kerndatensatzmodul-symptome/
- **Entwicklungsstand (`master`)**: https://medizininformatik-initiative.github.io/kerndatensatzmodul-symptome/branches/master/

### Ballot-Release

- **Release 2027.0.0-ballot**: https://medizininformatik-initiative.github.io/kerndatensatzmodul-symptome/2027.0.0-ballot/

### Frühere Releases (Simplifier)

- **Releases bis 2024.0.0-ballot**: https://simplifier.net/guide/mii-ig-modul-symptom-2024-de

Alle Versionen mit Status und Datum: [Versionshistorie](https://medizininformatik-initiative.github.io/kerndatensatzmodul-symptome/history.html).
Versionsübersicht aller Module: [Kerndatensatz-Module im Wiki](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/%C3%9Cbersicht-%C3%BCber-Versionen-der-Kerndatensatz%E2%80%90Module).

## Build

Der Leitfaden wird aus diesem Repository mit SUSHI + HL7 IG Publisher gebaut:

```sh
npx fsh-sushi .            # FSH → FHIR-Ressourcen (fsh-generated/, nicht versioniert)
# IG Publisher (Version/Pins siehe .github/workflows/ig-publisher.yml):
java -jar publisher.jar -ig ig.ini
```

CI baut jeden Branch und veröffentlicht eine Vorschau unter
`https://medizininformatik-initiative.github.io/kerndatensatzmodul-symptome/branches/<branch>/` (Deutsch unter `/`, Englisch unter `/en/`).

Die generierten FHIR-Ressourcen (`fsh-generated/`) werden nicht auf `master`
eingecheckt; `publish-fsh-generated.yml` legt sie bei jedem Push auf `master`
in den Branch [`fsh-generated`](../../tree/fsh-generated) ab.

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
| `docs/` | Anleitungen und Rezepte des Modul-Templates |
| `scripts/`, `tests/` | Konventions-Checks und Validierungs-Testfälle |

## Ansprechpartner

- Martin Boeker (Klinikum rechts der Isar, TU München) — Modulverantwortlicher
- Julian Saß (Berlin Institute of Health at Charité)
- Karoline Buckow (TMF e. V.)

Fragen: [chat.fhir.org](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative)
Stream `german/mi-initiative` · Anmerkungen gern als GitHub-Issue.