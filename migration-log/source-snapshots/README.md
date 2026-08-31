## Medizininformatik Initiative - Kerndatensatz - Modul Symptome/klinischer Phänotyp

[![FHIR Project on GitHub.com](https://img.shields.io/badge/FHIR_project_on_GitHub.com-kerndatensatzmodul--symptom-green)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome) 

[![CI (FHIR Validation)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-person/actions/workflows/main.yml/badge.svg)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome/actions/workflows/main.yml)

### Übersicht
Das vorliegende Projekt beschreibt die FHIR-Spezifikation des Basismoduls 'Symptome/klinischer Phänotyp'. Die hier veröffentlichten FHIR Profile und Implemenation Guide dienen als zentrale und verbindliche Spezifikation für die synatkatische und semantische Kodierung der Modulinhalte.

### Status:

Aktuelle draft Version: 1.0.0-ballot [Link zum Implementation Guide](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de)

<!-- Reifegrad: -->

Alle veröffentlichen FHIR Artefakte innerhalb des Projektes verfügen über einen Status durch welchen der jeweilige Reifegard abgeleitet werden kann.
Profile mit dem Status 'Draft' wurden noch nicht ballotiert und können noch diversen und substantiellen Änderungen unterliegen. Verpflichtende und ballotierte Ergebnisse sind unter dem Tab 'Packages' zu finden.

### Mitwirkungs- und Kommentierungsmöglichkeiten

* Kommentareinreichung via [GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome)
* Diskussionsforum im int. [FHIR-Chat](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative)
* Teilnahme am [Interoperabilitätsforum](https://wiki.hl7.de/index.php?title=Interoperabilitätsforum)

### Kurzzusammenfassung

Das Erweiterungsmodul Symptome/klinischer Zustand ermöglicht Repräsentationen klinischer Zustände bzw. klinischer Beobachtungen, wie sie in der klinischen Dokumentation entweder als Symptome, klinische Probleme, Erkrankungen und Dispositionen oder als Befunde, Beobachtungen und Messungen angegeben sind. Dabei sollen diese zusammenfassend als Zustand (Condition) bzw. Beobachtung (Observation) repräsentiert werden. Zusammenhängende Darstellungen aus Beobachtungen und daraus abgeleiteten Interpretationen sind möglich und können hierarchisch zu komplexen Aggregaten (klinische Phänotypen) aufgebaut werden. Dieses Modul kann immer dann eingesetzt werden, wenn es keine spezifischen Repräsentationen in bereits vorhandenen dedizierten Modulen wie z. B. Diagnose oder Labor gibt oder wenn diese aus verschiedensten Gründen nicht anwendbar sind. Es ist jeweils im Kontext einer spezifischen Anwendung zu prüfen, ob dieses Erweiterungsmodul eingesetzt werden kann und soll. Innerhalb einer Condition erfolgt keine Unterscheidung zwischen Symptomen, Erkrankungen und Dispositionen, da sie schwierig und ambivalent ist und daher in der klinischen Medizin kaum eine Bedeutung hat. Die Unterscheidung zwischen Zustand (Condition) und Beobachtung (Observation) hingegen ist von praktischer Bedeutung. Charakteristisch für Observations ist, vereinfacht formuliert, die Repräsentation von Messungen oder Befragungen über Attribut-Wert- oder Frage-Antwort-Paare. Es sei an dieser Stelle auf die Beschreibung der FHIR Ressourcen Condition und Observation hingewiesen, auf die wir uns auch im Folgenden beziehen. (Krankheits-) Zustände können von den zugrundeliegenden Beobachtungen eindeutig abgegrenzt werden: Zustände sind zusammenfassende/beurteilende Feststellungen (z. B. Anämie) oder anamnestische Auskünfte über zugrundeliegende Beobachtungen oder Messungen (Hämoglobin-Gehalt mit einem Wert/Quantität).

### Wichtige Dokumente und Links
* [Beschreibung des MII-Kerndatensatzes in der Version 1.0 vom 10.3.2017 (PDF)](https://www.medizininformatik-initiative.de/sites/default/files/inline-files/MII_04_Kerndatensatz_1-0.pdf)
* [Datenmodellbeschreibung des MII-Kerndatensatzes in ART-DECOR](https://art-decor.org/art-decor/decor-project--mide-)
* [GitHub Repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome)
* [Implementation Guide](https://simplifier.net/guide/mii-ig-modul-symptom-2024-de)


### Autoren und Ansprechpartner

Leitung des Moduls:

* Martin Boeker

Technische Umsetzung:

* Martin Boeker (Implementation Guide und Logical Models)
* Julian Saß (Technische Umsetzung FHIR Profile, Implementation Guide und Logical Models)
