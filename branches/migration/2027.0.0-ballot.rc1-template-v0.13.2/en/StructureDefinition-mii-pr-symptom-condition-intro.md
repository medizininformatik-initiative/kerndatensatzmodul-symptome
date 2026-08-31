<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW — MACHINE TRANSLATION of
     input/intro-notes/StructureDefinition-mii-pr-symptom-condition-intro.md
     (DE-first migration 2026-08-31). Review at Gate C before release. -->

Clinical states, problems, diagnoses or other events and situations.
Conditions can be documented by health professionals as descriptions of
diseases. Conditions can be expressed by patients themselves in the course of
an anamnesis (symptom).

<div class="ig-highlight ig-highlight-orange">
<h5>Abstract profile</h5>
<p>This StructureDefinition is marked abstract and cannot be instantiated
directly. It serves exclusively as the basis for concrete profiles deriving
from it. Instances must always use a concrete sub-type.</p>
</div>

**Diagnostic certainty**

The presence or absence of a clinical state or a diagnosis can be recorded
via the elements `Condition.clinicalStatus` and
`Condition.verificationStatus`.

The following combinations of `clinicalStatus` and `verificationStatus` are
necessary to equivalently represent the four values of diagnostic certainty:

- A (excluded) => clinicalStatus = empty, verificationStatus="refuted"
- G (confirmed diagnosis) => clinicalStatus = "active", verificationStatus="confirmed"
- V (suspected / to rule out) => clinicalStatus = "active", verificationStatus="provisional" or "differential"
- Z (status post) => clinicalStatus = "resolved", verificationStatus="confirmed"

See also diagnostic certainty in the
[FHIR base profiles](https://ig.fhir.de/basisprofile-de/1.5.4/ig-markdown-Ressourcen-DiagnosenCondition.html)
and in the [MII Diagnosis module](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0).

<!-- The tables below are IDENTICAL to the German intro note: they are generated
     from the FHIR resources, whose element texts (short/definition) are German —
     the resources themselves are not translated. -->
#### Must-support elements

<!-- GENERATED from fsh-generated/resources/StructureDefinition-mii-pr-symptom-condition.json
     (differential elements with mustSupport=true; source directive: Simplifier FQL). -->

<table class="grid">
<thead><tr><th>Feldname</th><th>Kurzbeschreibung</th><th>Hinweise</th></tr></thead>
<tbody>
<tr><td><code>Condition.extension:assertedDate</code></td><td></td><td></td></tr>
<tr><td><code>Condition.identifier</code></td><td></td><td></td></tr>
<tr><td><code>Condition.clinicalStatus</code></td><td></td><td></td></tr>
<tr><td><code>Condition.verificationStatus</code></td><td></td><td></td></tr>
<tr><td><code>Condition.category</code></td><td></td><td></td></tr>
<tr><td><code>Condition.severity</code></td><td></td><td></td></tr>
<tr><td><code>Condition.code</code></td><td></td><td></td></tr>
<tr><td><code>Condition.bodySite</code></td><td></td><td></td></tr>
<tr><td><code>Condition.subject</code></td><td></td><td></td></tr>
<tr><td><code>Condition.encounter</code></td><td></td><td></td></tr>
<tr><td><code>Condition.onset[x]</code></td><td></td><td></td></tr>
<tr><td><code>Condition.onset[x]:onsetPeriod</code></td><td></td><td></td></tr>
<tr><td><code>Condition.onset[x]:onsetPeriod.start.extension:lebensphase-von</code></td><td></td><td></td></tr>
<tr><td><code>Condition.onset[x]:onsetPeriod.end.extension:lebensphase-bis</code></td><td></td><td></td></tr>
<tr><td><code>Condition.recordedDate</code></td><td></td><td></td></tr>
<tr><td><code>Condition.stage</code></td><td></td><td></td></tr>
<tr><td><code>Condition.stage.summary</code></td><td></td><td></td></tr>
<tr><td><code>Condition.stage.assessment</code></td><td></td><td></td></tr>
<tr><td><code>Condition.stage.type</code></td><td></td><td></td></tr>
<tr><td><code>Condition.evidence</code></td><td></td><td></td></tr>
<tr><td><code>Condition.evidence.code</code></td><td></td><td></td></tr>
<tr><td><code>Condition.evidence.detail</code></td><td></td><td></td></tr>
</tbody>
</table>
#### Mapping to the Logical Model

<!-- GENERATED from fsh-generated/resources/StructureDefinition-mii-lm-symptom.json
     (differential elements mii-lm-symptom.Condition.*; source directive: Simplifier FQL
     against the legacy LM canonical). -->

<table class="grid">
<thead><tr><th>FHIR</th><th>Datensatz</th><th>Erklärung</th></tr></thead>
<tbody>
<tr><td><code>Condition</code></td><td>mii-lm-symptom.Condition</td><td>Im Sinne einer FHIR Condition: klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom).</td></tr>
<tr><td><code>Condition.code</code></td><td>mii-lm-symptom.Condition.Code</td><td>Code für ein Symptom, Phänomen, Erkrankung, Disposition: SNOMED CT (Findings), ICD-10, OrphaCodes, HPO, MedDRA</td></tr>
<tr><td><code>Condition.identifier</code></td><td>mii-lm-symptom.Condition.Identifikator</td><td>Externer Identifikator für die Condition</td></tr>
<tr><td><code>Condition.code.coding.display</code></td><td>mii-lm-symptom.Condition.Bezeichnung</td><td>Natürlichsprachige Bezeichnung für ein Symptom, Diagnose, Erkrankung, Phänotyp, Disposition</td></tr>
<tr><td><code>Condition.code.text</code></td><td>mii-lm-symptom.Condition.Beschreibung</td><td>Natürlichsprachige Beschreibung für ein Symptom, eine Erkrankung, eine Diagnose oder eine Disposition.</td></tr>
<tr><td><code>Condition.category</code></td><td>mii-lm-symptom.Condition.Kategorie</td><td>Kategorien der Condition (z.B. problem-list-item | encounter-diagnosis)</td></tr>
<tr><td><code>Conditon.bodySite</code></td><td>mii-lm-symptom.Condition.Lokalisation</td><td>Lokalisation eines Symptoms etc. Körperstellen (Lokalisationen) werden SNOMED CT kodiert.</td></tr>
<tr><td><code>Conditon.onset[x]</code></td><td>mii-lm-symptom.Condition.KlinischRelevanterZeitraum</td><td>Zeitspanne des Vorhandenseins des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps</td></tr>
<tr><td><code>Conditon.onsetPeriod</code></td><td>mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum</td><td>Klinisch relevanter Zeitraum als Zeitintervall mit von/am und bis.</td></tr>
<tr><td><code>Conditon.onsetPeriod.start</code></td><td>mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum.start</td><td>Startzeitpunkt: Zeitpunkt des Beginns des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps</td></tr>
<tr><td><code>Conditon.onsetPeriod.end</code></td><td>mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum.end</td><td>Endzeitpunkt: Zeitpunkt des Verschwindens des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps</td></tr>
<tr><td><code>Condition.onsetPeriod.start.extension.where(url='http://fhir.de/StructureDefinition/lebensphase')</code></td><td>mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase</td><td>Zusätzlich zu einem Zeitraum ist die Angabe der Lebensphase, zu der eine Krankheit vorlag/vorliegt, möglich. Hiermit lässt sich beispielsweise angeben, dass eine Person eine Krankheit bereits als Säugling gehabt hat. Das entsprechende ValueSet ist derzeit noch in Arbeit.</td></tr>
<tr><td><code>Condition.onsetPeriod.start.extension.where(url='http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept</code></td><td>mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase.von</td><td>Lebensphase Start</td></tr>
<tr><td><code>Condition.onsetPeriod.end.extension.where(url='http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept</code></td><td>mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase.bis</td><td>Lebensphase Ende</td></tr>
<tr><td><code>Conditon.extension.where(url='http://hl7.org/fhir/StructureDefinition/condition-assertedDate')</code></td><td>mii-lm-symptom.Condition.Beobachtungszeitpunkt</td><td>Zeitpunkt der Beobachtung/Feststellung des Symptoms, Erkrankung, Diagnose, Disposition.</td></tr>
<tr><td><code>Condition.recordedDate</code></td><td>mii-lm-symptom.Condition.Dokumentationszeitpunkt</td><td>Zeitpunkt der Dokumentation das Symptoms, Erkrankung, Diagnose, Disposition</td></tr>
<tr><td><code>Condition.clinicalStatus</code></td><td>mii-lm-symptom.Condition.Status</td><td>Status des Symptoms, Erkrankung, Diagnose, Disposition: "Aktiv", "Zustand nach", "in Remission", "beseitigt/geheilt"). Codiert z. B. mit ValueSet aus FHIR oder SNOMED CT.</td></tr>
<tr><td><code>Condition.severity</code></td><td>mii-lm-symptom.Condition.Schweregrad</td><td>Schweregrad des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT.</td></tr>
<tr><td><code>Condition.verificationStatus</code></td><td>mii-lm-symptom.Condition.Verifikationsstatus</td><td>Empirische, epistemologische, algorithmische, diagnostische Gewissheit  des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT.</td></tr>
<tr><td><code>Condition.evidence</code></td><td>mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz</td><td>Die dem Symptom, Erkrankung, Diagnose, Disposition zugrundeliegend Beobachtung</td></tr>
<tr><td><code>Condition.evidence.code.text</code></td><td>mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.BeschreibungZugrundeliegendeBeobachtung</td><td>Natürlichsprachige Beschreibung einer dem Symptom zugrundeliegenden Beobachtung,  Symptoms, Erkrankung, Diagnose, Disposition</td></tr>
<tr><td><code>Condition.evidence.code</code></td><td>mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.CodeZugrundeliegendeBeobachtung</td><td>Code der zugrundeliegenden Beobachtung des  Symptoms, Erkrankung, Diagnose, Disposition: SNOMED CT, LOINC</td></tr>
<tr><td><code>Condition.evidence.detail</code></td><td>mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.LinkAufZugrundeliegendeBeobachtung</td><td>Link auf die dem Symptom zugrundeliegenden Beobachtung für das  Symptoms, Erkrankung, Diagnose, Disposition</td></tr>
<tr><td><code>Condition.stage</code></td><td>mii-lm-symptom.Condition.Stadium</td><td>Stadium der Condition</td></tr>
<tr><td><code>Condition.stage.summary</code></td><td>mii-lm-symptom.Condition.Stadium.Zusammenfassung</td><td>Einfache Zusammenfassung des Stadiums</td></tr>
<tr><td><code>Condition.stage.assessment</code></td><td>mii-lm-symptom.Condition.Stadium.Einschaetzung</td><td>Referenz auf eine formale Einschätzung des Stadiums (ClinicalImpression, DiagnosticReport, Observation)</td></tr>
<tr><td><code>Condition.stage.type</code></td><td>mii-lm-symptom.Condition.Stadium.ArtDerStadieneinteilung</td><td>Art der Stadieneinteilung</td></tr>
<tr><td><code>Condition.subject</code></td><td>mii-lm-symptom.Condition.Patient</td><td>Link auf Patient</td></tr>
<tr><td><code>Condition.encounter</code></td><td>mii-lm-symptom.Condition.Fall</td><td>Link auf Behandlungsfall</td></tr>
</tbody>
</table>
#### Examples

- Example of a Condition resource: [mii-exa-symptom-vitreoretinochoroidopathy](Condition-mii-exa-symptom-vitreoretinochoroidopathy.html)
