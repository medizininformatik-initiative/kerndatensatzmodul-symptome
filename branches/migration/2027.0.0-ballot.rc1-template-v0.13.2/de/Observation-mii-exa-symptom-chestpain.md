# mii-exa-symptom-chestpain - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-exa-symptom-chestpain**

## Beispiel Observation: mii-exa-symptom-chestpain

-------

**German**

-------

**status**: Final

**code**: Symptom

**subject**: [Max Mustermann-Testpatient (no stated gender), DoB: 1970-01-01](Patient-example.md)

**value**: Pain

**bodySite**: Thoracic structure



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "mii-exa-symptom-chestpain",
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "75325-1",
      "display" : "Symptom"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "22253000"
    }]
  },
  "bodySite" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "51185008"
    }]
  }
}

```
