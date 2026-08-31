# MII LM Symptom - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII LM Symptom**

## Logisches Modell: MII LM Symptom 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/mii-lm-symptom | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:MII_LM_Symptom |

 
Logische Repräsentation des Basismoduls Symptom/klinischer Phänotyp 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.symptom|current/StructureDefinition/StructureDefinition-mii-lm-symptom.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

** Summary **

Mandatory: 0 element(4 nested mandatory elements)

 **Schlüsselelemente-Ansicht** 

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

 **Snapshot-AnsichtView** 

#### Constraints

Diese Struktur ist abgeleitet von [Element](http://hl7.org/fhir/R4/datatypes.html#Element) 

** Summary **

Mandatory: 0 element(4 nested mandatory elements)

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-lm-symptom.csv), [Excel](../StructureDefinition-mii-lm-symptom.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-symptom",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/mii-lm-symptom",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_LM_Symptom",
  "title" : "MII LM Symptom",
  "status" : "active",
  "date" : "2026-08-31T21:46:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Logische Repräsentation des Basismoduls Symptom/klinischer Phänotyp",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "FHIR",
    "name" : "Symptom LogicalModel FHIR Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/mii-lm-symptom",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "mii-lm-symptom",
      "path" : "mii-lm-symptom",
      "short" : "MII LM Symptom",
      "definition" : "Logische Repräsentation des Basismoduls Symptom/klinischer Phänotyp"
    },
    {
      "id" : "mii-lm-symptom.Condition",
      "path" : "mii-lm-symptom.Condition",
      "short" : "Im Sinne einer FHIR Condition: klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom).",
      "definition" : "Im Sinne einer FHIR Condition: klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Code",
      "path" : "mii-lm-symptom.Condition.Code",
      "short" : "Code für ein Symptom, Phänomen, Erkrankung, Disposition: SNOMED CT (Findings), ICD-10, OrphaCodes, HPO, MedDRA",
      "definition" : "Code für ein Symptom, Phänomen, Erkrankung, Disposition: SNOMED CT (Findings), ICD-10, OrphaCodes, HPO, MedDRA",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.code"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Identifikator",
      "path" : "mii-lm-symptom.Condition.Identifikator",
      "short" : "Externer Identifikator für die Condition",
      "definition" : "Externer Identifikator für die Condition",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.identifier"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Bezeichnung",
      "path" : "mii-lm-symptom.Condition.Bezeichnung",
      "short" : "Natürlichsprachige Bezeichnung für ein Symptom, Diagnose, Erkrankung, Phänotyp, Disposition",
      "definition" : "Natürlichsprachige Bezeichnung für ein Symptom, Diagnose, Erkrankung, Phänotyp, Disposition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.code.coding.display"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Beschreibung",
      "path" : "mii-lm-symptom.Condition.Beschreibung",
      "short" : "Natürlichsprachige Beschreibung für ein Symptom, eine Erkrankung, eine Diagnose oder eine Disposition.",
      "definition" : "Natürlichsprachige Beschreibung für ein Symptom, eine Erkrankung, eine Diagnose oder eine Disposition.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.code.text"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Kategorie",
      "path" : "mii-lm-symptom.Condition.Kategorie",
      "short" : "Kategorien der Condition (z.B. problem-list-item | encounter-diagnosis)",
      "definition" : "Kategorien der Condition (z.B. problem-list-item | encounter-diagnosis)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.category"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Lokalisation",
      "path" : "mii-lm-symptom.Condition.Lokalisation",
      "short" : "Lokalisation eines Symptoms etc. Körperstellen (Lokalisationen) werden SNOMED CT kodiert.",
      "definition" : "Lokalisation eines Symptoms etc. Körperstellen (Lokalisationen) werden SNOMED CT kodiert.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Conditon.bodySite"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum",
      "path" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum",
      "short" : "Zeitspanne des Vorhandenseins des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps",
      "definition" : "Zeitspanne des Vorhandenseins des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Conditon.onset[x]"
      },
      {
        "identity" : "FHIR",
        "map" : "Conditon.abatement[x]"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum",
      "path" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum",
      "short" : "Klinisch relevanter Zeitraum als Zeitintervall mit von/am und bis.",
      "definition" : "Klinisch relevanter Zeitraum als Zeitintervall mit von/am und bis.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Conditon.onsetPeriod"
      },
      {
        "identity" : "FHIR",
        "map" : "Conditon.abatementPeriod"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum.start",
      "path" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum.start",
      "short" : "Startzeitpunkt: Zeitpunkt des Beginns des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps",
      "definition" : "Startzeitpunkt: Zeitpunkt des Beginns des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Conditon.onsetPeriod.start"
      },
      {
        "identity" : "FHIR",
        "map" : "Conditon.abatementPeriod.start"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum.end",
      "path" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum.end",
      "short" : " Endzeitpunkt: Zeitpunkt des Verschwindens des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps",
      "definition" : " Endzeitpunkt: Zeitpunkt des Verschwindens des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Conditon.onsetPeriod.end"
      },
      {
        "identity" : "FHIR",
        "map" : "Conditon.abatementPeriod.end"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase",
      "path" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase",
      "short" : "Zusätzlich zu einem Zeitraum ist die Angabe der Lebensphase, zu der eine Krankheit vorlag/vorliegt, möglich. Hiermit lässt sich beispielsweise angeben, dass eine Person eine Krankheit bereits als Säugling gehabt hat. Das entsprechende ValueSet ist derzeit noch in Arbeit.",
      "definition" : "Zusätzlich zu einem Zeitraum ist die Angabe der Lebensphase, zu der eine Krankheit vorlag/vorliegt, möglich. Hiermit lässt sich beispielsweise angeben, dass eine Person eine Krankheit bereits als Säugling gehabt hat. Das entsprechende ValueSet ist derzeit noch in Arbeit.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.onsetPeriod.start.extension.where(url='http://fhir.de/StructureDefinition/lebensphase')"
      },
      {
        "identity" : "FHIR",
        "map" : "Condition.onsetPeriod.end.extension.where(url='http://fhir.de/StructureDefinition/lebensphase')"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase.von",
      "path" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase.von",
      "short" : "Lebensphase Start",
      "definition" : "Lebensphase Start",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.onsetPeriod.start.extension.where(url='http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase.bis",
      "path" : "mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase.bis",
      "short" : "Lebensphase Ende",
      "definition" : "Lebensphase Ende",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.onsetPeriod.end.extension.where(url='http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Beobachtungszeitpunkt",
      "path" : "mii-lm-symptom.Condition.Beobachtungszeitpunkt",
      "short" : "Zeitpunkt der Beobachtung/Feststellung des Symptoms, Erkrankung, Diagnose, Disposition.",
      "definition" : "Zeitpunkt der Beobachtung/Feststellung des Symptoms, Erkrankung, Diagnose, Disposition.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Conditon.extension.where(url='http://hl7.org/fhir/StructureDefinition/condition-assertedDate')"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Dokumentationszeitpunkt",
      "path" : "mii-lm-symptom.Condition.Dokumentationszeitpunkt",
      "short" : "Zeitpunkt der Dokumentation das Symptoms, Erkrankung, Diagnose, Disposition",
      "definition" : "Zeitpunkt der Dokumentation das Symptoms, Erkrankung, Diagnose, Disposition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.recordedDate"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Status",
      "path" : "mii-lm-symptom.Condition.Status",
      "short" : "Status des Symptoms, Erkrankung, Diagnose, Disposition: \"Aktiv\", \"Zustand nach\", \"in Remission\", \"beseitigt/geheilt\"). Codiert z. B. mit ValueSet aus FHIR oder SNOMED CT.",
      "definition" : "Status des Symptoms, Erkrankung, Diagnose, Disposition: \"Aktiv\", \"Zustand nach\", \"in Remission\", \"beseitigt/geheilt\"). Codiert z. B. mit ValueSet aus FHIR oder SNOMED CT.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.clinicalStatus"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Schweregrad",
      "path" : "mii-lm-symptom.Condition.Schweregrad",
      "short" : "Schweregrad des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT.",
      "definition" : "Schweregrad des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.severity"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Verifikationsstatus",
      "path" : "mii-lm-symptom.Condition.Verifikationsstatus",
      "short" : "Empirische, epistemologische, algorithmische, diagnostische Gewissheit  des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT.",
      "definition" : "Empirische, epistemologische, algorithmische, diagnostische Gewissheit  des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.verificationStatus"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz",
      "path" : "mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz",
      "short" : "Die dem Symptom, Erkrankung, Diagnose, Disposition zugrundeliegend Beobachtung",
      "definition" : "Die dem Symptom, Erkrankung, Diagnose, Disposition zugrundeliegend Beobachtung",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.evidence"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.BeschreibungZugrundeliegendeBeobachtung",
      "path" : "mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.BeschreibungZugrundeliegendeBeobachtung",
      "short" : "Natürlichsprachige Beschreibung einer dem Symptom zugrundeliegenden Beobachtung,  Symptoms, Erkrankung, Diagnose, Disposition",
      "definition" : "Natürlichsprachige Beschreibung einer dem Symptom zugrundeliegenden Beobachtung,  Symptoms, Erkrankung, Diagnose, Disposition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.evidence.code.text"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.CodeZugrundeliegendeBeobachtung",
      "path" : "mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.CodeZugrundeliegendeBeobachtung",
      "short" : "Code der zugrundeliegenden Beobachtung des  Symptoms, Erkrankung, Diagnose, Disposition: SNOMED CT, LOINC",
      "definition" : "Code der zugrundeliegenden Beobachtung des  Symptoms, Erkrankung, Diagnose, Disposition: SNOMED CT, LOINC",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.evidence.code"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.LinkAufZugrundeliegendeBeobachtung",
      "path" : "mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.LinkAufZugrundeliegendeBeobachtung",
      "short" : "Link auf die dem Symptom zugrundeliegenden Beobachtung für das  Symptoms, Erkrankung, Diagnose, Disposition",
      "definition" : "Link auf die dem Symptom zugrundeliegenden Beobachtung für das  Symptoms, Erkrankung, Diagnose, Disposition",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.evidence.detail"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Stadium",
      "path" : "mii-lm-symptom.Condition.Stadium",
      "short" : "Stadium der Condition",
      "definition" : "Stadium der Condition",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.stage"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Stadium.Zusammenfassung",
      "path" : "mii-lm-symptom.Condition.Stadium.Zusammenfassung",
      "short" : "Einfache Zusammenfassung des Stadiums",
      "definition" : "Einfache Zusammenfassung des Stadiums",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.stage.summary"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Stadium.Einschaetzung",
      "path" : "mii-lm-symptom.Condition.Stadium.Einschaetzung",
      "short" : "Referenz auf eine formale Einschätzung des Stadiums (ClinicalImpression, DiagnosticReport, Observation)",
      "definition" : "Referenz auf eine formale Einschätzung des Stadiums (ClinicalImpression, DiagnosticReport, Observation)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.stage.assessment"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Stadium.ArtDerStadieneinteilung",
      "path" : "mii-lm-symptom.Condition.Stadium.ArtDerStadieneinteilung",
      "short" : "Art der Stadieneinteilung",
      "definition" : "Art der Stadieneinteilung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.stage.type"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Patient",
      "path" : "mii-lm-symptom.Condition.Patient",
      "short" : "Link auf Patient",
      "definition" : "Link auf Patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.subject"
      }]
    },
    {
      "id" : "mii-lm-symptom.Condition.Fall",
      "path" : "mii-lm-symptom.Condition.Fall",
      "short" : "Link auf Behandlungsfall",
      "definition" : "Link auf Behandlungsfall",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.encounter"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation",
      "path" : "mii-lm-symptom.Observation",
      "short" : "Observation i. S. einer FHIR Observation: Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein.",
      "definition" : "Observation i. S. einer FHIR Observation: Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Identifikator",
      "path" : "mii-lm-symptom.Observation.Identifikator",
      "short" : "Eindeutiger Identifier der Observation",
      "definition" : "Eindeutiger Identifier der Observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.identifier"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Bezeichnung",
      "path" : "mii-lm-symptom.Observation.Bezeichnung",
      "short" : "Natürlichsprachige Bezeichnung der Observation",
      "definition" : "Natürlichsprachige Bezeichnung der Observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code.coding.display"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Beschreibung",
      "path" : "mii-lm-symptom.Observation.Beschreibung",
      "short" : "Natürlichsprachige Beschreibung der Beobachtung",
      "definition" : "Natürlichsprachige Beschreibung der Beobachtung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code.text"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Kategorie",
      "path" : "mii-lm-symptom.Observation.Kategorie",
      "short" : "Kategorie der Observation",
      "definition" : "Kategorie der Observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.category"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Status",
      "path" : "mii-lm-symptom.Observation.Status",
      "short" : "Status der Observation",
      "definition" : "Status der Observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.status"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Code",
      "path" : "mii-lm-symptom.Observation.Code",
      "short" : "Code der Observation: z. B. LOINC, SNOMED CT, HPO",
      "definition" : "Code der Observation: z. B. LOINC, SNOMED CT, HPO",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Zeitspanne",
      "path" : "mii-lm-symptom.Observation.Zeitspanne",
      "short" : "Klinisch relevante Zeitpunkte/Zeitspanne",
      "definition" : "Klinisch relevante Zeitpunkte/Zeitspanne",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.effectiveDateTime"
      },
      {
        "identity" : "FHIR",
        "map" : "Observation.effectivePeriod"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Zeitspanne.start",
      "path" : "mii-lm-symptom.Observation.Zeitspanne.start",
      "short" : "Klinisch relevanter (Start-)Zeitpunkt einer Observation",
      "definition" : "Klinisch relevanter (Start-)Zeitpunkt einer Observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.effectivePeriod.start"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Zeitspanne.end",
      "path" : "mii-lm-symptom.Observation.Zeitspanne.end",
      "short" : "Klinisch relevanter Endzeitpunkt einer Observation",
      "definition" : "Klinisch relevanter Endzeitpunkt einer Observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.effectivePeriod.end"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Dokumentationsdatum",
      "path" : "mii-lm-symptom.Observation.Dokumentationsdatum",
      "short" : "Zeitpunkt der Dokumentation der Observation.",
      "definition" : "Zeitpunkt der Dokumentation der Observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.issued"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Wert[x]",
      "path" : "mii-lm-symptom.Observation.Wert[x]",
      "short" : "Wert der Observation",
      "definition" : "Wert der Observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      },
      {
        "code" : "boolean"
      },
      {
        "code" : "integer"
      },
      {
        "code" : "Range"
      },
      {
        "code" : "Ratio"
      },
      {
        "code" : "SampledData"
      },
      {
        "code" : "time"
      },
      {
        "code" : "dateTime"
      },
      {
        "code" : "Period"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.value[x]"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.ReferenzIntervall",
      "path" : "mii-lm-symptom.Observation.ReferenzIntervall",
      "short" : "Referenz-Intervall entsprechend des eingebetteten komplexen Typs (Observation.referenceRange)",
      "definition" : "Referenz-Intervall entsprechend des eingebetteten komplexen Typs (Observation.referenceRange)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.referenceRange"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.GrundNichtVorhandenerDaten",
      "path" : "mii-lm-symptom.Observation.GrundNichtVorhandenerDaten",
      "short" : "Grund für nicht vorhandene Daten der Observation",
      "definition" : "Grund für nicht vorhandene Daten der Observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.dataAbesentReason"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Interpretation",
      "path" : "mii-lm-symptom.Observation.Interpretation",
      "short" : "Interpretation einer Observation",
      "definition" : "Interpretation einer Observation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.interpretation"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Kommentar",
      "path" : "mii-lm-symptom.Observation.Kommentar",
      "short" : "Natürlichsprachiger Kommentar zur Observation.",
      "definition" : "Natürlichsprachiger Kommentar zur Observation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Annotation"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.note"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Lokalisation",
      "path" : "mii-lm-symptom.Observation.Lokalisation",
      "short" : "Lokalisation der Observation als SNOMED CT Body Structure codiert.",
      "definition" : "Lokalisation der Observation als SNOMED CT Body Structure codiert.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.bodySite"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Patient",
      "path" : "mii-lm-symptom.Observation.Patient",
      "short" : "Link auf Patient",
      "definition" : "Link auf Patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.subject"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Fall",
      "path" : "mii-lm-symptom.Observation.Fall",
      "short" : "Fall der Observation",
      "definition" : "Fall der Observation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.encounter"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Probe",
      "path" : "mii-lm-symptom.Observation.Probe",
      "short" : "Referenz auf die Probe, auf der die Observation basiert",
      "definition" : "Referenz auf die Probe, auf der die Observation basiert",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.specimen"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Messgeraet",
      "path" : "mii-lm-symptom.Observation.Messgeraet",
      "short" : "Referenz auf das verwendete Mess-/Untersuchungsgerät",
      "definition" : "Referenz auf das verwendete Mess-/Untersuchungsgerät",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.device"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Methode",
      "path" : "mii-lm-symptom.Observation.Methode",
      "short" : "Methode der Untersuchung",
      "definition" : "Methode der Untersuchung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.method"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.BezugZuHatTeil",
      "path" : "mii-lm-symptom.Observation.BezugZuHatTeil",
      "short" : "Bezug zu Ressourcen, die zu dieser Observation gehören (Observation, QuestionnaireResponse, MolecularSequence)",
      "definition" : "Bezug zu Ressourcen, die zu dieser Observation gehören (Observation, QuestionnaireResponse, MolecularSequence)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.hasMember"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.BezugVonIstTeilVon",
      "path" : "mii-lm-symptom.Observation.BezugVonIstTeilVon",
      "short" : "Referenz auf Messunger/Beobachtungen, aus denen diese Observation hervorgeht.",
      "definition" : "Referenz auf Messunger/Beobachtungen, aus denen diese Observation hervorgeht.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.derivedFrom"
      }]
    },
    {
      "id" : "mii-lm-symptom.Observation.Komponente",
      "path" : "mii-lm-symptom.Observation.Komponente",
      "short" : "Komponente einer Observation mit mehreren Komponenten (z. B. Blutdruck) entsprechend des komplexen Typs (Observation.component) mit .code, .value, .dataAbsentReason, .interpretation, .referenceRange (alle wie oben beschrieben)",
      "definition" : "Komponente einer Observation mit mehreren Komponenten (z. B. Blutdruck) entsprechend des komplexen Typs (Observation.component) mit .code, .value, .dataAbsentReason, .interpretation, .referenceRange (alle wie oben beschrieben)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.component"
      }]
    }]
  }
}

```
