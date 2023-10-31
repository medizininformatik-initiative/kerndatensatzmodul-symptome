---
parent: 
topic: FindingObservation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-condition
canonical: https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-condition
expand: 1
---

## Condition

## {{link}}

Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom).

**Diagnosesicherheit**

Das Vorhandensein oder die Abwesenheit eines klinischen Zustandes oder einer Diagnose kann über die Elemente `Condition.clinicalStatus` und `Condition.verificationStatus` festgehalten werden. 

Folgende Kombinationen aus `clinicalStatus` und `verificationStatus` sind notwendig, um die vier Ausprägungen für Diagnosesicherheit äquivalent abzubilden:

* A (ausgeschlossen) => clinicalStatus = leer, verificationStatus="refuted"
* G (gesicherte Diagnose) => clinicalStatus = "active", verificationStatus="confirmed"
* V (Verdacht auf / zum Ausschluss von) => clinicalStatus = "active", verificationStatus="provisional" oder "differential"
* Z (Zustand nach) => clinicalStatus = "resolved", verificationStatus="confirmed" 

Siehe dazu auch Diagnosesicherheit in den [FHIR Basisprofilen](https://ig.fhir.de/basisprofile-de/1.4.0/Ressourcen-DiagnosenCondition.html) und im [MII Modul Diagnose](https://simplifier.net/mii-basismodul-person-2024).

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-condition' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-condition'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-condition' 
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

| FHIR-Element | Erklärung |
|--------------|-----------|


---
| FHIR-Element | Logischer Datensatz |
|---|---|

---

**Beispiele**

Beispiel einer Condition-Ressource:

{{json:mii-exa-symptom-vitreoretinochoroidopathy}}
<br>