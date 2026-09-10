# mii-exa-symptom-arachnodactyly - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-symptom-arachnodactyly**

## Beispiel Observation: mii-exa-symptom-arachnodactyly

-------

**German**

-------

**status**: Final

**code**: Arachnodactyly

**subject**: [Max Mustermann-Testpatient (no stated gender), DoB: 1970-01-01](Patient-example.md)

**value**: Present



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-symptom-arachnodactyly",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://github.com/phenopackets/core-ig/CodeSystem/hpo",
      "code" : "HP:0001166",
      "display" : "Arachnodactyly"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA9633-4",
      "display" : "Present"
    }]
  }
}

```
