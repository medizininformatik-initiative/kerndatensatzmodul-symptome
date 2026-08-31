<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW — MACHINE TRANSLATION of input/pagecontent/logical-models.md
     (DE-first migration 2026-08-31). Review at Gate C before release. -->

### Datasets including descriptions

The official and approved version of the information model for the
Symptoms/clinical phenotype module can be found on
[ArtDecor](https://art-decor.org/art-decor/decor-datasets--mide-). To unify
the representation, the information model was additionally mapped as a FHIR
Logical Model:

<!-- DERIVED:bridge source=AnwendungsflleInformationsmodell-1.x/Datenstzeinkl.Beschreibungen-1.x.page.md gate=B -->
> **Written during migration - review before release.** This module's Logical
> Model is **[MII LM Symptom](StructureDefinition-mii-lm-symptom.html)** — the
> artifact page shows the element tree, the descriptions and the 1:1 mapping
> to the FHIR profiles (*Mappings* tab). The source page embedded the model
> via a Simplifier directive against the outdated canonical URL
> `.../fhir/core/modul-diagnose/StructureDefinition/LogicalModel/Symptom`.
{: .ig-highlight .ig-highlight-blue}

Note that the Logical Model aims purely at representing the data elements and
their descriptions. The data types and cardinalities used are not to be
regarded as binding. This is finally determined by the FHIR profiles. For
every element within the Logical Model there is a 1:1 mapping to an element
of a concrete FHIR resource.

<!-- DERIVED:bridge source=none gate=B -->
> **Written during migration - review before release.** The assignment of the
> dataset elements to the FHIR elements of the two profiles is listed in
> table form on the artifact pages
> [Observation](StructureDefinition-mii-pr-symptom-observation.html) and
> [Condition](StructureDefinition-mii-pr-symptom-condition.html)
> (see also [Profiles](profiles.html)).
{: .ig-highlight .ig-highlight-blue}