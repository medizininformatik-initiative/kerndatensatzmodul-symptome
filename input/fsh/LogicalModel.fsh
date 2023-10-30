Logical: MII_LM_Symptom
Parent: Element
Id: mii-lm-symptom
Title: "MII LM Symptom"
Description: "Logische Repräsentation des Basismoduls Symptom/klinischer Phänotyp"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/LogicalModel/Symptom"
* insert PR_CS_VS_Version
* insert Publisher
* Condition 0..* BackboneElement "Im Sinne einer FHIR Condition: klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom)."
  * Code 0..1 CodeableConcept "Code für ein Symptom, Phänomen, Erkrankung, Disposition: SNOMED CT (Findings), ICD-10, OrphaCodes, HPO, MedDRA"
  * Identifikator 0..* Identifier "Externer Identifikator für die Condition"
  * Bezeichnung 0..1 string "Natürlichsprachige Bezeichnung für ein Symptom, Diagnose, Erkrankung, Phänotyp, Disposition"
  * Beschreibung 0..1 string "Natürlichsprachige Beschreibung für ein Symptom, eine Erkrankung, eine Diagnose oder eine Disposition."
  * Kategorie 0..* CodeableConcept "Kategorien der Condition (z.B. problem-list-item | encounter-diagnosis)"
  * Lokalisation 0..* CodeableConcept "Lokalisation eines Symptoms etc. Körperstellen (Lokalisationen) werden SNOMED CT kodiert."
  * KlinischRelevanterZeitraum 0..1 BackboneElement "Zeitspanne des Vorhandenseins des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps"
    * Zeitraum 0..1 Period "Klinisch relevanter Zeitraum als Zeitintervall mit von/am und bis."
      * vonAm 0..1 dateTime "Startzeitpunkt: Zeitpunkt des Beginns des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps"
      * bis 0..1 dateTime " Endzeitpunkt: Zeitpunkt des Verschwindens des Symptoms, der Erkrankung, der Diagnose, der Disposition, des Phänotyps"
    * Lebensphase 0..1 BackboneElement "Zusätzlich zu einem Zeitraum ist die Angabe der Lebensphase, zu der eine Krankheit vorlag/vorliegt, möglich. Hiermit lässt sich beispielsweise angeben, dass eine Person eine Krankheit bereits als Säugling gehabt hat. Das entsprechende ValueSet ist derzeit noch in Arbeit."
      * von 0..1 CodeableConcept "Lebensphase Start"
      * bis 0..1 CodeableConcept "Lebensphase Ende"
  * Beobachtungszeitpunkt 0..1 dateTime "Zeitpunkt der Beobachtung/Feststellung des Symptoms, Erkrankung, Diagnose, Disposition."
  * Dokumentationszeitpunkt 0..1 dateTime "Zeitpunkt der Dokumentation das Symptoms, Erkrankung, Diagnose, Disposition"
  * Status 1..1 CodeableConcept "Status des Symptoms, Erkrankung, Diagnose, Disposition: \"Aktiv\", \"Zustand nach\", \"in Remission\", \"beseitigt/geheilt\"). Codiert z. B. mit ValueSet aus FHIR oder SNOMED CT."
  * Schweregrad 0..1 CodeableConcept "Schweregrad des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT."
  * Verifikationsstatus 0..1 CodeableConcept "Empirische, epistemologische, algorithmische, diagnostische Gewissheit  des Symptoms, Erkrankung, Diagnose, Disposition. Codesystem: SNOMED CT."
  * ZugrundeliegendeBeobachtungEvidenz 0..* BackboneElement "Die dem Symptom, Erkrankung, Diagnose, Disposition zugrundeliegend Beobachtung"
    * BeschreibungZugrundeliegendeBeobachtung 0..1 string "Natürlichsprachige Beschreibung einer dem Symptom zugrundeliegenden Beobachtung,  Symptoms, Erkrankung, Diagnose, Disposition"
    * CodeZugrundeliegendeBeobachtung 0..* CodeableConcept "Code der zugrundeliegenden Beobachtung des  Symptoms, Erkrankung, Diagnose, Disposition: SNOMED CT, LOINC"
    * LinkAufZugrundeliegendeBeobachtung 0..* Reference "Link auf die dem Symptom zugrundeliegenden Beobachtung für das  Symptoms, Erkrankung, Diagnose, Disposition"
  * Stadium 0..* BackboneElement "Stadium der Condition"
    * Zusammenfassung 0..1 CodeableConcept "Einfache Zusammenfassung des Stadiums"
    * Einschaetzung 0..* Reference "Referenz auf eine formale Einschätzung des Stadiums (ClinicalImpression, DiagnosticReport, Observation)"
    * ArtDerStadieneinteilung 0..1 CodeableConcept "Art der Stadieneinteilung"
  * Patient 1..1 Reference "Link auf Patient" 
  * Fall 0..1 Reference "Link auf Behandlungsfall"

Mapping: Symptom-LogicalModel
Id: FHIR
Title: "Symptom LogicalModel FHIR Mapping"
Source: MII_LM_Symptom
* Condition -> "Condition"
  * Code -> "Condition.code"
  * Identifikator -> "Condition.identifier"
  * Bezeichnung -> "Condition.code.coding.display"
  * Beschreibung -> "Condition.code.text"
  * Kategorie -> "Condition.category"
  * Lokalisation -> "Conditon.bodySite"
  * KlinischRelevanterZeitraum -> "Conditon.onset[x]"
  * KlinischRelevanterZeitraum -> "Conditon.abatement[x]"
    * Zeitraum -> "Conditon.onsetPeriod"
    * Zeitraum -> "Conditon.abatementPeriod"
      * vonAm -> "Conditon.onsetPeriod.start"
      * bis -> "Conditon.onsetPeriod.end"
      * vonAm -> "Conditon.abatementPeriod.start"
      * bis -> "Conditon.abatementPeriod.end"
    * Lebensphase -> "Condition.onsetPeriod.start.extension.where(url='http://fhir.de/StructureDefinition/lebensphase')"
    * Lebensphase -> "Condition.onsetPeriod.end.extension.where(url='http://fhir.de/StructureDefinition/lebensphase')"
      * von -> "Condition.onsetPeriod.start.extension.where(url='http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept"
      * bis -> "Condition.onsetPeriod.end.extension.where(url='http://fhir.de/StructureDefinition/lebensphase').valueCodeableConcept"
  * Beobachtungszeitpunkt -> "Conditon.extension.where(url='http://hl7.org/fhir/StructureDefinition/condition-assertedDate')"
  * Dokumentationszeitpunkt -> "Condition.recordedDate"
  * Status -> "Condition.clinicalStatus"
  * Schweregrad -> "Condition.severity"
  * Verifikationsstatus -> "Condition.verificationStatus"
  * ZugrundeliegendeBeobachtungEvidenz -> "Condition.evidence"
    * BeschreibungZugrundeliegendeBeobachtung -> "Condition.evidence.code.text"
    * CodeZugrundeliegendeBeobachtung -> "Condition.evidence.code"
    * LinkAufZugrundeliegendeBeobachtung -> "Condition.evidence.detail"
  * Stadium -> "Condition.stage"
    * Zusammenfassung -> "Condition.stage.summary"
    * Einschaetzung -> "Condition.stage.assessment"
    * ArtDerStadieneinteilung -> "Condition.stage.type"
  * Patient -> "Condition.subject"
  * Fall -> "Condition.encounter"


