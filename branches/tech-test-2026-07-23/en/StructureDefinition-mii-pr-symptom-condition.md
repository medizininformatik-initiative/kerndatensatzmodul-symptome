# MII_PR_Symptom_Condition - MII IG Symptom v2026.0.0-rc.1

## Resource Profile: MII_PR_Symptom_Condition ( Abstract ) 

 
Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom). 

**Usages:**

* CapabilityStatements using this Profile: [MII CPS Symptom CapabilityStatement](CapabilityStatement-mii-cps-symptom-capabilitystatement.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.symptom|current/StructureDefinition/StructureDefinition-mii-pr-symptom-condition.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-symptom-condition.csv), [Excel](../StructureDefinition-mii-pr-symptom-condition.xlsx), [Schematron](../StructureDefinition-mii-pr-symptom-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-symptom-condition",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition",
  "version" : "2026.0.0-rc.1",
  "name" : "MII_PR_Symptom_Condition",
  "status" : "active",
  "date" : "2026-07-23T12:43:53+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom).",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
