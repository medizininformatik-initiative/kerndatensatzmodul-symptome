# Profile - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Profile**

## Profile

### FHIR-Profile

Die Arbeiten der Kerndatensatzspezifikationen basieren, wo möglich, auf internationalen Standards und Terminologien. Insbesondere sei hier die [International Patient Summary](http://hl7.org/fhir/uv/ips/history.html) hervorgehoben. Eine Anpassung an die allgemeinen Gegebenheiten des deutschen Gesundheitswesens erfolgt durch die Verwendung der [Deutschen Basisprofile](https://ig.fhir.de/basisprofile-de/1.4.0/Home.html) von HL7 Deutschland.

Alle Elemente des Kerndatensatzes, angepasst an die Details und Anforderungen für die Use Cases der Medizininformatik-Initative, werden nachfolgend in Form von FHIR StructureDefinitions beschrieben. Die Notwendigkeit der Anpassung der FHIR-Profile wird in textueller Form unterhalb der jeweiligen Profile erläutert.

##### Verpflichtende / must-support Elemente

Für verpflichtende oder als must-support markierte Elemente sei an dieser Stelle auf die entsprechenden [Regeln der IPS](https://build.fhir.org/ig/HL7/fhir-ips/design.html#must-support) verwiesen, die auch für diesen ImplementationGuide gelten.

> **Written during migration - review before release.** Die Profile dieses Moduls: **[MII PR Symptom Observation](StructureDefinition-mii-pr-symptom-observation.md)** — abstraktes Profil für Beobachtungen (Symptome, Messungen, Phänotypen) · **[MII PR Symptom Condition](StructureDefinition-mii-pr-symptom-condition.md)** — abstraktes Profil für klinische Zustände, Probleme und Diagnosen.

### Beziehung zwischen Observation und Condition

**Hinweis**: Der Inhalt dieses Abschnitts basiert auf dem [HL7 FHIR Symptoms Implementation Guide](https://hl7.org/fhir/uv/symptoms/2026Jan/en/diagnosis.html). Die Entwicklung dieses Implementation Guides wird eng verfolgt und dient als Vorlage für diesen Leitfaden.

#### Beziehung zwischen Symptomen und Diagnosen

In der klinischen Dokumentation stellen Symptome den subjektiven Nachweis eines Gesundheitszustands dar, der typischerweise vom Patienten erlebt und berichtet wird (z.B. "Müdigkeit", "Brustschmerzen", "Übelkeit"). Diagnosen hingegen stellen die klinische Interpretation oder Bestimmung einer zugrunde liegenden Erkrankung dar, die ein oder mehrere Symptome oder Befunde erklärt (z.B. "Pneumonie", "Myokardinfarkt", "Anämie").

Innerhalb von FHIR werden diese beiden Arten von Informationen durch unterschiedliche, aber sich ergänzende Ressourcen repräsentiert:

| | | | |
| :--- | :--- | :--- | :--- |
| Symptom | Observation | SNOMED CT, LOINC | Erfasst das Vorhandensein, die Abwesenheit, den Schweregrad oder die Eigenschaften eines Symptoms, wie es vom Patienten berichtet oder von einem Kliniker beobachtet wird. |
| Diagnose | Condition | SNOMED CT, ICD-10, ICD-11 | Repräsentiert die diagnostische Schlussfolgerung oder Krankheitsidentifikation des Klinikers, die ein oder mehrere Symptome und Befunde erklärt. |

Beide Ressourcentypen können innerhalb einer Patientenakte koexistieren und sind häufig verknüpft, um klinisches Reasoning, Qualitätsmessung und Anwendungsfälle für klinische Entscheidungsunterstützung zu unterstützen.

#### Verknüpfung von Symptomen und Diagnosen in FHIR

FHIR bietet mehrere Mechanismen zur Herstellung von Beziehungen zwischen Observations, die Symptome repräsentieren, und Conditions, die Diagnosen repräsentieren.

##### Condition.evidence.detail

Der primäre Mechanismus zur Verknüpfung einer Condition mit unterstützenden Nachweisen ist das Element `Condition.evidence.detail`. Dies ermöglicht es einer Condition, auf eine oder mehrere Observations (Symptome, Testergebnisse oder andere Befunde) zu verweisen, die zur diagnostischen Schlussfolgerung beigetragen haben.

##### Observation Extension: associatedSymptomOrCondition

Bei der Dokumentation einer Symptom-Observation kann die Extension `associatedSymptomOrCondition` dieses Symptom mit einer bekannten oder vermuteten Condition verknüpfen, auf die es sich bezieht.

#### Konzeptionelles Modell

```
Patientenerlebnis → Symptom (Observation) → Klinische Interpretation → Diagnose (Condition)

```

* **Symptome (Observations)** liefern die evidenzbasierte Grundlage für das diagnostische Reasoning.
* **Diagnosen (Conditions)** repräsentieren die resultierende klinische Interpretation und verweisen häufig auf die Observations, die sie unterstützen.

#### Implementierungshinweise

* **Nachvollziehbarkeit**: Verwenden Sie `Condition.evidence.detail`, um eine nachvollziehbare, computergestützte Verknüpfung zwischen diagnostischen Schlussfolgerungen und ihren unterstützenden Befunden aufrechtzuerhalten.
* **Symptom-Clustering**: Mehrere Symptom-Observations können mittels `Observation.hasMember` gruppiert werden, oder gemeinsam über einen `Questionnaire`/`QuestionnaireResponse` oder ein Observation-Panel erfasst werden.
* **Zeitlicher Kontext**: Fügen Sie `effective[x]`-Elemente bei Observations und Conditions hinzu, um Zeitpunkt und Reihenfolge korrekt widerzuspiegeln.
* **Provenienz & Sicherheit**: Erfassen Sie die Provenienz (wer hat das Symptom dokumentiert) und den Sicherheits-/Verifizierungsstatus der Condition (z.B. `Condition.verificationStatus`), um zu verdeutlichen, ob eine Diagnose vorläufig, bestätigt oder widerlegt ist.
* **Terminologie-Ausrichtung**: Bevorzugen Sie SNOMED CT für klinische Konzepte (Symptome und Conditions), um semantische Verknüpfungen zu ermöglichen. Verwenden Sie LOINC für strukturierte Instrumente oder vom Patienten berichtete Messungen, wo dies angemessen ist. Verwenden Sie ICD-10/ICD-11 für Abrechnungs-/Klassifizierungszwecke, während klinische Codes für die Interoperabilität erhalten bleiben.
* **Multiplizität**: Eine einzelne Observation (Symptom) kann mehrere Conditions bekräftigen; ebenso kann eine einzelne Condition durch mehrere Observations gestützt werden.

#### Zusammenfassung

| | | |
| :--- | :--- | :--- |
| Klinische Natur | Erlebte oder beobachtete Manifestation | Zugrunde liegende Ursache oder Interpretation |
| Primäre FHIR-Ressource | Observation | Condition |
| Beziehungselement | Observation.extension:associatedSymptomOrCondition | Condition.evidence.detail |
| Typische Codes | SNOMED CT (z.B. Schmerz in der Brust), LOINC (z.B. Schweregrad der Übelkeit) | SNOMED CT, ICD-10 (z.B. Pneumonie, Migräne) |
| Beispielhafte Beziehung | Symptom unterstützt eine oder mehrere Conditions | Condition verweist auf mehrere unterstützende Observations |

#### Best Practice

Verwenden Sie `Condition.evidence.detail`, um Conditions mit den Observations (Symptomen) zu verknüpfen, die sie unterstützen. Optional kann `Observation.extension:associatedSymptomOrCondition` verwendet werden, um die umgekehrte Beziehung anzugeben. Stellen Sie eine konsistente Kodierung, Provenienz und zeitliche Ausrichtung sicher, um computergestütztes Reasoning und Interoperabilität zu unterstützen.

