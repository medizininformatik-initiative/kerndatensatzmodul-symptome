# Artefaktübersicht - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Artefaktübersicht**

## Artefaktübersicht

Diese Seite bietet eine Liste der FHIR-Artefakte, die in diesem Implementierungsleitfaden definiert sind.

### Verhalten: CapabilityStatements 

Die folgenden Artefakte definieren die spezifischen Fähigkeiten, die verschiedene Systemtypen haben müssen, um diesem Implementierungsleitfaden zu entsprechen. Von Systemen, die mit dem Implementierungsleitfaden konform sind, wird erwartet, dass sie die Konformität mit einem oder mehreren der folgenden Capability Statements deklarieren.

| | |
| :--- | :--- |
| [ MII CPS Symptom CapabilityStatement  ](CapabilityStatement-mii-cps-symptom-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Symptom/klinischer Phänotyp der Medizininformatik Initiative zu implementieren. |

### Strukturen: Logische Modelle 

Diese definieren Datenmodelle, die den von diesem Implementierungsleitfaden abgedeckten Bereich in geschäftsfreundlicheren Begriffen darstellen als die zugrunde liegenden FHIR-Ressourcen.

| | |
| :--- | :--- |
| [ MII LM Symptom  ](StructureDefinition-mii-lm-symptom.md) | Logische Repräsentation des Basismoduls Symptom/klinischer Phänotyp |

### Strukturen: Abstrakte Profile 

Dies sind Profile für Ressourcen oder Datentypen, die Muster beschreiben, die von anderen Profilen verwendet werden, aber nicht direkt instanziiert werden können. D.h. Instanzen können Profilen entsprechen, die auf diesen abstrakten Profilen **basieren**, aber sie deklarieren keine Konformität mit den abstrakten Profilen selbst.

| | |
| :--- | :--- |
| [ MII_PR_Symptom_Condition  ](StructureDefinition-mii-pr-symptom-condition.md) | Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom). |
| [ MII_PR_Symptom_Observation  ](StructureDefinition-mii-pr-symptom-observation.md) | Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein. |

### Beispiel: Beispielinstanzen 

Dies sind Beispielinstanzen, die zeigen, wie Daten aussehen könnten, die von Systemen produziert und konsumiert werden, die mit diesem Implementierungsleitfaden konform sind.

| | |
| :--- | :--- |
| [ mii-exa-symptom-arachnodactyly  ](Observation-mii-exa-symptom-arachnodactyly.md) | Observation Phänotyp Arachnodactyly |
| [ mii-exa-symptom-chestpain  ](Observation-mii-exa-symptom-chestpain.md) | Observation Symptom Chest Pain |
| [ mii-exa-symptom-vitreoretinochoroidopathy  ](Condition-mii-exa-symptom-vitreoretinochoroidopathy.md) |  |

### Sonstige 

Dies sind Ressourcen, die in diesem Implementierungsleitfaden verwendet werden, die in keine der anderen Kategorien passen.

| |
| :--- |
| [ mii-param-symptom-manifest  ](Parameters-mii-param-symptom-manifest.md) |

