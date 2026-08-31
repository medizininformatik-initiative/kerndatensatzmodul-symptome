<!-- markdownlint-disable MD041 -->
<!-- Page curated during migration: the template's starter content linked the deleted
     scaffold example (example-patient); replaced with this module's real examples
     (source: input/fsh/Profiles.fsh instances; Studie-migration lesson). -->

<!-- DERIVED:summary source=none gate=B -->
> **Written during migration - review before release.** Dieses Modul enthält
> die folgenden Beispielinstanzen. Da die beiden Profile dieses Moduls als
> **abstrakt** markiert sind, sind die Beispiele Instanzen der
> FHIR-Basisressourcen Observation bzw. Condition (siehe den Hinweis auf den
> Profil-Seiten).
{: .ig-highlight .ig-highlight-blue}

<!-- GENERATED from fsh-generated/resources (example instances; replaces the
     scaffold's starter table which linked the deleted example-patient). -->

| Beispiel | Typ | Beschreibung |
|----------|-----|--------------|
| [Beispiel Symptom-Observation (Brustschmerz)](Observation-mii-exa-symptom-chestpain.html) | Observation | Symptom-Observation mit LOINC-Code `75325-1` (Symptom) und SNOMED-CT-Wert |
| [Beispiel Phänotyp-Observation (Arachnodaktylie)](Observation-mii-exa-symptom-arachnodactyly.html) | Observation | Phänotyp-Observation mit Vorhandensein/Abwesenheits-Angabe (LOINC LL1937-3) |
| [Beispiel Condition (Vitreoretinochoroidopathie)](Condition-mii-exa-symptom-vitreoretinochoroidopathy.html) | Condition | Condition-Ressource für einen klinischen Zustand |

Jede Artefakt-Seite zeigt die Beispielinstanz in den Reitern *XML* und *JSON*.