# Changelog - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Changelog**

## Changelog

 This page includes translations from the original source language in which the guide was authored. Information on these translations and instructions on how to provide feedback on the translations can be found [here](translationinfo.html). 

This page records the changes between the released versions of the **Symptom** module, newest version first. It follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/) and the KDS calendar versioning scheme described on the [Versioning](version-history.md) page.

Each version gets its own section with the release date and the changes grouped by category:

* **Added** — new profiles, extensions, value sets, search parameters, pages.
* **Changed** — modified constraints, bindings, guidance or documentation.
* **Deprecated** — artifacts that still exist but should no longer be used.
* **Removed** — artifacts that were withdrawn.
* **Fixed** — corrections of defects.
* **Security** — changes with a security or data-protection impact.

Leave out the categories with nothing to report. Where a change is driven by an issue or a pull request, link it.

##### Breaking changes MUST be reported and explained

A version section that contains a breaking change is not complete until it answers, explicitly and in this changelog:

* **What exactly changed** between the two versions — the artifact, the element, the old and the new constraint (not just "profile X was revised").
* **What it means for existing data:** does data that conformed to the previous version still validate against the new one? If not, which resources and elements are affected, and how does the failure show up?
* **What implementers should do:** the authors' recommendation for migrating existing data to the new version — transformation steps, default values, re-coding guidance — or an explicit statement that no migration path is provided and why.

**What counts as breaking** — treat a change as breaking if it does any of the following, even when it looks small: tightens a cardinality (`0..*` → `1..1`), raises a binding strength (example → required), removes codes from a required value set, removes or renames an element or a slice, narrows a type, adds an invariant or a must-support obligation, or changes a canonical URL. When in doubt, report it as breaking.

**Breaking for whom:** state both perspectives — *stored data* (instances valid against the old version) and *implementations* (clients and servers built against it; a removed search parameter breaks implementations while every stored instance stays valid).

**The version number will not warn anyone.** The KDS calendar versioning scheme (`YYYY.n.n`) carries no major-version signal the way SemVer does — this changelog section is the *only* warning a reader gets.

**Link the technical delta.** From the second formal publication on, enable the IG Publisher's version comparison (`version-comparison` in `sushi-config.yaml` — see the [ Versioning](version-history.md) page for the setup and its prerequisites); it publishes a machine-generated comparison at `comparison-v<previous>/index.html`. Link it from the version section, so the prose explanation and the technical diff sit side by side.

Mark such entries clearly (for example, prefix them with **BREAKING:**) so a reader scanning the section cannot miss them.

-------

> **Written during migration - review before release.** The entries below were reconstructed during migration from the module's git and registry history (v2026 cycle Jan–Feb 2026, ballot package 2023-11-17).

#### Version 2027.0.0-ballot.rc1

**Date:** 2026-08-31 (working state for the 2027 ballot line; not published as a package. The v2026 cycle ended at the untagged state 2026.0.0-rc.1; its changes are listed below.)

##### Changed

* **Migration of the implementation guide from Simplifier to the HL7 IG Publisher** using the MII KDS module template (2026-08-31; details in the migration report of the corresponding pull request).
* Module canonical URL moved from `.../fhir/ext/modul-symptom` to `.../fhir/modul-symptom` (v2026 cycle).
* Both profiles (`MII_PR_Symptom_Observation`, `MII_PR_Symptom_Condition`) marked **abstract**.
* German base profiles raised from 1.4.0 to 1.5.4; `hl7.fhir.eu.base` (EU core BodyStructure) added.
* Example `mii-exa-symptom-chestpain` added.

##### Removed

* Glasgow Coma Score profile with its ValueSets and example (kept commented out in the FSH sources).

#### Version 2024.0.0-ballot

**Date:** 2023-11-17

##### Added

* Initial ballot publication of the **Symptom/clinical phenotype** module (Simplifier package `de.medizininformatikinitiative.kerndatensatz.symptom` 2024.0.0-ballot).

