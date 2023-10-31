---
parent: 
topic: FindingObservation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-observation
canonical: https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-observation
expand: 1
---

## Observation

## {{link}}

**Beschreibung**

Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-observation' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-observation'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-observation' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/LogicalModel/Symptom'
    for differential.element where id.contains('Symptom.Observation') 
    select 
        FHIR: mapping[0].map,
        Datensatz: path, 
        Erklaerung: definition 
```

---

**Beispiele**

Beispiel einer Observation-Ressource:

{{json:mii-exa-symptom-arachnodactyly}}
<br>
