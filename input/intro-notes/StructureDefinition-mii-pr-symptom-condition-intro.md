<!-- markdownlint-disable MD041 -->
<!-- Migrated from implementation-guides/ImplementationGuide-2024.x-DE/MIIIGModulSymptom/
     TechnischeImplementierung-1.x/FHIR-Profile-1.x/Condition-1.x.page.md (page-map
     branch 1; verbatim transfer). Directive translation as for the Observation intro
     (see that file's header comment). -->

Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom).

<div class="ig-highlight ig-highlight-orange">
<h5>Abstraktes Profil</h5>
<p>Diese StructureDefinition ist als abstrakt markiert und kann nicht direkt instanziiert werden. Sie dient ausschließlich als Grundlage für konkrete Profile, die von ihr ableiten. In Instanzen muss immer ein konkreter Sub-Typ verwendet werden.</p>
</div>

**Diagnosesicherheit**

Das Vorhandensein oder die Abwesenheit eines klinischen Zustandes oder einer Diagnose kann über die Elemente `Condition.clinicalStatus` und `Condition.verificationStatus` festgehalten werden.

Folgende Kombinationen aus `clinicalStatus` und `verificationStatus` sind notwendig, um die vier Ausprägungen für Diagnosesicherheit äquivalent abzubilden:

- A (ausgeschlossen) => clinicalStatus = leer, verificationStatus="refuted"
- G (gesicherte Diagnose) => clinicalStatus = "active", verificationStatus="confirmed"
- V (Verdacht auf / zum Ausschluss von) => clinicalStatus = "active", verificationStatus="provisional" oder "differential"
- Z (Zustand nach) => clinicalStatus = "resolved", verificationStatus="confirmed"

Siehe dazu auch Diagnosesicherheit in den [FHIR Basisprofilen](https://ig.fhir.de/basisprofile-de/1.5.4/ig-markdown-Ressourcen-DiagnosenCondition.html) und im [MII Modul Diagnose](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0).

#### Must-Support-Elemente

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
#### Mapping auf das Logical Model

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
#### Beispiele

- Beispiel einer Condition-Ressource: [mii-exa-symptom-vitreoretinochoroidopathy](Condition-mii-exa-symptom-vitreoretinochoroidopathy.html)
