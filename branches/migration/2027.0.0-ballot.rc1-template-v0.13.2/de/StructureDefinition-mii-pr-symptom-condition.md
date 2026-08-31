# MII_PR_Symptom_Condition - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII_PR_Symptom_Condition**

## Ressourcenprofil: MII_PR_Symptom_Condition ( Abstrakt ) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:MII_PR_Symptom_Condition |

 
Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom). 

Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom).

##### Abstraktes Profil

Diese StructureDefinition ist als abstrakt markiert und kann nicht direkt instanziiert werden. Sie dient ausschließlich als Grundlage für konkrete Profile, die von ihr ableiten. In Instanzen muss immer ein konkreter Sub-Typ verwendet werden.

**Diagnosesicherheit**

Das Vorhandensein oder die Abwesenheit eines klinischen Zustandes oder einer Diagnose kann über die Elemente `Condition.clinicalStatus` und `Condition.verificationStatus` festgehalten werden.

Folgende Kombinationen aus `clinicalStatus` und `verificationStatus` sind notwendig, um die vier Ausprägungen für Diagnosesicherheit äquivalent abzubilden:

* A (ausgeschlossen) => clinicalStatus = leer, verificationStatus="refuted"
* G (gesicherte Diagnose) => clinicalStatus = "active", verificationStatus="confirmed"
* V (Verdacht auf / zum Ausschluss von) => clinicalStatus = "active", verificationStatus="provisional" oder "differential"
* Z (Zustand nach) => clinicalStatus = "resolved", verificationStatus="confirmed"

Siehe dazu auch Diagnosesicherheit in den [FHIR Basisprofilen](https://ig.fhir.de/basisprofile-de/1.5.4/ig-markdown-Ressourcen-DiagnosenCondition.html) und im [MII Modul Diagnose](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0).

#### Must-Support-Elemente

| Feldname | Kurzbeschreibung | Hinweise | |—|—|—| | `Condition.extension:assertedDate` | | | | `Condition.identifier` | | | | `Condition.clinicalStatus` | | | | `Condition.verificationStatus` | | | | `Condition.category` | | | | `Condition.severity` | | | | `Condition.code` | | | | `Condition.bodySite` | | | | `Condition.subject` | | | | `Condition.encounter` | | | | `Condition.onset[x]` | | | | `Condition.onset[x]:onsetPeriod` | | | | `Condition.onset[x]:onsetPeriod.start.extension:lebensphase-von` | | | | `Condition.onset[x]:onsetPeriod.end.extension:lebensphase-bis` | | | | `Condition.recordedDate` | | | | `Condition.stage` | | | | `Condition.stage.summary` | | | | `Condition.stage.assessment` | | | | `Condition.stage.type` | | | | `Condition.evidence` | | | | `Condition.evidence.code` | | | | `Condition.evidence.detail` | | |

#### Mapping auf das Logical Model

| FHIR | Datensatz | Erklärung | |—|—|—| | `Condition` | mii-lm-symptom.Condition | Im Sinne einer FHIR Condition: klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom). | | `Condition.code` | mii-lm-symptom.Condition.Code | Code für ein Symptom, Phänomen, Erkrankung, Disposition: SNOMED CT (Findings), ICD-10, OrphaCodes, HPO, MedDRA | | `Condition.identifier` | mii-lm-symptom.Condition.Identifikator | Externer Identifikator für die Condition | | `Condition.code.coding.display` | mii-lm-symptom.Condition.Bezeichnung | Natürlichsprachige Bezeichnung für ein Symptom, Diagnose, Erkrankung, Phänotyp, Disposition | | `Condition.code.text` | mii-lm-symptom.Condition.Beschreibung | Natürlichsprachige Beschreibung für ein Symptom, eine Erkrankung, eine Diagnose oder eine Disposition. | | `Condition.category` | mii-lm-symptom.Condition.Kategorie | Kategorien der Condition (z.B. problem-list-item | encounter-diagnosis) | | `Conditon.bodySite` | mii-lm-symptom.Condition.Lokalisation | Lokalisation eines Symptoms etc. Körperstellen (Lokalisationen) werden SNOMED CT kodiert. | | `Conditon.onset[x]` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum | Zeitspanne des Vorhandenseins des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps | | `Conditon.onsetPeriod` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum | Klinisch relevanter Zeitraum als Zeitintervall mit von/am und bis. | | `Conditon.onsetPeriod.start` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum.start | Startzeitpunkt: Zeitpunkt des Beginns des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps | | `Conditon.onsetPeriod.end` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum.end | Endzeitpunkt: Zeitpunkt des Verschwindens des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps | | `Condition.onsetPeriod.start.extension.where(url='http://fhir.de/StructureDefinition/lebensphase')` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase | Zusätzlich zu einem Zeitraum ist die Angabe der Lebensphase, zu der eine Krankheit vorlag/vorliegt, möglich. Hiermit lässt sich beispielsweise angeben, dass eine Person eine Krankheit bereits als Säugling gehabt hat. Das entsprechende ValueSet ist derzeit noch in Arbeit. | | `Condition.onsetPeriod.start.extension.where(url='http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase.von | Lebensphase Start | | `Condition.onsetPeriod.end.extension.where(url='http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase.bis | Lebensphase Ende | | `Conditon.extension.where(url='http://hl7.org/fhir/StructureDefinition/condition-assertedDate')` | mii-lm-symptom.Condition.Beobachtungszeitpunkt | Zeitpunkt der Beobachtung/Feststellung des Symptoms, Erkrankung, Diagnose, Disposition. | | `Condition.recordedDate` | mii-lm-symptom.Condition.Dokumentationszeitpunkt | Zeitpunkt der Dokumentation das Symptoms, Erkrankung, Diagnose, Disposition | | `Condition.clinicalStatus` | mii-lm-symptom.Condition.Status | Status des Symptoms, Erkrankung, Diagnose, Disposition: "Aktiv", "Zustand nach", "in Remission", "beseitigt/geheilt"). Codiert z. B. mit ValueSet aus FHIR oder SNOMED CT. | | `Condition.severity` | mii-lm-symptom.Condition.Schweregrad | Schweregrad des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT. | | `Condition.verificationStatus` | mii-lm-symptom.Condition.Verifikationsstatus | Empirische, epistemologische, algorithmische, diagnostische Gewissheit des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT. | | `Condition.evidence` | mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz | Die dem Symptom, Erkrankung, Diagnose, Disposition zugrundeliegend Beobachtung | | `Condition.evidence.code.text` | mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.BeschreibungZugrundeliegendeBeobachtung | Natürlichsprachige Beschreibung einer dem Symptom zugrundeliegenden Beobachtung, Symptoms, Erkrankung, Diagnose, Disposition | | `Condition.evidence.code` | mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.CodeZugrundeliegendeBeobachtung | Code der zugrundeliegenden Beobachtung des Symptoms, Erkrankung, Diagnose, Disposition: SNOMED CT, LOINC | | `Condition.evidence.detail` | mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.LinkAufZugrundeliegendeBeobachtung | Link auf die dem Symptom zugrundeliegenden Beobachtung für das Symptoms, Erkrankung, Diagnose, Disposition | | `Condition.stage` | mii-lm-symptom.Condition.Stadium | Stadium der Condition | | `Condition.stage.summary` | mii-lm-symptom.Condition.Stadium.Zusammenfassung | Einfache Zusammenfassung des Stadiums | | `Condition.stage.assessment` | mii-lm-symptom.Condition.Stadium.Einschaetzung | Referenz auf eine formale Einschätzung des Stadiums (ClinicalImpression, DiagnosticReport, Observation) | | `Condition.stage.type` | mii-lm-symptom.Condition.Stadium.ArtDerStadieneinteilung | Art der Stadieneinteilung | | `Condition.subject` | mii-lm-symptom.Condition.Patient | Link auf Patient | | `Condition.encounter` | mii-lm-symptom.Condition.Fall | Link auf Behandlungsfall |

#### Beispiele

* Beispiel einer Condition-Ressource: [mii-exa-symptom-vitreoretinochoroidopathy](Condition-mii-exa-symptom-vitreoretinochoroidopathy.md)

**Usages:**

* CapabilityStatements using this Profile: [MII CPS Symptom CapabilityStatement](CapabilityStatement-mii-cps-symptom-capabilitystatement.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.symptom|current/StructureDefinition/StructureDefinition-mii-pr-symptom-condition.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Condition](http://hl7.org/fhir/R4/condition.html) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Condition](http://hl7.org/fhir/R4/condition.html) 

** Summary **

Must-Support: 22 elements

**Structures**

This structure refers to these other structures:

* [BodyStructure (EU core) (http://hl7.eu/fhir/base/StructureDefinition/bodyStructure-eu-core)](http://hl7.eu/fhir/base/0.1.0/StructureDefinition-bodyStructure-eu-core.html)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/condition-assertedDate](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-condition-assertedDate.html)
* [http://hl7.org/fhir/StructureDefinition/bodySite](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-bodySite.html)
* [http://fhir.de/StructureDefinition/lebensphase](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/lebensphase)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.onset[x]

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Condition](http://hl7.org/fhir/R4/condition.html) 

#### Terminology Bindings (Differential)

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Condition](http://hl7.org/fhir/R4/condition.html) 

** Summary **

Must-Support: 22 elements

**Structures**

This structure refers to these other structures:

* [BodyStructure (EU core) (http://hl7.eu/fhir/base/StructureDefinition/bodyStructure-eu-core)](http://hl7.eu/fhir/base/0.1.0/StructureDefinition-bodyStructure-eu-core.html)

**Extensions**

This structure refers to these extensions:

* [http://hl7.org/fhir/StructureDefinition/condition-assertedDate](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-condition-assertedDate.html)
* [http://hl7.org/fhir/StructureDefinition/bodySite](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-bodySite.html)
* [http://fhir.de/StructureDefinition/lebensphase](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.de/StructureDefinition/lebensphase)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of Condition.onset[x]

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-symptom-condition.csv), [Excel](../StructureDefinition-mii-pr-symptom-condition.xlsx), [Schematron](../StructureDefinition-mii-pr-symptom-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-symptom-condition",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Symptom_Condition",
  "status" : "active",
  "date" : "2026-08-31T21:32:17+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : true,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition"
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.extension:assertedDate",
      "path" : "Condition.extension",
      "sliceName" : "assertedDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/condition-assertedDate"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "mustSupport" : true
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "mustSupport" : true
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "mustSupport" : true
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "mustSupport" : true
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "Condition.bodySite.extension:bodySite",
      "path" : "Condition.bodySite.extension",
      "sliceName" : "bodySite",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite"]
      }]
    },
    {
      "id" : "Condition.bodySite.extension:bodySite.value[x]",
      "path" : "Condition.bodySite.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.eu/fhir/base/StructureDefinition/bodyStructure-eu-core"]
      }]
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "mustSupport" : true
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "mustSupport" : true
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Condition.onset[x]:onsetPeriod",
      "path" : "Condition.onset[x]",
      "sliceName" : "onsetPeriod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.onset[x]:onsetPeriod.start.extension",
      "path" : "Condition.onset[x].start.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.onset[x]:onsetPeriod.start.extension:lebensphase-von",
      "path" : "Condition.onset[x].start.extension",
      "sliceName" : "lebensphase-von",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.de/StructureDefinition/lebensphase"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.onset[x]:onsetPeriod.end.extension",
      "path" : "Condition.onset[x].end.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Condition.onset[x]:onsetPeriod.end.extension:lebensphase-bis",
      "path" : "Condition.onset[x].end.extension",
      "sliceName" : "lebensphase-bis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://fhir.de/StructureDefinition/lebensphase"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage.summary",
      "path" : "Condition.stage.summary",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage.assessment",
      "path" : "Condition.stage.assessment",
      "mustSupport" : true
    },
    {
      "id" : "Condition.stage.type",
      "path" : "Condition.stage.type",
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence.code",
      "path" : "Condition.evidence.code",
      "mustSupport" : true
    },
    {
      "id" : "Condition.evidence.detail",
      "path" : "Condition.evidence.detail",
      "mustSupport" : true
    }]
  }
}

```
