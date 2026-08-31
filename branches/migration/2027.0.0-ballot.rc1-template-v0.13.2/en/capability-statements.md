# Capability Statements - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Capability Statements**

## Capability Statements

 This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.html). 

### CapabilityStatement

To enable decentralized data analysis by means of the German Research Data Portal for Health of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement at `[BASE_URL]/metadata`. Within this CapabilityStatement it MUST be stated which profiles including their versions, and which search parameters, are supported.

The contents that MUST be stated in the CapabilityStatement are listed below. In addition, conformance to the following CapabilityStatement MUST be declared in the respective CapabilityStatement instance under [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/modul-symptom/CapabilityStatement/metadata`

> **Written during migration - review before release.** This module's CapabilityStatement with all mandatory interactions, profiles and search parameters: **[MII CPS Symptom CapabilityStatement](CapabilityStatement-mii-cps-symptom-capabilitystatement.md)** (the source page embedded it via a Simplifier directive; the artifact page renders it natively).

