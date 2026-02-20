---
parent: 
topic: FindingObservation
subject: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation
canonical: https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation
expand: 1
---

## Observation

## {{link}}

**Beschreibung**

Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein.

Diese Observation kann zur Erfassung von sowohl vorhandenen als auch abwesenden Symptomen sowie vorhandenen oder abwesenden Phänotypen verwendet werden. Die Modellierung unterscheidet sich leicht und basiert auf zwei verschiedenen FHIR Implementation Guides:

- [FHIR R4 Symptoms Implementation Guide](https://hl7.org/fhir/uv/symptoms/2026Jan) für die Dokumentation von Symptomen
- [Phenomics Exchange for Research and Diagnostics](https://hl7.org/fhir/uv/phenomics-exchange/2026Jan/en/) für die Dokumentation von Phänotypen

**Hinweis:** Beide Implementation Guides befanden sich zum Zeitpunkt der Erstellung in der Ballot-Phase, sodass noch Änderungen möglich sind.

---

### Symptom-Observations

Für die Erfassung von Symptomen SOLLEN folgende LOINC-Codes verwendet werden:

- **Vorhandene Symptome**: `Observation.code` mit LOINC `75325-1` (Symptom)
- **Abwesende Symptome**: `Observation.code` mit LOINC `111551-8` (Symptom absent) - vorläufiger Code und nicht in LOINC v2.81 veröffentlicht

Beide Observation-Typen verwenden `valueCodeableConcept`, um das spezifische Symptom zu identifizieren. Der codierte Werte SOLLTE aus der SNOMED `404684003 |Clinical finding (finding)|` Hierarchie stammen.

**Component Observations**: Ein Teil der strukturierten Informationen des Symptoms KANN in `Observation.component` modelliert werden. Siehe: [Profile: Symptom Observation](https://hl7.org/fhir/uv/symptoms/2026Jan/en/StructureDefinition-SymptomObservation.html).

Für die konkrete Implementierung dieser Profile siehe den [Symptoms IG](https://hl7.org/fhir/uv/symptoms/2026Jan).

---

### Phänotyp-Observations

Eine Phänotyp-Observation ermöglicht die Angabe von **Vorhandensein oder Abwesenheit** eines Phänotyps:

- **`Observation.code`**: Erfasst den Phänotyp (z.B. aus HPO oder SNOMED)
- **`Observation.valueCodeableConcept`**: Verwendet LOINC ValueSet [LL1937-3](https://loinc.org/LL1937-3/) mit den Werten:
  - Present (Vorhandensein)
  - Absent (Abwesenheit)

**Observation Components**: Zusätzliche Aspekte des Phänotyps werden mittels `Observation.component` erfasst.

Für die konkrete Implementierung dieser Profile siehe den [Phenomics Exchange IG](https://hl7.org/fhir/uv/phenomics-exchange/2026Jan/en/).

---

| Hinweis |  |
|---------|---------------------|
| {{render:implementation-guides/ImplementationGuide-Common/images/Warning.jpg}} | Diese StructureDefinition ist als abstrakt markiert und kann nicht direkt instanziiert werden. Sie dient ausschließlich als Grundlage für konkrete Profile, die von ihr ableiten. In Instanzen muss immer ein konkreter Sub-Typ verwendet werden. |

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation' 
select 
    Name: name, Status: status, Version: version, Abstract: abstract, Canonical: url, Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation' 
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
where url = 'https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/mii-lm-symptom'
    for differential.element where id.contains('Symptom.Observation') 
    select 
        FHIR: mapping[0].map,
        Datensatz: path, 
        Erklaerung: definition 
```

---

**Beispiele**

Beispiel einer Symptom-Observation:

{{json:mii-exa-symptom-chestpain}}
<br>


Beispiel einer Phänotyp-Observation:

{{json:mii-exa-symptom-arachnodactyly}}
<br>
