<!-- markdownlint-disable MD041 -->
<!-- Migrated from implementation-guides/ImplementationGuide-2024.x-DE/MIIIGModulSymptom/
     AnwendungsflleInformationsmodell-1.x/Datenstzeinkl.Beschreibungen-1.x.page.md
     (page-map [MAP-EDIT]: an agreed page owns the concern; verbatim transfer).
     The source's tree-directive and FQL element table referenced the LEGACY
     canonical .../fhir/core/modul-diagnose/StructureDefinition/LogicalModel/Symptom —
     this module's Logical Model is mii-lm-symptom; the artifact page renders its
     element tree and definitions natively. TODO:REVIEW — confirm the legacy-canonical
     reference carried no additional semantics (migration-log/run.log, 2c
     stale-foreign-canonical). -->

### Datensätze inkl. Beschreibungen

Die offizielle und abgenommene Version des Informationsmodells für das Modul
Symptome/klinischer Phänotyp findet sich auf
[ArtDecor](https://art-decor.org/art-decor/decor-datasets--mide-). Zur
Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich
als FHIR Logical Model abgebildet:

<!-- DERIVED:bridge source=AnwendungsflleInformationsmodell-1.x/Datenstzeinkl.Beschreibungen-1.x.page.md gate=B -->
> **Written during migration - review before release.** Das Logical Model
> dieses Moduls ist **[MII LM Symptom](StructureDefinition-mii-lm-symptom.html)**
> — die Artefakt-Seite zeigt Elementbaum, Beschreibungen und das 1:1-Mapping
> auf die FHIR-Profile (Reiter *Mappings*). Die Quellseite band das Modell über
> eine Simplifier-Direktive gegen die veraltete kanonische URL
> `.../fhir/core/modul-diagnose/StructureDefinition/LogicalModel/Symptom` ein.
{: .ig-highlight .ig-highlight-blue}

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der
Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und
Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend
durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical
Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR
Ressource.

<!-- DERIVED:bridge source=none gate=B -->
> **Written during migration - review before release.** Die Zuordnung der
> Datensatz-Elemente zu den FHIR-Elementen der beiden Profile ist auf den
> Artefakt-Seiten [Observation](StructureDefinition-mii-pr-symptom-observation.html)
> und [Condition](StructureDefinition-mii-pr-symptom-condition.html)
> tabellarisch aufgeführt (siehe auch [Profile](profiles.html)).
{: .ig-highlight .ig-highlight-blue}