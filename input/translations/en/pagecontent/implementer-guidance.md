<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW — MACHINE TRANSLATION of input/pagecontent/implementer-guidance.md
     (DE-first migration 2026-08-31). Review at Gate C before release. -->

### Context in the overall project / relations to other modules

The variety of summarizing clinical statements about findings, measurements
and the status of patients — such as examination results, current and
historical diseases, symptoms and possibly also disease predispositions —
cannot be represented with the Diagnosis module or specific extension modules
alone. The summarizing statements/designations about states originate from
different sources such as observations, examinations and self- or
third-party anamneses. Further sources can be observations and clinical
states derived algorithmically by means of NLP or mathematical models.
Statements about observations and clinical states are currently needed in
individual consortium use cases (e.g. the SMITH phenotyping pipeline) and the
overarching joint projects CORD_MI, POLAR_MI and COVID-19-associated
projects.

Conditions are health statuses (such as symptoms of a disease or diagnoses)
expressed by patients or assigned by physicians. They are specified by a
single code, e.g. from the findings hierarchy of SNOMED CT.

Observations are observations that are usually collected by physicians in a
diagnostic process or measured by sensors, and always consist of a code/value
pair. The code specifies what is measured/observed (e.g. heart rate, skin
color, weight, temperature). The value specifies the measured value (e.g. 80,
pale, 80.5 kg, 37.0 ˚C). It can take different scale levels and have
corresponding units.

The Symptom/phenotype module is always used when there is (as yet) no
specific module for a Condition or Observation. The Symptom/phenotype module
is to be understood as a template for module authors for modeling diagnoses,
symptoms and observations, applied in superordinate modules so that
consistency of Condition and Observation can be maintained across modules.

1. Diagnoses can be represented in a differentiated way in the
   Symptom/clinical phenotype module. It must therefore be evaluated in
   parallel with entries in the Diagnosis module. In contrast to the
   Diagnosis module, the Symptom/phenotype module does not prescribe a
   terminology system for the code with which a Condition is to be coded, in
   order to allow the greatest possible flexibility.
2. The Laboratory module contains observations in the form of laboratory
   findings and is generally to be preferred for laboratory values. If
   laboratory values for a complex phenotype are also represented via the
   Symptom/clinical phenotype module, it must be evaluated in parallel.
3. Where coded findings/observations exist in specific modules intended for
   them, entries in the Symptom/clinical phenotype module count as additional
   (supplementary) information.
   1. The Symptom/clinical phenotype module is generally subordinate to
      specific modules. It can serve to represent clinical information that
      is not specifically represented. It must always be examined in a
      specific application context whether and how the Symptom/clinical
      phenotype module can and should be used.
4. Family relationships, which are important for family anamneses and the
   description of hereditary diseases, are not represented in this module.

#### Relationship to the Person module

The assignment of symptoms/phenotypes to a patient is made via references
from the Symptom/clinical phenotype module to the MODULE
[PERSON](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0).