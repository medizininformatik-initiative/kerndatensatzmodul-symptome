# Artifacts Summary - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

 There is no translation page available for the current page, so it has been rendered in the default language 

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [ MII CPS Symptom CapabilityStatement  ](CapabilityStatement-mii-cps-symptom-capabilitystatement.md) | Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Symptom/klinischer Phänotyp der Medizininformatik Initiative zu implementieren. |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [ MII LM Symptom  ](StructureDefinition-mii-lm-symptom.md) | Logische Repräsentation des Basismoduls Symptom/klinischer Phänotyp |

### Structures: Abstract Profiles 

These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. I.e. instances can conform to profiles **based** on these abstract profiles, but do not declare conformance to the abstract profiles themselves.

| | |
| :--- | :--- |
| [ MII_PR_Symptom_Condition  ](StructureDefinition-mii-pr-symptom-condition.md) | Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom). |
| [ MII_PR_Symptom_Observation  ](StructureDefinition-mii-pr-symptom-observation.md) | Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [ mii-exa-symptom-arachnodactyly  ](Observation-mii-exa-symptom-arachnodactyly.md) | Observation Phänotyp Arachnodactyly |
| [ mii-exa-symptom-chestpain  ](Observation-mii-exa-symptom-chestpain.md) | Observation Symptom Chest Pain |
| [ mii-exa-symptom-vitreoretinochoroidopathy  ](Condition-mii-exa-symptom-vitreoretinochoroidopathy.md) |  |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| |
| :--- |
| [ mii-param-symptom-manifest  ](Parameters-mii-param-symptom-manifest.md) |

