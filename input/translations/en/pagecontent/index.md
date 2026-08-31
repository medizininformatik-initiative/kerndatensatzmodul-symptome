<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW — MACHINE TRANSLATION of input/pagecontent/index.md (German is
     this module's default language, DE-first migration 2026-08-31). Review at
     Gate C before release. -->

### Introduction

This specification describes the FHIR representation of the core data set
module "Symptom/clinical phenotype" of the Medical Informatics Initiative.
The module's use cases and the corresponding FHIR profiles and terminology
resources are described below in their binding form.

| Publication |               |
|------------------|---------------|
| Date             | 2026-08-31 |
| Version          | 2026.0.0-rc.1 (CalVer `YYYY.n.n`) |
| Status           | active        |
| Realm            | DE            |

### Module description

![Overview of the Symptom module](18_Abbildung_Symptome_en.jpg)

The extension module Symptoms/clinical state enables representations of
clinical states and clinical observations as they appear in clinical
documentation — either as symptoms, clinical problems, diseases and
dispositions, or as findings, observations and measurements. These are
represented in summary form as a state (Condition) or an observation
(Observation). Connected representations built from observations and the
interpretations derived from them are possible and can be assembled
hierarchically into complex aggregates (clinical phenotypes). This module can
be used whenever no specific representation exists in already available
dedicated modules such as Diagnosis or Laboratory, or when those are not
applicable for various reasons. Whether this extension module can and should
be used must be examined in the context of each specific application. Within
a Condition, no distinction is made between symptoms, diseases and
dispositions, since that distinction is difficult and ambivalent and
therefore of little relevance in clinical medicine. The distinction between a
state (Condition) and an observation (Observation), however, is of practical
importance. Put simply, Observations characteristically represent
measurements or questionings via attribute–value or question–answer pairs.
Reference is made here to the descriptions of the FHIR resources Condition
and Observation, to which the following also refers.

(Disease) states can be clearly distinguished from the underlying
observations: states are summarizing/assessing determinations (e.g. anemia)
or anamnestic statements about underlying observations or measurements
(hemoglobin content with a value/quantity).

### Audience

This implementation guide is addressed to:

<div class="ig-highlight ig-highlight-blue">
<h5>Implementers</h5>
<p>Data integration centers (DIC), software developers and system architects
implementing FHIR-based solutions.<br/>
→ see <a href="profiles.html">Profiles</a> and <a href="logical-models.html">Logical Models</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Researchers</h5>
<p>Scientists using core-data-set data for medical research.<br/>
→ see <a href="guidance.html">Guidance</a>.</p>
</div>

### Contents of this guide

- **[Guidance](guidance.html)** — getting started and subject-matter notes.
- **Conformance** — the KDS-wide conformance rules (requirement language,
  must-support, handling of missing data) are maintained centrally by the
  [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  the module-specific aspects of
  [Security and Privacy](security-and-privacy.html) are part of this guide.
- **[Profiles](profiles.html)** and the further
  **[artifact pages](artifacts.html)** — the technical artifacts.
- **[Examples](examples.html)** — example instances.
- **[Dependencies](ImplementationGuide-mii-ig-symptom.html)** — the
  ImplementationGuide resource with its dependency table, cross-version
  analysis and copyright notes.

### Related guides

This module is part of the MII core data set; the other KDS modules and their
dependencies are described at
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/).

<!-- DERIVED:bridge source=none gate=B -->
> **Written during migration - review before release.** Formal dependencies of
> this module (see `dependencies` in `sushi-config.yaml`): the
> [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta)
> (`2026.0.0`), the
> [German base profiles](https://ig.fhir.de/basisprofile-de/1.5.4/) (`1.5.4`)
> and [HL7 Europe Base](http://hl7.eu/fhir/base/) (`0.1.0`). The subject-matter
> relationships to the Diagnosis, Laboratory and Person modules are described
> in the [Guidance for Implementers](implementer-guidance.html).
{: .ig-highlight .ig-highlight-blue}

Further FHIR implementation guides can be found in the official
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (source:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Imprint

This guide was created within the Medical Informatics Initiative and is
subject, via its governance process, to the consultation procedure of the
Interoperability Forum and the Technical Committees of HL7 Germany e. V.

### Contact

- Martin Boeker, Klinikum rechts der Isar, Technical University of Munich
- Julian Saß, Berlin Institute of Health at Charité (BIH)
- Karoline Buckow, TMF – Technology and Methods Platform for Networked
  Medical Research e. V.
- Sylvia Thun, Berlin Institute of Health (BIH), Charité Universitätsmedizin

Questions about this publication can be asked at
[chat.fhir.org](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative)
in the `german/mi-initiative` stream.

Comments and criticism are always welcome as *issues* on
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome/issues).

### Authors (in alphabetical order)

- Martin Boeker (Klinikum rechts der Isar, Technical University of Munich)
- Karoline Buckow (TMF – Technology and Methods Platform for Networked
  Medical Research e. V.)
- Thomas Ganslandt (Friedrich-Alexander-Universität Erlangen-Nürnberg)
- Julian Saß (Berlin Institute of Health at Charité (BIH))

### Copyright and terms of use

Copyright © 2022+: TMF e. V., Charlottenstraße 42, 10117 Berlin

The content of this specification is public. Reuse and publication claims are
not restricted. This work is licensed under the
[Creative Commons Attribution 4.0 International License (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

For the usage rights of the underlying FHIR technology, see the FHIR base
specification.

Some of the code systems used are published and maintained by other
organizations. The copyright of the publishers listed there applies.

### Disclaimer

The content of this document is public. Note that parts of this document are
based on FHIR version R4, for which the copyright of HL7 International
applies.

- Although this publication was prepared with the greatest care, the authors
  cannot accept any liability for direct or indirect damage that might arise
  from the content of this specification.