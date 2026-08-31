# Änderungshistorie - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Änderungshistorie**

## Änderungshistorie

Diese Seite hält die Änderungen zwischen den veröffentlichten Versionen des Moduls **Symptom** fest, die neueste Version zuerst. Sie folgt [Keep a Changelog](https://keepachangelog.com/de/1.1.0/) und dem KDS-CalVer-Schema, das die Seite [Versionierung](version-history.md) beschreibt.

Jede Version erhält einen eigenen Abschnitt mit dem Release-Datum und den nach Kategorien gruppierten Änderungen:

* **Hinzugefügt** — neue Profile, Extensions, ValueSets, Suchparameter, Seiten.
* **Geändert** — geänderte Einschränkungen, Bindings, Hinweise oder Dokumentation.
* **Abgekündigt** — Artefakte, die noch existieren, aber nicht mehr genutzt werden sollen.
* **Entfernt** — zurückgezogene Artefakte.
* **Behoben** — Korrekturen von Fehlern.
* **Sicherheit** — Änderungen mit Auswirkung auf Sicherheit oder Datenschutz.

Kategorien ohne Inhalt werden weggelassen. Geht eine Änderung auf ein Issue oder einen Pull-Request zurück, wird darauf verlinkt.

##### Breaking Changes MÜSSEN berichtet und erläutert werden

Ein Versionsabschnitt mit einer Breaking Change ist erst vollständig, wenn er ausdrücklich und in diesem Changelog beantwortet:

* **Was genau sich geändert hat** zwischen den beiden Versionen — das Artefakt, das Element, die alte und die neue Einschränkung (nicht nur „Profil X wurde überarbeitet“).
* **Was das für bestehende Daten bedeutet:** Validieren Daten, die der Vorversion entsprachen, weiterhin gegen die neue Version? Falls nein: welche Ressourcen und Elemente sind betroffen, und wie zeigt sich der Fehler?
* **Was Implementierende tun sollten:** die Empfehlung der Autorinnen und Autoren zur Migration bestehender Daten auf die neue Version — Transformationsschritte, Standardwerte, Umkodierungs-Hinweise — oder die ausdrückliche Aussage, dass kein Migrationspfad bereitgestellt wird, und warum.

**Was als Breaking Change zählt** — behandeln Sie eine Änderung als Breaking Change, wenn sie eines der Folgenden tut, auch wenn sie klein wirkt: eine Kardinalität verschärft (`0..*` → `1..1`), eine Binding-Stärke erhöht (example → required), Codes aus einem required-ValueSet entfernt, ein Element oder einen Slice entfernt oder umbenennt, einen Typ einengt, eine Invariante oder eine Must-Support-Pflicht hinzufügt oder eine kanonische URL ändert. Im Zweifel: als Breaking Change berichten.

**Breaking für wen:** benennen Sie beide Perspektiven — *gespeicherte Daten* (Instanzen, die gegen die alte Version valide sind) und *Implementierungen* (Clients und Server, die dagegen gebaut wurden; ein entfernter Suchparameter bricht Implementierungen, während jede gespeicherte Instanz valide bleibt).

**Die Versionsnummer warnt niemanden.** Das KDS-Kalender-Versionsschema (`JJJJ.n.n`) trägt kein Major-Signal wie SemVer — dieser Changelog-Abschnitt ist die *einzige* Warnung, die Lesende bekommen.

**Verlinken Sie das technische Delta.** Ab der zweiten formalen Publikation aktivieren Sie den Versionsvergleich des IG Publishers (`version-comparison` in `sushi-config.yaml` — siehe die Seite [Versionierung](version-history.md) zur Einrichtung und ihren Voraussetzungen); er veröffentlicht einen maschinell erzeugten Vergleich unter `comparison-v<Vorversion>/index.html`. Verlinken Sie ihn aus dem Versionsabschnitt, damit die Erläuterung und der technische Diff nebeneinanderstehen.

Kennzeichnen Sie solche Einträge deutlich (zum Beispiel mit dem Präfix **BREAKING:**), damit sie beim Überfliegen des Abschnitts nicht übersehen werden können.

-------

> **Written during migration - review before release.** Die folgenden Einträge wurden bei der Migration aus der Git- und Registry-Historie des Moduls rekonstruiert (v2026-Zyklus Jan–Feb 2026, Ballot-Paket 2023-11-17).

#### Version 2027.0.0-ballot.rc1

**Datum:** 2026-08-31 (Arbeitsstand für die Ballot-Linie 2027; als Paket nicht veröffentlicht. Der v2026-Zyklus endete beim ungetaggten Stand 2026.0.0-rc.1; seine Änderungen sind unten aufgeführt.)

##### Geändert

* **Migration des Implementierungsleitfadens von Simplifier auf den HL7 IG Publisher** mit dem MII-KDS-Modul-Template (2026-08-31; Details im Migrationsbericht des zugehörigen Pull Requests).
* Kanonische URL des Moduls von `.../fhir/ext/modul-symptom` auf `.../fhir/modul-symptom` umgestellt (v2026-Zyklus).
* Beide Profile (`MII_PR_Symptom_Observation`, `MII_PR_Symptom_Condition`) als **abstrakt** markiert.
* Deutsche Basisprofile von 1.4.0 auf 1.5.4 angehoben; `hl7.fhir.eu.base` (EU-Core-BodyStructure) ergänzt.
* Beispiel `mii-exa-symptom-chestpain` ergänzt.

##### Entfernt

* Glasgow-Coma-Score-Profil samt ValueSets und Beispiel (auskommentiert im FSH-Quelltext erhalten).

#### Version 2024.0.0-ballot

**Datum:** 2023-11-17

##### Hinzugefügt

* Ballot-Erstveröffentlichung des Moduls **Symptom/klinischer Phänotyp** (Simplifier-Paket `de.medizininformatikinitiative.kerndatensatz.symptom` 2024.0.0-ballot).

