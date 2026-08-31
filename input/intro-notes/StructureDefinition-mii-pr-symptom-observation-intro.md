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
#### Mapping auf das Logical Model

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
#### Beispiele

- Beispiel einer Symptom-Observation: [mii-exa-symptom-chestpain](Observation-mii-exa-symptom-chestpain.html)
- Beispiel einer Phänotyp-Observation: [mii-exa-symptom-arachnodactyly](Observation-mii-exa-symptom-arachnodactyly.html)
