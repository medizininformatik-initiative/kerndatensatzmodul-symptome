# mii-exa-symptom-vitreoretinochoroidopathy - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-symptom-vitreoretinochoroidopathy**

## Beispiel Condition: mii-exa-symptom-vitreoretinochoroidopathy

-------

**German**

-------

**Condition Asserted Date**: 2023-10-30

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Autosomal dominant vitreoretinochoroidopathy

**subject**: [Erika Musterfrau-Testpatientin (no stated gender), DoB: 1970-01-01](Patient-example-patient.md)



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "mii-exa-symptom-vitreoretinochoroidopathy",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
    "valueDateTime" : "2023-10-30"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed",
      "display" : "Confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "711162004",
      "display" : "Autosomal dominant vitreoretinochoroidopathy"
    }]
  },
  "subject" : {
    "reference" : "Patient/example-patient"
  }
}

```
