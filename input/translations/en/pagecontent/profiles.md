<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW — MACHINE TRANSLATION of input/pagecontent/profiles.md
     (DE-first migration 2026-08-31). Review at Gate C before release. -->

### FHIR profiles

Wherever possible, the work on the core data set specifications is based on
international standards and terminologies. The
[International Patient Summary](http://hl7.org/fhir/uv/ips/history.html)
deserves particular mention here. Adaptation to the general conditions of the
German health care system is achieved by using the
[German base profiles](https://ig.fhir.de/basisprofile-de/1.4.0/Home.html) of
HL7 Germany.

All elements of the core data set, adapted to the details and requirements of
the use cases of the Medical Informatics Initiative, are described below in
the form of FHIR StructureDefinitions. The necessity of adapting the FHIR
profiles is explained in textual form beneath the respective profiles.

<div class="ig-highlight ig-highlight-orange">
<h5>Mandatory / must-support elements</h5>
<p>For mandatory or must-support elements, reference is made to the
corresponding
<a href="https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support">IPS rules</a>,
which also apply to this implementation guide.</p>
</div>

<!-- DERIVED:summary source=none gate=B -->
> **Written during migration - review before release.** This module's
> profiles:
> **[MII PR Symptom Observation](StructureDefinition-mii-pr-symptom-observation.html)**
> — abstract profile for observations (symptoms, measurements, phenotypes) ·
> **[MII PR Symptom Condition](StructureDefinition-mii-pr-symptom-condition.html)**
> — abstract profile for clinical states, problems and diagnoses.
{: .ig-highlight .ig-highlight-blue}

### Relationship between Observation and Condition

**Note**: The content of this section is based on the
[HL7 FHIR Symptoms Implementation Guide](https://hl7.org/fhir/uv/symptoms/2026Jan/en/diagnosis.html).
The development of that implementation guide is being followed closely and
serves as a template for this guide.

#### Relationship between symptoms and diagnoses

In clinical documentation, symptoms represent the subjective evidence of a
health condition, typically experienced and reported by the patient (e.g.
"fatigue", "chest pain", "nausea"). Diagnoses, on the other hand, represent
the clinical interpretation or determination of an underlying disease that
explains one or more symptoms or findings (e.g. "pneumonia", "myocardial
infarction", "anemia").

Within FHIR, these two kinds of information are represented by different but
complementary resources:

| Clinical concept | FHIR resource | Terminologies | Description |
|---------------------|----------------|---------------|--------------|
| Symptom | Observation | SNOMED CT, LOINC | Captures the presence, absence, severity or characteristics of a symptom as reported by the patient or observed by a clinician. |
| Diagnosis | Condition | SNOMED CT, ICD-10, ICD-11 | Represents the clinician's diagnostic conclusion or disease identification that explains one or more symptoms and findings. |

Both resource types can coexist within a patient record and are frequently
linked to support clinical reasoning, quality measurement and clinical
decision support use cases.

#### Linking symptoms and diagnoses in FHIR

FHIR offers several mechanisms for establishing relationships between
Observations representing symptoms and Conditions representing diagnoses.

##### Condition.evidence.detail

The primary mechanism for linking a Condition to supporting evidence is the
`Condition.evidence.detail` element. This allows a Condition to reference one
or more Observations (symptoms, test results or other findings) that
contributed to the diagnostic conclusion.

##### Observation extension: associatedSymptomOrCondition

When documenting a symptom Observation, the `associatedSymptomOrCondition`
extension can link that symptom to a known or suspected Condition to which it
relates.

#### Conceptual model

```
Patient experience → Symptom (Observation) → Clinical interpretation → Diagnosis (Condition)
```

- **Symptoms (Observations)** provide the evidence-based foundation for
  diagnostic reasoning.
- **Diagnoses (Conditions)** represent the resulting clinical interpretation
  and frequently reference the Observations that support them.

#### Implementation notes

- **Traceability**: Use `Condition.evidence.detail` to maintain a traceable,
  computable link between diagnostic conclusions and their supporting
  findings.
- **Symptom clustering**: Multiple symptom Observations can be grouped using
  `Observation.hasMember`, or captured together via a
  `Questionnaire`/`QuestionnaireResponse` or an Observation panel.
- **Temporal context**: Add `effective[x]` elements to Observations and
  Conditions to correctly reflect timing and sequence.
- **Provenance & certainty**: Capture the provenance (who documented the
  symptom) and the certainty/verification status of the Condition (e.g.
  `Condition.verificationStatus`) to clarify whether a diagnosis is
  provisional, confirmed or refuted.
- **Terminology alignment**: Prefer SNOMED CT for clinical concepts (symptoms
  and conditions) to enable semantic linking. Use LOINC for structured
  instruments or patient-reported measurements where appropriate. Use
  ICD-10/ICD-11 for billing/classification purposes while clinical codes are
  retained for interoperability.
- **Multiplicity**: A single Observation (symptom) can corroborate several
  Conditions; likewise, a single Condition can be supported by several
  Observations.

#### Summary

| Aspect | Symptom | Diagnosis |
|--------|---------|----------|
| Clinical nature | Experienced or observed manifestation | Underlying cause or interpretation |
| Primary FHIR resource | Observation | Condition |
| Relationship element | Observation.extension:associatedSymptomOrCondition | Condition.evidence.detail |
| Typical codes | SNOMED CT (e.g. chest pain), LOINC (e.g. nausea severity) | SNOMED CT, ICD-10 (e.g. pneumonia, migraine) |
| Example relationship | A symptom supports one or more Conditions | A Condition references several supporting Observations |

#### Best practice

Use `Condition.evidence.detail` to link Conditions to the Observations
(symptoms) that support them. Optionally, use
`Observation.extension:associatedSymptomOrCondition` to state the reverse
relationship. Ensure consistent coding, provenance and temporal alignment to
support computable reasoning and interoperability.