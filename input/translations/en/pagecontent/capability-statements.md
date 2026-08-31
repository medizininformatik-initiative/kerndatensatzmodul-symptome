<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW — MACHINE TRANSLATION of input/pagecontent/capability-statements.md
     (DE-first migration 2026-08-31). Review at Gate C before release. -->

### CapabilityStatement

To enable decentralized data analysis by means of the German Research Data
Portal for Health of the Medical Informatics Initiative, the
[capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities)
MUST be supported, so that the FHIR server exposes a CapabilityStatement at
```[BASE_URL]/metadata```. Within this CapabilityStatement it MUST be stated
which profiles including their versions, and which search parameters, are
supported.

The contents that MUST be stated in the CapabilityStatement are listed below.
In addition, conformance to the following CapabilityStatement MUST be declared
in the respective CapabilityStatement instance under
[```CapabilityStatement.instantiates```](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical:
```https://www.medizininformatik-initiative.de/fhir/modul-symptom/CapabilityStatement/metadata```

<!-- DERIVED:bridge source=TechnischeImplementierung-1.x/CapabilityStatement.page.md gate=B -->
> **Written during migration - review before release.** This module's
> CapabilityStatement with all mandatory interactions, profiles and search
> parameters:
> **[MII CPS Symptom CapabilityStatement](CapabilityStatement-mii-cps-symptom-capabilitystatement.html)**
> (the source page embedded it via a Simplifier directive; the artifact page
> renders it natively).
{: .ig-highlight .ig-highlight-blue}