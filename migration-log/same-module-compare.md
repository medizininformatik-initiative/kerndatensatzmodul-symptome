# IG-Vergleich (2 IGs)

_Same-Module-Vergleich: alle Eingaben tragen dieselbe packageId (`de.medizininformatikinitiative.kerndatensatz.symptom`) — der Report prüft **Migrations-/Zustandstreue** statt Portfolio-Umfang. Referenz ist die ERSTE Eingabe._

## Same-Module-Verifikation

_Migrations-/Zustandstreue eines EINEN Moduls über mehrere Stände: Identitätsfelder, Artefakt-Satz und Canonical-URLs müssen identisch sein; die Narrative-Tabelle zeigt Seiten/Wörter je Sprach-Ebene (verbleibende Plattform-Quellseiten getrennt), die Wort-Abdeckung ist ein heuristischer Vollständigkeits-Indikator. Alles gezählt — keine Prognose._

<div align="center">

| Identitätsfeld | symptome-source-master | symptome-migrated | Befund |
|---|---|---|---|
| id | mii-ig-symptom | mii-ig-symptom | ✓ identisch |
| canonical | https://www.medizininformatik-initiative.de/fhir/modul-symptom | https://www.medizininformatik-initiative.de/fhir/modul-symptom | ✓ identisch |
| packageId | de.medizininformatikinitiative.kerndatensatz.symptom | de.medizininformatikinitiative.kerndatensatz.symptom | ✓ identisch |
| name | MII_IG_Symptom | MII_IG_Symptom | ✓ identisch |
| title | MII IG Symptom | MII IG Symptom | ✓ identisch |
| version | 2026.0.0-rc.1 | 2027.0.0-ballot.rc1 | ⚠ DIVERGIERT |
| status | active | active | ✓ identisch |
| fhirVersion | 4.0.1 | 4.0.1 | ✓ identisch |
| license | CC-BY-4.0 | CC-BY-4.0 | ✓ identisch |
| publisher | Medizininformatik Initiative | Medizininformatik Initiative | ✓ identisch |

</div>

### Narrative je Sprach-Ebene (Seiten / Wörter)

<div align="center">

| Ebene | symptome-source-master | symptome-migrated |
|---|---|---|
| Default-Sprache (input/pagecontent) | 1 / 17 | 14 / 5359 |
| Übersetzungen (input/translations) | 0 / 0 | 14 / 5787 |
| Plattform-Quellseiten (verbleibend) | 15 / 3115 | 15 / 3115 |
| sonstige | 0 / 0 | 2 / 1677 |

</div>

_Wort-Abdeckung relativ zur Referenz (Heuristik; ein bilingualer Stand überschreitet 100 %):_  **symptome-migrated: Default 171 % · Übersetzungen 185 %**

### Befund

- Identität: **⚠ 1 Feld(er) DIVERGIEREN**
- Publizierter Artefakt-Satz (Kategorie+Name): **IDENTISCH** (12 Artefakte)
- Canonical-URLs der Artefakte: ✓ identisch (4 URLs)
_Interne FSH-Konstrukte (informativ, kein Befund): symptome-migrated: 0 fehlend, 41 zusätzlich (z.B. Template-Rulesets)._

## Kennzahlen (je IG)

<div align="center">

| Metrik | symptome-source-master | symptome-migrated |
|---|---|---|
| Artefakte gesamt | 12 | 12 |
| Profile | 3 | 3 |
| ValueSets | 0 | 0 |
| CodeSystems | 0 | 0 |
| Beispiele | 7 | 7 |
| Narrative-Inhalts-Seiten | 11 | 25 |
| Wörter gesamt | 3068 | 8427 |
| Plattform-Direktiven | 46 | 46 |
| Doppelte Inhaltsblöcke | 1 | 27 |
| Nicht referenzierte Bilder | 1 | 2 |
| Dependencies (floating) | 3 (1) | 6 (0) |
| Ø Wörter / Seite | 278,9 | 337,1 |
| Median Wörter / Seite | 279 | 311 |
| Hersteller-Lock-in /100 | 50 | 22 |
| Standard-Terminologie % | 100 | 100 |
| Bus-Faktor % (Top-Autor) | 56 | 45 |

</div>

_Artefakte mit identischem Namen in mehreren IGs deuten auf Konsolidierungspotenzial (gemeinsames Basis-Modul) hin; senkt den Gesamt-Wartungsaufwand._

## Normalisierte Kennzahlen (fairer Vergleich)

<div align="center">

| Metrik | symptome-source-master | symptome-migrated |
|---|---|---|
| Direktiven je Seite | 4.18 | 1.84 |
| Beispiele je Profil | 2.33 | 2.33 |

</div>

## Umfang: Artefakte vs. Plattform-Direktiven

<div align="center">

```mermaid
%%{init: {'theme':'base','themeVariables':{"quadrant1Fill": "#4E79A7", "quadrant2Fill": "#F28E2B", "quadrant3Fill": "#59A14F", "quadrant4Fill": "#E15759", "quadrant1TextFill": "#FFFFFF", "quadrant2TextFill": "#FFFFFF", "quadrant3TextFill": "#FFFFFF", "quadrant4TextFill": "#FFFFFF", "quadrantPointFill": "#1A1A1A", "quadrantPointTextFill": "#1A1A1A", "quadrantXAxisTextFill": "#1A1A1A", "quadrantYAxisTextFill": "#1A1A1A", "quadrantTitleFill": "#1A1A1A"}}}%%
quadrantChart
    title Artefakte vs. Direktiven
    x-axis Wenige_Artefakte --> Viele_Artefakte
    y-axis Wenige_Direktiven --> Viele_Direktiven
    quadrant-1 viele & direktivenlastig
    quadrant-2 wenige & direktivenlastig
    quadrant-3 wenige & direktivenarm
    quadrant-4 viele & direktivenarm
    "symptome-source-master": [1.0, 1.0]
    "symptome-migrated": [1.0, 1.0]
```

</div>

# Anhang: Methodik & Metrik-Erklärung

_Beschreibung jeder im Report verwendeten Kennzahl - was sie misst und wie sie ermittelt wird - zur Nachvollziehbarkeit._

<div align="center">

| Kennzahl | Was es misst | Herkunft / Berechnung |
|---|---|---|
| Artefakte (publiziert) | Anzahl der vom IG bereitgestellten FHIR-Konformitätsressourcen je Typ (Profile, Extensions, ValueSets, CodeSystems, Logical Models, CapabilityStatements, Beispiele). | Zählung der Deklarationen in input/fsh (bzw. generierten Ressourcen); interne FSH-Konstrukte (RuleSets/Invarianten/Mappings) separat, nicht im Total. |
| Plattform-/Simplifier-Direktiven | Vorkommen plattformspezifischer Platzhalter in den Erklärseiten, die ein generischer IG Publisher nicht versteht. | Mustererkennung je Direktiven-Typ in den Narrative-Seiten; nicht abgedeckte -> UNBEKANNT. |
| Linguistik (Wörter/Seite) | Textumfang der Inhalts-Seiten als Durchschnitt, Median und Extremwerte - Indikator für Dokumentations- und Übersetzungsumfang. | Wortzählung je Inhalts-Seite (ohne Stubs). |
| Inhaltliche Dopplungen | Identische Textabsätze (>= 12 Wörter) bzw. identische Seiten - Hinweis auf Redundanz/Aufräumpotenzial. | Hash-Vergleich normalisierter Absätze/Dateien. |
| Repo-Hygiene (ungenutzte Dateien) | Bilder/Beispiele, die in keiner Erklärseite referenziert sind (Dead-Code-Analogie). | Heuristik: Datei-/Artefaktname kommt im Seitentext nicht vor (kein Beweis für Ungenutztheit). |
| Reife-Komponenten | Status, Doku-Vollständigkeit (Inhalt vs. Stubs), Beispiel-Abdeckung der Profile und Governance-Merkmale — nebeneinander, bewusst nicht zu einem Score verdichtet. | Gezählt/abgeleitet aus sushi-config, Narrative, artifacts_detail und Repo-Dateien; die Freigabe-Einordnung bleibt menschlich. |
| Hersteller-Lock-in | Bindung an die Quellplattform durch proprietäre Direktiven (0-100, Band). | Grobe Heuristik aus Direktiven je Seite. |
| Standard-Terminologie-Anteil | Anteil standardisierter Terminologie (SNOMED/LOINC/ICD/UCUM) gegenüber Eigen-Terminologie. | Grobe Heuristik aus Textvorkommen der Standardsysteme vs. Anzahl lokaler CodeSystems. |
| Wiederverwendung externer Profile | Anteil der Profil-Parents, die auf externen Basisbausteinen statt eigenem Material beruhen. | FSH Parent:-Referenzen; abstrakte LM-Basistypen (Element/Base/...) ausgeschlossen. |
| FHIR-Versions-Aktualität | Wie aktuell die FHIR-Basis ist (R4/R4B/R5) - Zukunftssicherheit. | fhirVersion aus sushi-config, gegen bekannte Versionslinie eingeordnet. |
| Pflege-Kadenz | Lebendigkeit der Pflege (Commits/Jahr, Tage seit letztem Commit). | Git-Historie des analysierten Repos. Erfordert vollständige Git-Historie: bei einem shallow clone (jeder URL-Input wird shallow geklont) nicht ermittelbar und daher null. |
| Bus-Faktor (Wissenskonzentration) | Schlüsselpersonen-Risiko: Anteil des Top-Autors an allen Commits. | Git-Historie, Autoren nach E-Mail gruppiert (Alias-robust). Erfordert vollständige Git-Historie: bei einem shallow clone (jeder URL-Input wird shallow geklont) nicht ermittelbar und daher null. |
| Terminologie-Lizenz | Lizenz-/IP-Risiko gebundener Terminologien (z.B. SNOMED CT lizenzpflichtig). | Erkennung der Standardsysteme im FSH + hinterlegte Lizenzeinstufung. |
| Unterdrückte Warnungen | Risiko, dass ausgeblendete QA-Meldungen echte Fehler verbergen (breit/Wildcard vs. eng). | Klassifikation der Einträge in input/ignoreWarnings.txt. |
| Datenschutz-Substanz | Ob die Datenschutz-Seite substanziell ist und ob Beispiele PII-artige Daten enthalten. | Wortzahl der security-privacy-Seite + Heuristik (birthDate/name) in Beispielen. |
| Breaking-Change-Risiko | Kompatibilitätsbruch gegenüber der publizierten Vorversion. | Nur per Build/Vorversions-Diff ermittelbar - im statischen Modus nicht erhoben (null). |
| Statisch vs. Build | Erhebungsmodus jeder Kennzahl. | static = nur Quelldateien/Git; build = erfordert IG-Publisher-Lauf (qa.json); extern = Registry/Netz. Nicht statisch erhebbare Größen bleiben null und sind so markiert. |

</div>
