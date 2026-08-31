# MII_PR_Symptom_Observation - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII_PR_Symptom_Observation**

## Resource Profile: MII_PR_Symptom_Observation ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-08-31 | *Computable Name*:MII_PR_Symptom_Observation |

 
Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein. 

**Description**

Measurements or assignments for a patient. Most observations are simple entity/value pairs, but they can also have a complex hierarchical structure.

This Observation can be used to capture both present and absent symptoms as well as present or absent phenotypes. The modeling differs slightly and is based on two different FHIR implementation guides:

* [FHIR R4 Symptoms Implementation Guide](https://hl7.org/fhir/uv/symptoms/2026Jan) for documenting symptoms
* [Phenomics Exchange for Research and Diagnostics](https://hl7.org/fhir/uv/phenomics-exchange/2026Jan/en/) for documenting phenotypes

**Note:** Both implementation guides were in their ballot phase at the time of writing, so changes are still possible.

#### Symptom Observations

The following LOINC codes SHALL be used to capture symptoms:

* **Present symptoms**: `Observation.code` with LOINC `75325-1` (Symptom)
* **Absent symptoms**: `Observation.code` with LOINC `111551-8` (Symptom absent) - a preliminary code, not published in LOINC v2.81

Both Observation types use `valueCodeableConcept` to identify the specific symptom. The coded value SHOULD come from the SNOMED `404684003 |Clinical finding (finding)|` hierarchy.

**Component Observations**: Part of the symptom's structured information MAY be modeled in `Observation.component`. See: [Profile: Symptom Observation](https://hl7.org/fhir/uv/symptoms/2026Jan/en/StructureDefinition-SymptomObservation.html).

For the concrete implementation of these profiles, see the [Symptoms IG](https://hl7.org/fhir/uv/symptoms/2026Jan).

#### Phenotype Observations

A phenotype Observation allows stating the **presence or absence** of a phenotype:

* **`Observation.code`**: captures the phenotype (e.g. from HPO or SNOMED)
* **`Observation.valueCodeableConcept`**: uses the LOINC ValueSet [LL1937-3](https://loinc.org/LL1937-3/) with the values: 
* Present
* Absent
 

**Observation components**: Additional aspects of the phenotype are captured via `Observation.component`.

For the concrete implementation of these profiles, see the [Phenomics Exchange IG](https://hl7.org/fhir/uv/phenomics-exchange/2026Jan/en/).

##### Abstract profile

This StructureDefinition is marked abstract and cannot be instantiated directly. It serves exclusively as the basis for concrete profiles deriving from it. Instances must always use a concrete sub-type.

#### Must-support elements

| Feldname | Kurzbeschreibung | Hinweise | |—|—|—| | `Observation.identifier` | | | | `Observation.status` | | | | `Observation.category` | | | | `Observation.code` | | | | `Observation.subject` | | | | `Observation.effective[x]` | | | | `Observation.issued` | | | | `Observation.value[x]` | | | | `Observation.dataAbsentReason` | | | | `Observation.interpretation` | | | | `Observation.method` | | | | `Observation.specimen` | | | | `Observation.device` | | | | `Observation.referenceRange` | | | | `Observation.hasMember` | | | | `Observation.derivedFrom` | | | | `Observation.component` | | |

#### Mapping to the Logical Model

| FHIR | Datensatz | Erklärung | |—|—|—| | `Observation` | mii-lm-symptom.Observation | Observation i. S. einer FHIR Observation: Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein. | | `Observation.identifier` | mii-lm-symptom.Observation.Identifikator | Eindeutiger Identifier der Observation | | `Observation.code.coding.display` | mii-lm-symptom.Observation.Bezeichnung | Natürlichsprachige Bezeichnung der Observation | | `Observation.code.text` | mii-lm-symptom.Observation.Beschreibung | Natürlichsprachige Beschreibung der Beobachtung | | `Observation.category` | mii-lm-symptom.Observation.Kategorie | Kategorie der Observation | | `Observation.status` | mii-lm-symptom.Observation.Status | Status der Observation | | `Observation.code` | mii-lm-symptom.Observation.Code | Code der Observation: z. B. LOINC, SNOMED CT, HPO | | `Observation.effectiveDateTime` | mii-lm-symptom.Observation.Zeitspanne | Klinisch relevante Zeitpunkte/Zeitspanne | | `Observation.effectivePeriod.start` | mii-lm-symptom.Observation.Zeitspanne.start | Klinisch relevanter (Start-)Zeitpunkt einer Observation | | `Observation.effectivePeriod.end` | mii-lm-symptom.Observation.Zeitspanne.end | Klinisch relevanter Endzeitpunkt einer Observation | | `Observation.issued` | mii-lm-symptom.Observation.Dokumentationsdatum | Zeitpunkt der Dokumentation der Observation. | | `Observation.value[x]` | mii-lm-symptom.Observation.Wert[x] | Wert der Observation | | `Observation.referenceRange` | mii-lm-symptom.Observation.ReferenzIntervall | Referenz-Intervall entsprechend des eingebetteten komplexen Typs (Observation.referenceRange) | | `Observation.dataAbesentReason` | mii-lm-symptom.Observation.GrundNichtVorhandenerDaten | Grund für nicht vorhandene Daten der Observation | | `Observation.interpretation` | mii-lm-symptom.Observation.Interpretation | Interpretation einer Observation | | `Observation.note` | mii-lm-symptom.Observation.Kommentar | Natürlichsprachiger Kommentar zur Observation. | | `Observation.bodySite` | mii-lm-symptom.Observation.Lokalisation | Lokalisation der Observation als SNOMED CT Body Structure codiert. | | `Observation.subject` | mii-lm-symptom.Observation.Patient | Link auf Patient | | `Observation.encounter` | mii-lm-symptom.Observation.Fall | Fall der Observation | | `Observation.specimen` | mii-lm-symptom.Observation.Probe | Referenz auf die Probe, auf der die Observation basiert | | `Observation.device` | mii-lm-symptom.Observation.Messgeraet | Referenz auf das verwendete Mess-/Untersuchungsgerät | | `Observation.method` | mii-lm-symptom.Observation.Methode | Methode der Untersuchung | | `Observation.hasMember` | mii-lm-symptom.Observation.BezugZuHatTeil | Bezug zu Ressourcen, die zu dieser Observation gehören (Observation, QuestionnaireResponse, MolecularSequence) | | `Observation.derivedFrom` | mii-lm-symptom.Observation.BezugVonIstTeilVon | Referenz auf Messunger/Beobachtungen, aus denen diese Observation hervorgeht. | | `Observation.component` | mii-lm-symptom.Observation.Komponente | Komponente einer Observation mit mehreren Komponenten (z. B. Blutdruck) entsprechend des komplexen Typs (Observation.component) mit .code, .value, .dataAbsentReason, .interpretation, .referenceRange (alle wie oben beschrieben) |

#### Examples

* Example of a symptom Observation: [mii-exa-symptom-chestpain](Observation-mii-exa-symptom-chestpain.md)
* Example of a phenotype Observation: [mii-exa-symptom-arachnodactyly](Observation-mii-exa-symptom-arachnodactyly.md)

**Usages:**

* CapabilityStatements using this Profile: [MII CPS Symptom CapabilityStatement](CapabilityStatement-mii-cps-symptom-capabilitystatement.md)
* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.symptom|current/StructureDefinition/StructureDefinition-mii-pr-symptom-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-symptom-observation.csv), [Excel](../StructureDefinition-mii-pr-symptom-observation.xlsx), [Schematron](../StructureDefinition-mii-pr-symptom-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-symptom-observation",
  "url" : "https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_PR_Symptom_Observation",
  "status" : "active",
  "date" : "2026-08-31T20:40:21+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein.",
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
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.extension",
      "path" : "Observation.extension",
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
      "id" : "Observation.extension:associatedSymptomOrCondition",
      "path" : "Observation.extension",
      "sliceName" : "associatedSymptomOrCondition",
      "short" : "Other symptoms or conditions that are associated with this symptom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo"]
      }]
    },
    {
      "id" : "Observation.extension:associatedSymptomOrCondition.value[x]",
      "path" : "Observation.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/Condition"]
      }]
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "Observation.bodySite.extension:bodySite",
      "path" : "Observation.bodySite.extension",
      "sliceName" : "bodySite",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite"]
      }]
    },
    {
      "id" : "Observation.bodySite.extension:bodySite.value[x]",
      "path" : "Observation.bodySite.extension.value[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.eu/fhir/base/StructureDefinition/bodyStructure-eu-core"]
      }]
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "mustSupport" : true
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "mustSupport" : true
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange",
      "path" : "Observation.referenceRange",
      "mustSupport" : true
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "mustSupport" : true
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "mustSupport" : true
    }]
  }
}

```
