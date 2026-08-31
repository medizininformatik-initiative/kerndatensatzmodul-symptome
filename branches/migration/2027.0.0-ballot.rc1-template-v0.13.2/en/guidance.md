# Guidance - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Guidance**

## Guidance

 This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.html). 

> **Written during migration - review before release.** This page describes scenarios for applying the Symptoms/clinical phenotype module. The subject-matter relationships to other KDS modules are described in the [Guidance for Implementers](implementer-guidance.md); the information model on the pages [Logical Models](logical-models.md) and [UML Diagrams](uml-diagrams.md).

### Description of scenarios for applying the modules

#### Measurements/observations

1. Heart rate = 80/min
1. QT interval = 400 ms
1. Body weight = 80 kg
1. Systolic blood pressure = 150 mm Hg
1. Laboratory values (these would rather be represented in the corresponding KDS Laboratory module)
1. Bone density, T-score < - 2.5
1. Clinical signs: abdominal tension, distended jugular veins
1. Clinical scores: APGAR score, Glasgow Coma Score
1. Personal characteristics: hair, eye and skin color
1. (Social) anamnestic characteristics: tobacco use, family support, cognitive status
1. Characteristics such as pregnancy status

#### Composite measurements/observations

Measurements that belong together in content can be represented as components of a superordinate measurement:

1. Parameters of a pulmonary function test before and after bronchospasmolysis
1. Blood pressure measurements, systolic/diastolic or before and after exercise

The reference structure of clinically related measurements can be represented by hierarchical linking into part–whole structures. Likewise, the type of measurement and the performance of measurements (Procedure) can be represented in the Observation.

#### Findings and diagnoses (determined by physicians)

1. Heart rate (age-appropriate) within the normal range
1. QT interval within the normal range
1. Traffic accident
1. Risk of falls
1. Former smoker
1. Family risk of cardiovascular disease
1. Increased burden of communicable diseases
1. Risk of specific infections after a stay abroad
1. Diagnoses: diabetes, tumor with localization (but would usually be represented in the corresponding KDS module)

The distinction between findings (Condition) and measurements/observations (Observation) is often not exactly possible; in the borderline area a representation as Observation would often be preferred over the Condition. A determination can only be made for a concrete application context (in a specific implementation guide).

#### Measurement and associated finding

Findings can be related to the evidence / the reason (the observation/measurement):

1. Heart rate at 80/min within the normal range
1. Body weight (80 kg) at body height (180 cm) within the normal range
1. Heart rate

#### Symptoms (reported by patients)

1. Cough
1. Hoarseness
1. Shortness of breath (on exertion)
1. Weakness, fatigue
1. Pain (in the legs (after walking 50 m))
1. Dejection
1. Injury (to the hand (after a sports accident))
1. Headache
1. Nausea
1. Vomiting
1. Dizziness
1. Unconsciousness

#### Groups/complexes of symptoms/clinical signs

Symptoms/clinical signs can be combined into related symptom complexes (syndromes).

1. Ptosis, miosis, enophthalmos ⇒ Horner syndrome
1. SARS

