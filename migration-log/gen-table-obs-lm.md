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