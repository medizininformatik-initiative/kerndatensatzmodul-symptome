<!-- markdownlint-disable MD041 -->
<!-- Migrated from implementation-guides/ImplementationGuide-2024.x-DE/MIIIGModulSymptom/Index.page.md
     + BeschreibungModul-1.x.page.md (page-map branch 3, verbatim transfer; skill mii-ig-migration
     v0.25.0, 2026-08-31). German is this module's DEFAULT language (DE-first, owner decision D-1). -->

### Einleitung

Die vorliegende Spezifikation beschreibt die FHIR-Repräsentation des
Kerndatensatz-Moduls 'Symptom/klinischer Phänotyp' der
Medizinformatik-Initative. Im Folgenden werden die Use Cases des Moduls, sowie
die dazuhegörigen FHIR-Profile und Terminologie-Ressourcen in ihrer
verbindlichen Form beschrieben.

| Veröffentlichung |               |
|------------------|---------------|
| Datum            | 2026-08-31 |
| Version          | 2026.0.0-rc.1 (CalVer `JJJJ.n.n`) |
| Status           | active        |
| Realm            | DE            |

### Beschreibung Modul

![Übersicht Modul Symptome](17_Abbildung_Symptome_de.jpg){: style="max-width:100%"}

Das Erweiterungsmodul Symptome/klinischer Zustand ermöglicht Repräsentationen
klinischer Zustände bzw. klinischer Beobachtungen, wie sie in der klinischen
Dokumentation entweder als Symptome, klinische Probleme, Erkrankungen und
Dispositionen oder als Befunde, Beobachtungen und Messungen angegeben sind.
Dabei sollen diese zusammenfassend als Zustand (Condition) bzw. Beobachtung
(Observation) repräsentiert werden. Zusammenhängende Darstellungen aus
Beobachtungen und daraus abgeleiteten Interpretationen sind möglich und können
hierarchisch zu komplexen Aggregaten (klinische Phänotypen) aufgebaut werden.
Dieses Modul kann immer dann eingesetzt werden, wenn es keine spezifischen
Repräsentationen in bereits vorhandenen dedizierten Modulen wie z. B. Diagnose
oder Labor gibt oder wenn diese aus verschiedensten Gründen nicht anwendbar
sind. Es ist jeweils im Kontext einer spezifischen Anwendung zu prüfen, ob
dieses Erweiterungsmodul eingesetzt werden kann und soll. Innerhalb einer
Condition erfolgt keine Unterscheidung zwischen Symptomen, Erkrankungen und
Dispositionen, da sie schwierig und ambivalent ist und daher in der klinischen
Medizin kaum eine Bedeutung hat. Die Unterscheidung zwischen Zustand
(Condition) und Beobachtung (Observation) hingegen ist von praktischer
Bedeutung. Charakteristisch für Observations ist, vereinfacht formuliert, die
Repräsentation von Messungen oder Befragungen über Attribut-Wert- oder
Frage-Antwort-Paare. Es sei an dieser Stelle auf die Beschreibung der FHIR
Ressourcen Condition und Observation hingewiesen, auf die wir uns auch im
Folgenden beziehen.

(Krankheits-) Zustände können von den zugrundeliegenden Beobachtungen eindeutig
abgegrenzt werden: Zustände sind zusammenfassende/beurteilende Feststellungen
(z. B. Anämie) oder anamnestische Auskünfte über zugrundeliegende Beobachtungen
oder Messungen (Hämoglobin-Gehalt mit einem Wert/Quantität).

### Zielgruppe

Dieser Implementierungsleitfaden richtet sich an:

<div class="ig-highlight ig-highlight-blue">
<h5>Implementierende</h5>
<p>Datenintegrationszentren (DIZ), Software-Entwickelnde und System-Architekt:innen, die FHIR-basierte Lösungen umsetzen.<br/>
→ siehe <a href="profiles.html">Profile</a> und <a href="logical-models.html">Logische Modelle</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Forschende</h5>
<p>Wissenschaftler:innen, die KDS-Daten für die medizinische Forschung nutzen.<br/>
→ siehe <a href="guidance.html">Anleitung</a>.</p>
</div>

### Inhalt dieses Leitfadens

- **[Anleitung](guidance.html)** — Einstieg und fachliche Hinweise.
- **Konformität** — die KDS-weiten Konformitätsregeln (Anforderungssprache,
  Must-Support, Umgang mit fehlenden Daten) pflegt zentral das
  [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  die modul-spezifischen Aspekte zu
  [Sicherheit und Datenschutz](security-and-privacy.html) sind Teil dieses
  Leitfadens.
- **[Profile](profiles.html)** und die weiteren
  **[Artefakt-Seiten](artifacts.html)** — die technischen Artefakte.
- **[Beispiele](examples.html)** — Beispielinstanzen.
- **[Abhängigkeiten](ImplementationGuide-mii-ig-symptom.html)** — die
  ImplementationGuide-Ressource mit Abhängigkeitstabelle, versionsübergreifender
  Analyse und Urheberrechtshinweisen.

### Verwandte Leitfäden

Dieses Modul ist Teil des MII-Kerndatensatzes; die weiteren KDS-Module und ihre
Abhängigkeiten sind unter
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/)
beschrieben.

<!-- DERIVED:bridge source=none gate=B -->
> **Written during migration - review before release.** Formale Abhängigkeiten
> dieses Moduls (siehe `dependencies` in `sushi-config.yaml`): das
> [Meta-Modul](https://github.com/medizininformatik-initiative/kerndatensatz-meta)
> (`2026.0.0`), die
> [Deutschen Basisprofile](https://ig.fhir.de/basisprofile-de/1.5.4/) (`1.5.4`)
> und [HL7 Europe Base](http://hl7.eu/fhir/base/) (`0.1.0`). Die fachlichen
> Bezüge zu den Modulen Diagnose, Labor und Person beschreibt die
> [Anleitung für Implementierende](implementer-guidance.html).
{: .ig-highlight .ig-highlight-blue}

Weitere FHIR-Implementierungsleitfäden finden Sie im offiziellen
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (Quelle:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Impressum

Dieser Leitfaden ist im Rahmen der Medizininformatik-Initiative erstellt wurden
und unterliegt per Governance-Prozess dem Abstimmungsverfahren des
Interoperabilitätsforums und der Technischen Komitees von HL7 Deutschland e. V..

### Ansprechpartner

- Martin Boeker, Klinikum rechts der Isar, Technische Universität München
- Julian Saß, Berlin Institute of Health at Charité (BIH)
- Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte
  medizinische Forschung e. V.
- Sylvia Thun, Berlin Institute of Health (BIH), Charité Universitätsmedizin

Fragen zu der vorliegenden Publikation können unter
[chat.fhir.org](https://chat.fhir.org/#narrow/stream/179307-german.2Fmi-initiative)
im Stream `german/mi-initiative` gestellt werden.

Anmerkungen und Kritik werden in Form von *Issues* auf
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-symptome/issues)
stets gern entgegengenommen.

### Autoren (in alphabetischer Reihenfolge)

- Martin Boeker (Klinikum rechts der Isar, Technische Universität München)
- Karoline Buckow (TMF – Technologie- und Methodenplattform für die vernetzte
  medizinische Forschung e. V.)
- Thomas Ganslandt (Friedrich-Alexander-Universität Erlangen-Nürnberg)
- Julian Saß (Berlin Institute of Health at Charité (BIH))

### Copyright-Hinweis, Nutzungshinweise

Copyright © 2022+: TMF e. V., Charlottenstraße 42, 10117 Berlin

Der Inhalt dieser Spezifikation ist öffentlich. Die Nachnutzungs- bzw.
Veröffentlichungsansprüche sind nicht beschränkt. Dieses Werk ist lizenziert
unter der
[Creative Commons Namensnennung 4.0 International Lizenz (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/deed.de).

Zu den Nutzungsrechten der zugrunde liegenden FHIR-Technologie siehe die
FHIR-Basis-Spezifikation.

Einige verwendete Codesysteme werden von anderen Organisationen herausgegeben
und gepflegt. Es gilt das Copyright der dort jeweils aufgeführten Herausgeber
(Publisher).

### Disclaimer

Der Inhalt dieses Dokuments ist öffentlich. Zu beachten ist, dass Teile dieses
Dokuments auf FHIR Version R4 beruhen, für die das Copyright von
HL7 International gilt.

- Obwohl diese Publikation mit größter Sorgfalt erstellt wurde, können die
  Autoren keinerlei Haftung für direkten oder indirekten Schaden übernehmen,
  der durch den Inhalt dieser Spezifikation entstehen könnte.