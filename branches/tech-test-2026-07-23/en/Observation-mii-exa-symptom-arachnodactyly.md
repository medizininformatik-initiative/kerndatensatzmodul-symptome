# mii-exa-symptom-arachnodactyly - MII IG Symptom v2026.0.0-rc.1

## Example Observation: mii-exa-symptom-arachnodactyly

**status**: Final

**code**: Arachnodactyly

**subject**: [Patient/example](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.meta@2026.0.0&canonical=https://www.medizininformatik-initiative.de/fhir/modul-meta/Patient/example)

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
