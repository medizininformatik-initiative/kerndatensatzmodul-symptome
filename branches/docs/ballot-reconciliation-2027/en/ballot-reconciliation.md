# Ballot Reconciliation 2027.0.0-ballot - MII IG Symptom v2027.0.0-ballot

* [**Table of Contents**](toc.md)
* **Ballot Reconciliation 2027.0.0-ballot**

## Ballot Reconciliation 2027.0.0-ballot

This page is a **working document** for the reconciliation of the ballot comments on version `2027.0.0-ballot` of the MII core data set module Symptom/clinical phenotype. It lists the open tickets from the HL7 Germany ballot ([Jira query](https://hl7germany.atlassian.net/issues/?jql=project+%3D+HDB+AND+created+%3E%3D+-200d+AND+statusCategory+%21%3D+Done+AND+%22Project%5BDropdown%5D%22+in+%28%22MII+-+Modul+Symptom+%2F+klinischer+Ph%C3%A4notyp%22%29+ORDER+BY+created+DESC)), grouped by category, with a **proposed** resolution for each. All proposals are drafts, to be ratified or rejected in the meeting.

#### Legend

| | |
| :--- | :--- |
| **Proposed: accept** | Proposal to implement the change for`2027.0.0`; to be ratified in the meeting. |
| **Proposed: accept (docs)** | Proposal to change documentation or guidance only, no artefact changes; to be ratified. |
| **Discuss** | Design question; a proposal is given, the decision is made in the meeting. |
| **Planned reply** | Question or cross-module topic; a reply in Jira is planned (draft given), no artefact change in this IG. |

**Breaking** = **yes** if instances that conform to the last published release (package `2024.0.0-ballot`) no longer validate after the change. New Must Support flags do not invalidate data but extend the obligations of implementations; they are marked **no (MS)**.

For context: compared with `2024.0.0-ballot`, `2027.0.0-ballot` already contains two breaking changes, the canonical URL change (`…/fhir/ext/modul-symptom` → `…/fhir/modul-symptom`) and marking both profiles abstract (see HDB-1096 and HDB-1079).

-------

### A. Profile changes – Condition

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-1082](https://hl7germany.atlassian.net/browse/HDB-1082) | Condition.code: cardinality and code systems | `code`1..1 with the invariant`code.coding.exists() or code.text.exists()`. Open slicing of`code.coding`by`system`with MS slices as in the Diagnose module:`sct`(bound to a SNOMED CT findings ValueSet),`icd10-gm`(`CodingICD10GM`from the German base profiles, incl. multiple coding, laterality, diagnostic certainty),`orphanet`,`hpo`(see HDB-1083), optionally`alpha-id`. The logical model already names these systems; MedDRA stays allowed without its own slice. Depends on the delineation from the Diagnose module (HDB-1084). | Proposed: accept | **yes**(Conditions without`code`become invalid) |
| [HDB-1081](https://hl7germany.atlassian.net/browse/HDB-1081) | Condition.onset/abatement: mapping and Must Support | (a)**accept:**`abatement[x]`MS with slices`abatementDateTime`and`abatementPeriod`; correct the mapping of`KlinischRelevanterZeitraum.Zeitraum.end`from`onsetPeriod.end`to`abatement[x]`(today`onsetPeriod.end`is the end of the period in which the onset lay). (b)**accept:**add the slices`onsetDateTime`and`onsetAge`as MS, as in the Diagnose module. (c)**change:**allow the Lebensphase extension on`onsetRange`/`abatementRange`rather than`onsetAge`/`abatementAge`. Its context in`de.basisprofil.r4`1.6.0 only allows`dateTime`,`Period.start`,`Period.end`and`Range`; the Basis module moves it for the same reason (HDB-1075). | Proposed: accept | no (MS) |
| [HDB-1092](https://hl7germany.atlassian.net/browse/HDB-1092) | Cardinalities and code systems: LM vs. profiles | `recordedDate`1..1 as in the Diagnose module. Align the LM`Status`from 1..1 to 0..1 with`clinicalStatus`:`clinicalStatus`cannot become 1..1, because FHIR forbids it when`verificationStatus = entered-in-error`(invariant`con-5`). Correct the code system stated for`Verifikationsstatus`in the LM from SNOMED CT to`condition-ver-status`(the profile binds it required). | Proposed: accept | **yes**(`recordedDate`1..1) |
| [HDB-1093](https://hl7germany.atlassian.net/browse/HDB-1093) | targetProfile and slice names | Restrict`evidence.detail`to`Reference(Observation)`; once concrete profiles exist (HDB-1079), to this module's Observation profile.`stage.assessment`is already restricted to`ClinicalImpression`,`DiagnosticReport`and`Observation`by the FHIR base standard; no change needed there. Rename the slice`assertedDate`to`Feststellungsdatum`, as in the Diagnose module (slice names do not appear in instances). | Proposed: accept | **yes**(`evidence.detail`to other resource types becomes invalid) |
| [HDB-1095](https://hl7germany.atlassian.net/browse/HDB-1095) | Condition.bodySite: harmonisation with the Diagnose module | Slice`bodySite.coding`by`system`and add the MS slice`snomed-ct`bound to the ValueSet`mii-vs-diagnose-bodystructure-snomed`, as in the Diagnose module; this replaces the unversioned`body-site`binding. The ValueSet lives in the Basis module's package, which this module does not depend on today.**Decision needed:**add a dependency on`de.medizininformatikinitiative.kerndatensatz.base`, or move the ValueSet to the Meta module for all modules. Align the EU core BodyStructure target with the Basis module's decision (HDB-1074,`hl7.fhir.eu.base`2.0.1). | Proposed: accept | **yes**(SNOMED codes outside the ValueSet become invalid) |

### B. Profile changes – Observation and both profiles

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-1086](https://hl7germany.atlassian.net/browse/HDB-1086) | Patient and encounter reference (subject, encounter) | In both profiles`subject`1..1 restricted to`Reference(Patient)`, with`subject.reference`1..1 MS (`Group`is dropped; the module has no use case for groups).`Observation.encounter`MS. Document the link to the Person and Fall modules in the profile descriptions, including the intended encounter level (facility encounter, as in the Diagnose module). | Proposed: accept | **yes**(`Observation.subject`becomes mandatory,`Group`is dropped) |
| [HDB-1091](https://hl7germany.atlassian.net/browse/HDB-1091) | Missing Must Support elements | Flag`Condition.note`,`Observation.note`,`Observation.bodySite`and`performer`in both profiles as MS; this covers all LM elements (comment, localisation) and the provenance the profile page asks for. | Proposed: accept | no (MS) |
| [HDB-1087](https://hl7germany.atlassian.net/browse/HDB-1087) | Observation.effective[x] / value[x]: MS on choice types | Restrict`effective[x]`to`dateTime`or`Period`, as in the logical model (`Zeitspanne`). For`value[x]`and`component.value[x]`keep all types allowed, but set MS only on`Quantity`,`CodeableConcept`,`string`,`boolean`,`integer`and`Range`(type-level MS instead of exclusion, so existing data stays valid). | Proposed: accept | **yes**(`effective[x]`as`Timing`/`instant`becomes invalid) |
| [HDB-1094](https://hl7germany.atlassian.net/browse/HDB-1094) | Extension associatedSymptomOrCondition | The comment is correct:`workflow-supportingInfo`means "information that supports this Observation". Proposal: make`Condition.evidence.detail`the only binding mechanism and remove the slice`associatedSymptomOrCondition`; a suitable extension from the HL7 FHIR Symptoms IG can be reconsidered once that IG is published. Related to HDB-1080. | Discuss | no (the extension stays allowed as an unprofiled extension) |
| [HDB-1083](https://hl7germany.atlassian.net/browse/HDB-1083) | HPO code system URL | Change the alias`$HPO`to`http://human-phenotype-ontology.org`(as HL7 Terminology and the Molekulargenetik module use), update the example`mii-exa-symptom-arachnodactyly`and add the`hpo`slice with`patternCoding.system`(see HDB-1082). | Proposed: accept | no |

### C. Design decisions

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-1079](https://hl7germany.atlassian.net/browse/HDB-1079) | Abstract profiles vs. CapabilityStatement | The comment is correct: there is no concrete derived profile, the CapabilityStatement requires the abstract profiles, and the examples carry no`meta.profile`. Proposal: ship both profiles as**concrete**again, as in`2024.0.0-ballot`and in the other KDS modules; concrete sub-profiles (e.g. symptom, phenotype, measurement) can be added later. This also removes one of the two breaking changes from HDB-1096. | Discuss | no (reverts a change) |
| [HDB-1080](https://hl7germany.atlassian.net/browse/HDB-1080) | Symptom as Condition or Observation? | Define one binding rule. Proposal: a symptom as a clinical statement is represented as a**Condition**with a SNOMED CT finding; an**Observation**only for attribute–value pairs (presence, severity, measured value). Mark the section "Relationship between Observation and Condition" on the Profiles page, taken from the HL7 FHIR Symptoms IG, as informative (the Symptoms IG is still in ballot), and add a parallel Condition example for the chest pain. | Discuss | no (docs) |
| [HDB-1084](https://hl7germany.atlassian.net/browse/HDB-1084) | Delineation from the Diagnose module | Define a decision criterion for data extraction. Proposal: diagnoses coded with ICD-10-GM always go to the Diagnose module; symptoms, findings and conditions not coded with ICD-10 go to this module. The assignment is recognisable via`meta.profile`(requires concrete profiles, HDB-1079). Reword the sentence "It must therefore be evaluated in parallel to entries in the Diagnose module" on the implementer guidance page accordingly, and state that a diagnosis is held in one module only. | Discuss | depends on the decision |
| [HDB-1028](https://hl7germany.atlassian.net/browse/HDB-1028) | Pre- vs. postcoordination (FHIR Symptoms IG) | State a preference in the guidance. Draft: use precoordinated SNOMED CT concepts where available; postcoordination only when no suitable precoordinated concept exists. Link the comparison in the[FHIR Symptoms IG](https://build.fhir.org/ig/HL7/fhir-symptoms-ig/en/index.html). According to the ticket, the template recommends postcoordination; to be clarified in the meeting. | Discuss | no (docs) |

### D. CapabilityStatement and terminology

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-1085](https://hl7germany.atlassian.net/browse/HDB-1085) | CapabilityStatement: scope of the SHALL search parameters | The comment is correct: today every base search parameter is SHALL (Observation 35, Condition 23), with no`_include`/`_revinclude`. Proposal: SHALL only for search parameters on MS elements (`_id`,`_lastUpdated`,`_profile`,`patient`/`subject`,`encounter`,`code`,`category`, status parameters, date parameters,`identifier`), the rest SHOULD or MAY. Add`_include`/`_revinclude`, e.g.`Condition:subject`,`Observation:encounter`,`Condition:evidence-detail`. | Proposed: accept | no (relaxes server obligations) |
| [HDB-1090](https://hl7germany.atlassian.net/browse/HDB-1090) | SNOMED CT edition in the CRMI manifest | Draft: the International Edition is intended and matches the Basis module's manifest (`900000000000207008`, there version`20260701`); switching to the German Edition is a cross-module decision (Meta module, Terminology Version Policy). The version is raised to`20260701`, as in the Basis module. CRMI is required because all artefacts of the 2027 KDS modules carry the CRMI profiles in`meta.profile`. | Planned reply | no |

### E. Examples

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-1088](https://hl7germany.atlassian.net/browse/HDB-1088) | Incomplete examples | One complete example per scenario on the guidance page (symptom, measurement with components, phenotype, Condition with`evidence.detail`to an Observation, life phase) with`meta.profile`,`category`,`encounter`, timing,`performer`and`display`. Correct the examples page (the instance uses the answer code`LA9633-4`, not the answer list`LL1937-3`). Rename the Patient examples to`mii-exa-symptom-patient`; the MII Patient profile needs the same dependency as HDB-1095. | Proposed: accept | no |

### F. Documentation and editorial

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [HDB-1097](https://hl7germany.atlassian.net/browse/HDB-1097) | Editorial | **Accept:**fix the typos in the mapping paths (`Conditon.*`,`dataAbesentReason`) and in the text (all reported places found in`index.md`,`guidance.md`,`capability-statements.md`, the logical model and the intro notes); clarify`BezugVonIstTeilVon`→`derivedFrom`("derived from"); use "extension module" consistently (also in the LM); add a`title`to both profiles (both lack one); align the CapabilityStatement canonical with its id (`…/CapabilityStatement/mii-cps-symptom-capabilitystatement`).**Reply:**`jurisdiction`is already`urn:iso:std:iso:3166#DE`; the IG id`mii-ig-symptom`follows the MII convention (`mii-ig-base`,`mii-ig-medikation`) and need not equal the package id; the`dependsOn.uri`of the German base profiles is the package URI SUSHI generates, because that package publishes no IG canonical. | Proposed: accept (docs) | no |
| [HDB-1096](https://hl7germany.atlassian.net/browse/HDB-1096) | Change history: breaking changes | The comment is correct. In the`2027.0.0-ballot`section, mark the canonical URL change and the abstract flag (if kept after HDB-1079) with**BREAKING:**, describe the impact on existing data (`meta.profile`with the old canonical no longer validates) and the migration path, and explain the removal of the GCS profile (it was in no published package). List every breaking change accepted in this ballot round the same way. | Proposed: accept (docs) | no |
| [HDB-1089](https://hl7germany.atlassian.net/browse/HDB-1089) | Migration markers and status in the ballot | **Accept:**remove the "Written during migration - review before release" markers (eight places on seven pages, per language) after reviewing the content.**Reply:**`status: active`and`experimental: false`match the other KDS modules (Basis, Medikation); the ballot status is expressed in`publication-request.json`(`status: ballot`). The publication path differs from the canonical on purpose (published on GitHub Pages, canonical on medizininformatik-initiative.de). | Proposed: accept (docs) | no |
| [HDB-1029](https://hl7germany.atlassian.net/browse/HDB-1029) | Update link to the German base profiles | Update the link on the Profiles page from`basisprofile-de/1.4.0`to`1.6.0`(the home page already links 1.6.0). | Proposed: accept (docs) | no |

