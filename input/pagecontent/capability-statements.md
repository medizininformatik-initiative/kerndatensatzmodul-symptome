<!-- markdownlint-disable MD041 -->
<!-- Migrated from implementation-guides/ImplementationGuide-2024.x-DE/MIIIGModulSymptom/
     TechnischeImplementierung-1.x/CapabilityStatement.page.md (page-map branch 3,
     verbatim transfer). The source's render-directive (canonical URL) is replaced by
     the artifact-page link (the publisher renders the CapabilityStatement natively);
     the Simplifier resolve link is superseded by the artifact page. -->

### CapabilityStatement

Um eine dezentrale Datenauswertung mittel des Deutsche Forschungsdatenportal
für Gesundheit der Medizininformatik-Initiative zu ermöglichen MUSS die
[capabilities-Interaktion](https://www.hl7.org/fhir/R4/http.html#capabilities)
untersützt werden, sodass durch durch den FHIR-Server unter
```[BASE_URL]/metadata``` ein CapabilityStatement exponiert wird. Innerhalb
dieses CapabilityStatement MUSS angegeben werden welche Profile inkl. Version,
sowie welche Suchparameter unterstüzt werden.

Nachfolgend wird aufgelistet weleche Inhalte verpflichtend im
CapabilityStatement angegeben werden MÜSSEN. Darüber hinaus MUSS eine
Konformität zu dem nachfolgenden CapabilityStatement in der jeweiligen
CapabilityStatement Instanz unter
[```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates)
angegeben werden.

Canonical:
```https://www.medizininformatik-initiative.de/fhir/modul-symptom/CapabilityStatement/metadata```

<!-- DERIVED:bridge source=TechnischeImplementierung-1.x/CapabilityStatement.page.md gate=B -->
> **Written during migration - review before release.** Das CapabilityStatement
> dieses Moduls mit allen verpflichtenden Interaktionen, Profilen und
> Suchparametern:
> **[MII CPS Symptom CapabilityStatement](CapabilityStatement-mii-cps-symptom-capabilitystatement.html)**
> (die Quellseite band es über eine Simplifier-Direktive ein; die Artefakt-Seite
> rendert es nativ).
{: .ig-highlight .ig-highlight-blue}