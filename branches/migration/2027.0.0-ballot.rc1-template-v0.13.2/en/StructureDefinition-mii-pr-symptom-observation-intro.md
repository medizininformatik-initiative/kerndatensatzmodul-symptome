<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW — MACHINE TRANSLATION of
     input/intro-notes/StructureDefinition-mii-pr-symptom-observation-intro.md
     (DE-first migration 2026-08-31). Review at Gate C before release. -->

**Description**

Measurements or assignments for a patient. Most observations are simple
entity/value pairs, but they can also have a complex hierarchical structure.

This Observation can be used to capture both present and absent symptoms as
well as present or absent phenotypes. The modeling differs slightly and is
based on two different FHIR implementation guides:

- [FHIR R4 Symptoms Implementation Guide](https://hl7.org/fhir/uv/symptoms/2026Jan) for documenting symptoms
- [Phenomics Exchange for Research and Diagnostics](https://hl7.org/fhir/uv/phenomics-exchange/2026Jan/en/) for documenting phenotypes

**Note:** Both implementation guides were in their ballot phase at the time
of writing, so changes are still possible.

#### Symptom Observations

The following LOINC codes SHALL be used to capture symptoms:

- **Present symptoms**: `Observation.code` with LOINC `75325-1` (Symptom)
- **Absent symptoms**: `Observation.code` with LOINC `111551-8` (Symptom absent) - a preliminary code, not published in LOINC v2.81

Both Observation types use `valueCodeableConcept` to identify the specific
symptom. The coded value SHOULD come from the SNOMED
`404684003 |Clinical finding (finding)|` hierarchy.

**Component Observations**: Part of the symptom's structured information MAY
be modeled in `Observation.component`. See:
[Profile: Symptom Observation](https://hl7.org/fhir/uv/symptoms/2026Jan/en/StructureDefinition-SymptomObservation.html).

For the concrete implementation of these profiles, see the
[Symptoms IG](https://hl7.org/fhir/uv/symptoms/2026Jan).

#### Phenotype Observations

A phenotype Observation allows stating the **presence or absence** of a
phenotype:

- **`Observation.code`**: captures the phenotype (e.g. from HPO or SNOMED)
- **`Observation.valueCodeableConcept`**: uses the LOINC ValueSet [LL1937-3](https://loinc.org/LL1937-3/) with the values:
  - Present
  - Absent

**Observation components**: Additional aspects of the phenotype are captured
via `Observation.component`.

For the concrete implementation of these profiles, see the
[Phenomics Exchange IG](https://hl7.org/fhir/uv/phenomics-exchange/2026Jan/en/).

<div class="ig-highlight ig-highlight-orange">
<h5>Abstract profile</h5>
<p>This StructureDefinition is marked abstract and cannot be instantiated
directly. It serves exclusively as the basis for concrete profiles deriving
from it. Instances must always use a concrete sub-type.</p>
</div>

<!-- The tables below are IDENTICAL to the German intro note: they are generated
     from the FHIR resources, whose element texts (short/definition) are German —
     the resources themselves are not translated. -->
#### Must-support elements

<!-- GENERATED from fsh-generated/resources/StructureDefinition-mii-pr-symptom-observation.json
     (differential elements with mustSupport=true; source directive: Simplifier FQL). -->

| Feldname | Kurzbeschreibung | Hinweise |
|---|---|---|
| `Observation.identifier` |  |  |
| `Observation.status` |  |  |
| `Observation.category` |  |  |
| `Observation.code` |  |  |
| `Observation.subject` |  |  |
| `Observation.effective[x]` |  |  |
| `Observation.issued` |  |  |
| `Observation.value[x]` |  |  |
| `Observation.dataAbsentReason` |  |  |
| `Observation.interpretation` |  |  |
| `Observation.method` |  |  |
| `Observation.specimen` |  |  |
| `Observation.device` |  |  |
| `Observation.referenceRange` |  |  |
| `Observation.hasMember` |  |  |
| `Observation.derivedFrom` |  |  |
| `Observation.component` |  |  |
#### Mapping to the Logical Model

<!-- GENERATED from fsh-generated/resources/StructureDefinition-mii-lm-symptom.json
     (differential elements mii-lm-symptom.Observation.*; source directive: Simplifier FQL
     against the legacy LM canonical). -->

| FHIR | Datensatz | Erklärung |
|---|---|---|
| `Observation` | mii-lm-symptom.Observation | Observation i. S. einer FHIR Observation: Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein. |
| `Observation.identifier` | mii-lm-symptom.Observation.Identifikator | Eindeutiger Identifier der Observation |
| `Observation.code.coding.display` | mii-lm-symptom.Observation.Bezeichnung | Natürlichsprachige Bezeichnung der Observation |
| `Observation.code.text` | mii-lm-symptom.Observation.Beschreibung | Natürlichsprachige Beschreibung der Beobachtung |
| `Observation.category` | mii-lm-symptom.Observation.Kategorie | Kategorie der Observation |
| `Observation.status` | mii-lm-symptom.Observation.Status | Status der Observation |
| `Observation.code` | mii-lm-symptom.Observation.Code | Code der Observation: z. B. LOINC, SNOMED CT, HPO |
| `Observation.effectiveDateTime` | mii-lm-symptom.Observation.Zeitspanne | Klinisch relevante Zeitpunkte/Zeitspanne |
| `Observation.effectivePeriod.start` | mii-lm-symptom.Observation.Zeitspanne.start | Klinisch relevanter (Start-)Zeitpunkt einer Observation |
| `Observation.effectivePeriod.end` | mii-lm-symptom.Observation.Zeitspanne.end | Klinisch relevanter Endzeitpunkt einer Observation |
| `Observation.issued` | mii-lm-symptom.Observation.Dokumentationsdatum | Zeitpunkt der Dokumentation der Observation. |
| `Observation.value[x]` | mii-lm-symptom.Observation.Wert[x] | Wert der Observation |
| `Observation.referenceRange` | mii-lm-symptom.Observation.ReferenzIntervall | Referenz-Intervall entsprechend des eingebetteten komplexen Typs (Observation.referenceRange) |
| `Observation.dataAbesentReason` | mii-lm-symptom.Observation.GrundNichtVorhandenerDaten | Grund für nicht vorhandene Daten der Observation |
| `Observation.interpretation` | mii-lm-symptom.Observation.Interpretation | Interpretation einer Observation |
| `Observation.note` | mii-lm-symptom.Observation.Kommentar | Natürlichsprachiger Kommentar zur Observation. |
| `Observation.bodySite` | mii-lm-symptom.Observation.Lokalisation | Lokalisation der Observation als SNOMED CT Body Structure codiert. |
| `Observation.subject` | mii-lm-symptom.Observation.Patient | Link auf Patient |
| `Observation.encounter` | mii-lm-symptom.Observation.Fall | Fall der Observation |
| `Observation.specimen` | mii-lm-symptom.Observation.Probe | Referenz auf die Probe, auf der die Observation basiert |
| `Observation.device` | mii-lm-symptom.Observation.Messgeraet | Referenz auf das verwendete Mess-/Untersuchungsgerät |
| `Observation.method` | mii-lm-symptom.Observation.Methode | Methode der Untersuchung |
| `Observation.hasMember` | mii-lm-symptom.Observation.BezugZuHatTeil | Bezug zu Ressourcen, die zu dieser Observation gehören (Observation, QuestionnaireResponse, MolecularSequence) |
| `Observation.derivedFrom` | mii-lm-symptom.Observation.BezugVonIstTeilVon | Referenz auf Messunger/Beobachtungen, aus denen diese Observation hervorgeht. |
| `Observation.component` | mii-lm-symptom.Observation.Komponente | Komponente einer Observation mit mehreren Komponenten (z. B. Blutdruck) entsprechend des komplexen Typs (Observation.component) mit .code, .value, .dataAbsentReason, .interpretation, .referenceRange (alle wie oben beschrieben) |
#### Examples

- Example of a symptom Observation: [mii-exa-symptom-chestpain](Observation-mii-exa-symptom-chestpain.html)
- Example of a phenotype Observation: [mii-exa-symptom-arachnodactyly](Observation-mii-exa-symptom-arachnodactyly.html)
