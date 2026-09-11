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

<table class="grid">
<thead><tr><th>Feldname</th><th>Kurzbeschreibung</th><th>Hinweise</th></tr></thead>
<tbody>
<tr><td><code>Observation.identifier</code></td><td></td><td></td></tr>
<tr><td><code>Observation.status</code></td><td></td><td></td></tr>
<tr><td><code>Observation.category</code></td><td></td><td></td></tr>
<tr><td><code>Observation.code</code></td><td></td><td></td></tr>
<tr><td><code>Observation.subject</code></td><td></td><td></td></tr>
<tr><td><code>Observation.effective[x]</code></td><td></td><td></td></tr>
<tr><td><code>Observation.issued</code></td><td></td><td></td></tr>
<tr><td><code>Observation.value[x]</code></td><td></td><td></td></tr>
<tr><td><code>Observation.dataAbsentReason</code></td><td></td><td></td></tr>
<tr><td><code>Observation.interpretation</code></td><td></td><td></td></tr>
<tr><td><code>Observation.method</code></td><td></td><td></td></tr>
<tr><td><code>Observation.specimen</code></td><td></td><td></td></tr>
<tr><td><code>Observation.device</code></td><td></td><td></td></tr>
<tr><td><code>Observation.referenceRange</code></td><td></td><td></td></tr>
<tr><td><code>Observation.hasMember</code></td><td></td><td></td></tr>
<tr><td><code>Observation.derivedFrom</code></td><td></td><td></td></tr>
<tr><td><code>Observation.component</code></td><td></td><td></td></tr>
</tbody>
</table>
#### Mapping to the Logical Model

<!-- GENERATED from fsh-generated/resources/StructureDefinition-mii-lm-symptom.json
     (differential elements mii-lm-symptom.Observation.*; source directive: Simplifier FQL
     against the legacy LM canonical). -->

<table class="grid">
<thead><tr><th>FHIR</th><th>Datensatz</th><th>Erklärung</th></tr></thead>
<tbody>
<tr><td><code>Observation</code></td><td>mii-lm-symptom.Observation</td><td>Observation i. S. einer FHIR Observation: Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein.</td></tr>
<tr><td><code>Observation.identifier</code></td><td>mii-lm-symptom.Observation.Identifikator</td><td>Eindeutiger Identifier der Observation</td></tr>
<tr><td><code>Observation.code.coding.display</code></td><td>mii-lm-symptom.Observation.Bezeichnung</td><td>Natürlichsprachige Bezeichnung der Observation</td></tr>
<tr><td><code>Observation.code.text</code></td><td>mii-lm-symptom.Observation.Beschreibung</td><td>Natürlichsprachige Beschreibung der Beobachtung</td></tr>
<tr><td><code>Observation.category</code></td><td>mii-lm-symptom.Observation.Kategorie</td><td>Kategorie der Observation</td></tr>
<tr><td><code>Observation.status</code></td><td>mii-lm-symptom.Observation.Status</td><td>Status der Observation</td></tr>
<tr><td><code>Observation.code</code></td><td>mii-lm-symptom.Observation.Code</td><td>Code der Observation: z. B. LOINC, SNOMED CT, HPO</td></tr>
<tr><td><code>Observation.effectiveDateTime</code></td><td>mii-lm-symptom.Observation.Zeitspanne</td><td>Klinisch relevante Zeitpunkte/Zeitspanne</td></tr>
<tr><td><code>Observation.effectivePeriod.start</code></td><td>mii-lm-symptom.Observation.Zeitspanne.start</td><td>Klinisch relevanter (Start-)Zeitpunkt einer Observation</td></tr>
<tr><td><code>Observation.effectivePeriod.end</code></td><td>mii-lm-symptom.Observation.Zeitspanne.end</td><td>Klinisch relevanter Endzeitpunkt einer Observation</td></tr>
<tr><td><code>Observation.issued</code></td><td>mii-lm-symptom.Observation.Dokumentationsdatum</td><td>Zeitpunkt der Dokumentation der Observation.</td></tr>
<tr><td><code>Observation.value[x]</code></td><td>mii-lm-symptom.Observation.Wert[x]</td><td>Wert der Observation</td></tr>
<tr><td><code>Observation.referenceRange</code></td><td>mii-lm-symptom.Observation.ReferenzIntervall</td><td>Referenz-Intervall entsprechend des eingebetteten komplexen Typs (Observation.referenceRange)</td></tr>
<tr><td><code>Observation.dataAbesentReason</code></td><td>mii-lm-symptom.Observation.GrundNichtVorhandenerDaten</td><td>Grund für nicht vorhandene Daten der Observation</td></tr>
<tr><td><code>Observation.interpretation</code></td><td>mii-lm-symptom.Observation.Interpretation</td><td>Interpretation einer Observation</td></tr>
<tr><td><code>Observation.note</code></td><td>mii-lm-symptom.Observation.Kommentar</td><td>Natürlichsprachiger Kommentar zur Observation.</td></tr>
<tr><td><code>Observation.bodySite</code></td><td>mii-lm-symptom.Observation.Lokalisation</td><td>Lokalisation der Observation als SNOMED CT Body Structure codiert.</td></tr>
<tr><td><code>Observation.subject</code></td><td>mii-lm-symptom.Observation.Patient</td><td>Link auf Patient</td></tr>
<tr><td><code>Observation.encounter</code></td><td>mii-lm-symptom.Observation.Fall</td><td>Fall der Observation</td></tr>
<tr><td><code>Observation.specimen</code></td><td>mii-lm-symptom.Observation.Probe</td><td>Referenz auf die Probe, auf der die Observation basiert</td></tr>
<tr><td><code>Observation.device</code></td><td>mii-lm-symptom.Observation.Messgeraet</td><td>Referenz auf das verwendete Mess-/Untersuchungsgerät</td></tr>
<tr><td><code>Observation.method</code></td><td>mii-lm-symptom.Observation.Methode</td><td>Methode der Untersuchung</td></tr>
<tr><td><code>Observation.hasMember</code></td><td>mii-lm-symptom.Observation.BezugZuHatTeil</td><td>Bezug zu Ressourcen, die zu dieser Observation gehören (Observation, QuestionnaireResponse, MolecularSequence)</td></tr>
<tr><td><code>Observation.derivedFrom</code></td><td>mii-lm-symptom.Observation.BezugVonIstTeilVon</td><td>Referenz auf Messunger/Beobachtungen, aus denen diese Observation hervorgeht.</td></tr>
<tr><td><code>Observation.component</code></td><td>mii-lm-symptom.Observation.Komponente</td><td>Komponente einer Observation mit mehreren Komponenten (z. B. Blutdruck) entsprechend des komplexen Typs (Observation.component) mit .code, .value, .dataAbsentReason, .interpretation, .referenceRange (alle wie oben beschrieben)</td></tr>
</tbody>
</table>
#### Examples

- Example of a symptom Observation: [mii-exa-symptom-chestpain](Observation-mii-exa-symptom-chestpain.html)
- Example of a phenotype Observation: [mii-exa-symptom-arachnodactyly](Observation-mii-exa-symptom-arachnodactyly.html)
