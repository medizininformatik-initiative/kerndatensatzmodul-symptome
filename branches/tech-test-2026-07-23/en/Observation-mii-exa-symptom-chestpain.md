# mii-exa-symptom-chestpain - MII IG Symptom v2026.0.0-rc.1

## Example Observation: mii-exa-symptom-chestpain

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
