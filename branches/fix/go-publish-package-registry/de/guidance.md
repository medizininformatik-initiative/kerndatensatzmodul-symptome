# Anleitung - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Anleitung**

## Anleitung

> **Written during migration - review before release.** Diese Seite beschreibt Szenarien für die Anwendung des Moduls Symptome/klinischer Phänotyp. Die fachlichen Bezüge zu anderen KDS-Modulen beschreibt die [Anleitung für Implementierende](implementer-guidance.md); das Informationsmodell die Seiten [Logische Modelle](logical-models.md) und [UML-Diagramme](uml-diagrams.md).

### Beschreibung von Szenarien für die Anwendung der Module

#### Messungen/Beobachtungen

1. Herzfrequenz = 80/min
1. QT-Zeit = 400 ms
1. Körpergewicht = 80 kg
1. Systolischer Blutdruck = 150 mm Hg
1. Laborwerte (diese würden eher im entsprechenden KDS Modul Labor abgebildet werden)
1. Knochendichte, T-Score < - 2,5
1. Klinische Zeichen: abdominelle Spannung, Halsvenen gestaut
1. Klinische Scores: APGAR Score, Glasgow Coma Score
1. Persönliche Eigenschaften: Haar-, Augen- und Hautfarbe
1. (Sozial-) anamnestische Eigenschaften: Tabak-Konsum, familiäre Unterstützung, kognitiver Status
1. Eigenschaften wie der Schwangerschaftsstatus

#### Zusammengesetzte Messungen/Beobachtungen

Inhaltlich zusammengehörige Messungen können als Komponenten einer übergeordneten Messung dargestellt werden:

1. Parameter einer Lungenfunktionstestung vor und nach Bronchospasmolyse
1. Blutdruckmessungen, systolisch/diastolisch oder vor und nach Belastung

Die Bezugsstruktur von klinisch aufeinander bezogenen Messungen können durch hierarchische Verlinkung in Teile-Ganzes-Strukturen repräsentiert werden. Ebenso kann die Art der Messung und die Durchführung von Messungen (Procedure) in der Observation repräsentiert werden.

#### Befunde und Diagnosen (von Ärzt*innen festgestellt)

1. Herzfrequenz (altersgemäß) im Normbereich
1. QT-Zeit im Normbereich
1. Verkehrsunfall
1. Risiko für Stürze
1. Ehemaliger Raucher
1. Familiäres Risiko für Herz-Kreislauf-Erkrankungen
1. Erhöhte Belastung durch übertragbare Erkrankungen
1. Risiko für spezifische Infektionen nach Auslandsaufenthalt
1. Diagnosen: Diabetes, Tumor mit Lokalisation (würde aber in der Regel im entsprechenden KDS-Modul repräsentiert werden)

Die Abgrenzung zwischen Befundung (Condition) und Messungen/Beobachtungen (Observation) ist oft nicht exakt möglich; im Grenzbereich würde eine Repräsentation als Observation der Condition oft vorgezogen. Eine Festlegung kann nur für einen konkreten Anwendungskontext (in einem spezifischen Implementation-Guide) erfolgen.

#### Messung und zugehöriger Befund

Befunde können auf die Evidenz / den Grund (die Beobachtung/Messung) bezogen werden:

1. Herzfrequenz bei 80/min im Normbereich
1. Körpergewicht (80 kg) bei Körpergröße (180 cm) im Normbereich
1. Herzfrequenz

#### Symptome (von Patientient*innen berichtet)

1. Husten
1. Heiserkeit
1. Luftnot (bei Belastung)
1. Schwäche, Müdigkeit
1. Schmerzen (in den Beinen (nach 50 m Gehstrecke))
1. Niedergeschlagenheit
1. Verletzung (an der Hand (nach Sport-Unfall))
1. Kopfschmerzen
1. Übelkeit
1. Erbrechen
1. Schwindel
1. Bewußtlosigkeit

#### Gruppen/Komplexe von Symptomen/klinischen Zeichen

Symptome/klinische Zeichen können zu zusammengehörenden Symptomkomplexen (Syndromen) zusammengefasst werden.

1. Ptosis, Miosis, Enophthalmus ⇒ Horner Syndrom
1. SARS

