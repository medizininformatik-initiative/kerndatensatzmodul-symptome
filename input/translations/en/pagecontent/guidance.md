<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW — MACHINE TRANSLATION of input/pagecontent/guidance.md
     (DE-first migration 2026-08-31). Review at Gate C before release. -->

<!-- DERIVED:bridge source=none gate=B -->
> **Written during migration - review before release.** This page describes
> scenarios for applying the Symptoms/clinical phenotype module. The
> subject-matter relationships to other KDS modules are described in the
> [Guidance for Implementers](implementer-guidance.html); the information
> model on the pages [Logical Models](logical-models.html) and
> [UML Diagrams](uml-diagrams.html).
{: .ig-highlight .ig-highlight-blue}

### Description of scenarios for applying the modules

#### Measurements/observations

1. Heart rate = 80/min
2. QT interval = 400 ms
3. Body weight = 80 kg
4. Systolic blood pressure = 150 mm Hg
5. Laboratory values (these would rather be represented in the corresponding
   KDS Laboratory module)
6. Bone density, T-score < - 2.5
7. Clinical signs: abdominal tension, distended jugular veins
8. Clinical scores: APGAR score, Glasgow Coma Score
9. Personal characteristics: hair, eye and skin color
10. (Social) anamnestic characteristics: tobacco use, family support,
    cognitive status
11. Characteristics such as pregnancy status

#### Composite measurements/observations

Measurements that belong together in content can be represented as components
of a superordinate measurement:

12. Parameters of a pulmonary function test before and after bronchospasmolysis
13. Blood pressure measurements, systolic/diastolic or before and after
    exercise

The reference structure of clinically related measurements can be represented
by hierarchical linking into part–whole structures. Likewise, the type of
measurement and the performance of measurements (Procedure) can be represented
in the Observation.

#### Findings and diagnoses (determined by physicians)

1. Heart rate (age-appropriate) within the normal range
2. QT interval within the normal range
3. Traffic accident
4. Risk of falls
5. Former smoker
6. Family risk of cardiovascular disease
7. Increased burden of communicable diseases
8. Risk of specific infections after a stay abroad
9. Diagnoses: diabetes, tumor with localization (but would usually be
   represented in the corresponding KDS module)

The distinction between findings (Condition) and measurements/observations
(Observation) is often not exactly possible; in the borderline area a
representation as Observation would often be preferred over the Condition. A
determination can only be made for a concrete application context (in a
specific implementation guide).

#### Measurement and associated finding

Findings can be related to the evidence / the reason (the
observation/measurement):

1. Heart rate at 80/min within the normal range
2. Body weight (80 kg) at body height (180 cm) within the normal range
3. Heart rate

#### Symptoms (reported by patients)

1. Cough
2. Hoarseness
3. Shortness of breath (on exertion)
4. Weakness, fatigue
5. Pain (in the legs (after walking 50 m))
6. Dejection
7. Injury (to the hand (after a sports accident))
8. Headache
9. Nausea
10. Vomiting
11. Dizziness
12. Unconsciousness

#### Groups/complexes of symptoms/clinical signs

Symptoms/clinical signs can be combined into related symptom complexes
(syndromes).

1. Ptosis, miosis, enophthalmos ⇒ Horner syndrome
2. SARS