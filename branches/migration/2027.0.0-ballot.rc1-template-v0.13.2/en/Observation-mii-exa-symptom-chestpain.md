# mii-exa-symptom-chestpain - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-symptom-chestpain**

## Example Observation: mii-exa-symptom-chestpain

-------

**English**

-------

**status**: Final

**code**: Symptom

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/Patient/example)

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
