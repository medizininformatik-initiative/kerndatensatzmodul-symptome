<!-- markdownlint-disable MD041 -->
<!-- Migrated from implementation-guides/ImplementationGuide-2024.x-DE/MIIIGModulSymptom/
     TechnischeImplementierung-1.x/FHIR-Profile-1.x/Observation-1.x.page.md (page-map
     branch 1: content about one artifact -> its intro note; verbatim transfer).
     Directive translation: link-directive/metadata-FQL/tabs dropped (the artifact page below
     renders header, structure tabs, description, XML/JSON natively); the mustSupport
     and Logical-Model mapping tables are GENERATED mechanically from
     fsh-generated/resources (source FQL equivalents; regenerate on profile change —
     note: the source FQL filtered on the LEGACY LM element ids 'Symptom.Observation';
     current ids are 'mii-lm-symptom.Observation'). -->

**Beschreibung**

Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein.

Diese Observation kann zur Erfassung von sowohl vorhandenen als auch abwesenden Symptomen sowie vorhandenen oder abwesenden Phänotypen verwendet werden. Die Modellierung unterscheidet sich leicht und basiert auf zwei verschiedenen FHIR Implementation Guides:

- [FHIR R4 Symptoms Implementation Guide](https://hl7.org/fhir/uv/symptoms/2026Jan) für die Dokumentation von Symptomen
- [Phenomics Exchange for Research and Diagnostics](https://hl7.org/fhir/uv/phenomics-exchange/2026Jan/en/) für die Dokumentation von Phänotypen

**Hinweis:** Beide Implementation Guides befanden sich zum Zeitpunkt der Erstellung in der Ballot-Phase, sodass noch Änderungen möglich sind.

#### Symptom-Observations

Für die Erfassung von Symptomen SOLLEN folgende LOINC-Codes verwendet werden:

- **Vorhandene Symptome**: `Observation.code` mit LOINC `75325-1` (Symptom)
- **Abwesende Symptome**: `Observation.code` mit LOINC `111551-8` (Symptom absent) - vorläufiger Code und nicht in LOINC v2.81 veröffentlicht

Beide Observation-Typen verwenden `valueCodeableConcept`, um das spezifische Symptom zu identifizieren. Der codierte Werte SOLLTE aus der SNOMED `404684003 |Clinical finding (finding)|` Hierarchie stammen.

**Component Observations**: Ein Teil der strukturierten Informationen des Symptoms KANN in `Observation.component` modelliert werden. Siehe: [Profile: Symptom Observation](https://hl7.org/fhir/uv/symptoms/2026Jan/en/StructureDefinition-SymptomObservation.html).

Für die konkrete Implementierung dieser Profile siehe den [Symptoms IG](https://hl7.org/fhir/uv/symptoms/2026Jan).

#### Phänotyp-Observations

Eine Phänotyp-Observation ermöglicht die Angabe von **Vorhandensein oder Abwesenheit** eines Phänotyps:

- **`Observation.code`**: Erfasst den Phänotyp (z.B. aus HPO oder SNOMED)
- **`Observation.valueCodeableConcept`**: Verwendet LOINC ValueSet [LL1937-3](https://loinc.org/LL1937-3/) mit den Werten:
  - Present (Vorhandensein)
  - Absent (Abwesenheit)

**Observation Components**: Zusätzliche Aspekte des Phänotyps werden mittels `Observation.component` erfasst.

Für die konkrete Implementierung dieser Profile siehe den [Phenomics Exchange IG](https://hl7.org/fhir/uv/phenomics-exchange/2026Jan/en/).

<div class="ig-highlight ig-highlight-orange">
<h5>Abstraktes Profil</h5>
<p>Diese StructureDefinition ist als abstrakt markiert und kann nicht direkt instanziiert werden. Sie dient ausschließlich als Grundlage für konkrete Profile, die von ihr ableiten. In Instanzen muss immer ein konkreter Sub-Typ verwendet werden.</p>
</div>

#### Must-Support-Elemente

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
#### Mapping auf das Logical Model

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
#### Beispiele

- Beispiel einer Symptom-Observation: [mii-exa-symptom-chestpain](Observation-mii-exa-symptom-chestpain.html)
- Beispiel einer Phänotyp-Observation: [mii-exa-symptom-arachnodactyly](Observation-mii-exa-symptom-arachnodactyly.html)
