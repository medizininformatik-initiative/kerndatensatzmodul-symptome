# CapabilityStatements - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **CapabilityStatements**

## CapabilityStatements

### CapabilityStatement

Um eine dezentrale Datenauswertung mittel des Deutsche Forschungsdatenportal für Gesundheit der Medizininformatik-Initiative zu ermöglichen MUSS die [capabilities-Interaktion](https://www.hl7.org/fhir/R4/http.html#capabilities) untersützt werden, sodass durch durch den FHIR-Server unter `[BASE_URL]/metadata` ein CapabilityStatement exponiert wird. Innerhalb dieses CapabilityStatement MUSS angegeben werden welche Profile inkl. Version, sowie welche Suchparameter unterstüzt werden.

Nachfolgend wird aufgelistet weleche Inhalte verpflichtend im CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen CapabilityStatement Instanz unter [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates) angegeben werden.

Canonical: `https://www.medizininformatik-initiative.de/fhir/modul-symptom/CapabilityStatement/metadata`

> **Written during migration - review before release.** Das CapabilityStatement dieses Moduls mit allen verpflichtenden Interaktionen, Profilen und Suchparametern: **[MII CPS Symptom CapabilityStatement](CapabilityStatement-mii-cps-symptom-capabilitystatement.md)** (die Quellseite band es über eine Simplifier-Direktive ein; die Artefakt-Seite rendert es nativ).

