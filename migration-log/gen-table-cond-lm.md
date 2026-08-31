| FHIR | Datensatz | Erklärung |
|---|---|---|
| `Condition` | mii-lm-symptom.Condition | Im Sinne einer FHIR Condition: klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom). |
| `Condition.code` | mii-lm-symptom.Condition.Code | Code für ein Symptom, Phänomen, Erkrankung, Disposition: SNOMED CT (Findings), ICD-10, OrphaCodes, HPO, MedDRA |
| `Condition.identifier` | mii-lm-symptom.Condition.Identifikator | Externer Identifikator für die Condition |
| `Condition.code.coding.display` | mii-lm-symptom.Condition.Bezeichnung | Natürlichsprachige Bezeichnung für ein Symptom, Diagnose, Erkrankung, Phänotyp, Disposition |
| `Condition.code.text` | mii-lm-symptom.Condition.Beschreibung | Natürlichsprachige Beschreibung für ein Symptom, eine Erkrankung, eine Diagnose oder eine Disposition. |
| `Condition.category` | mii-lm-symptom.Condition.Kategorie | Kategorien der Condition (z.B. problem-list-item \| encounter-diagnosis) |
| `Conditon.bodySite` | mii-lm-symptom.Condition.Lokalisation | Lokalisation eines Symptoms etc. Körperstellen (Lokalisationen) werden SNOMED CT kodiert. |
| `Conditon.onset[x]` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum | Zeitspanne des Vorhandenseins des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps |
| `Conditon.onsetPeriod` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum | Klinisch relevanter Zeitraum als Zeitintervall mit von/am und bis. |
| `Conditon.onsetPeriod.start` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum.start | Startzeitpunkt: Zeitpunkt des Beginns des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps |
| `Conditon.onsetPeriod.end` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Zeitraum.end | Endzeitpunkt: Zeitpunkt des Verschwindens des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps |
| `Condition.onsetPeriod.start.extension.where(url='http://fhir.de/StructureDefinition/lebensphase')` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase | Zusätzlich zu einem Zeitraum ist die Angabe der Lebensphase, zu der eine Krankheit vorlag/vorliegt, möglich. Hiermit lässt sich beispielsweise angeben, dass eine Person eine Krankheit bereits als Säugling gehabt hat. Das entsprechende ValueSet ist derzeit noch in Arbeit. |
| `Condition.onsetPeriod.start.extension.where(url='http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase.von | Lebensphase Start |
| `Condition.onsetPeriod.end.extension.where(url='http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept` | mii-lm-symptom.Condition.KlinischRelevanterZeitraum.Lebensphase.bis | Lebensphase Ende |
| `Conditon.extension.where(url='http://hl7.org/fhir/StructureDefinition/condition-assertedDate')` | mii-lm-symptom.Condition.Beobachtungszeitpunkt | Zeitpunkt der Beobachtung/Feststellung des Symptoms, Erkrankung, Diagnose, Disposition. |
| `Condition.recordedDate` | mii-lm-symptom.Condition.Dokumentationszeitpunkt | Zeitpunkt der Dokumentation das Symptoms, Erkrankung, Diagnose, Disposition |
| `Condition.clinicalStatus` | mii-lm-symptom.Condition.Status | Status des Symptoms, Erkrankung, Diagnose, Disposition: "Aktiv", "Zustand nach", "in Remission", "beseitigt/geheilt"). Codiert z. B. mit ValueSet aus FHIR oder SNOMED CT. |
| `Condition.severity` | mii-lm-symptom.Condition.Schweregrad | Schweregrad des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT. |
| `Condition.verificationStatus` | mii-lm-symptom.Condition.Verifikationsstatus | Empirische, epistemologische, algorithmische, diagnostische Gewissheit  des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT. |
| `Condition.evidence` | mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz | Die dem Symptom, Erkrankung, Diagnose, Disposition zugrundeliegend Beobachtung |
| `Condition.evidence.code.text` | mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.BeschreibungZugrundeliegendeBeobachtung | Natürlichsprachige Beschreibung einer dem Symptom zugrundeliegenden Beobachtung,  Symptoms, Erkrankung, Diagnose, Disposition |
| `Condition.evidence.code` | mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.CodeZugrundeliegendeBeobachtung | Code der zugrundeliegenden Beobachtung des  Symptoms, Erkrankung, Diagnose, Disposition: SNOMED CT, LOINC |
| `Condition.evidence.detail` | mii-lm-symptom.Condition.ZugrundeliegendeBeobachtungEvidenz.LinkAufZugrundeliegendeBeobachtung | Link auf die dem Symptom zugrundeliegenden Beobachtung für das  Symptoms, Erkrankung, Diagnose, Disposition |
| `Condition.stage` | mii-lm-symptom.Condition.Stadium | Stadium der Condition |
| `Condition.stage.summary` | mii-lm-symptom.Condition.Stadium.Zusammenfassung | Einfache Zusammenfassung des Stadiums |
| `Condition.stage.assessment` | mii-lm-symptom.Condition.Stadium.Einschaetzung | Referenz auf eine formale Einschätzung des Stadiums (ClinicalImpression, DiagnosticReport, Observation) |
| `Condition.stage.type` | mii-lm-symptom.Condition.Stadium.ArtDerStadieneinteilung | Art der Stadieneinteilung |
| `Condition.subject` | mii-lm-symptom.Condition.Patient | Link auf Patient |
| `Condition.encounter` | mii-lm-symptom.Condition.Fall | Link auf Behandlungsfall |