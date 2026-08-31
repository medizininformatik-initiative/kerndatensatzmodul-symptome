# Anleitung für Implementierende - MII IG Symptom v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Implementierende**

## Anleitung für Implementierende

### Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

Die Vielfalt zusammenfassender klinischer Angaben zu Befunden, Messungen und zum Status von Patienten, wie Untersuchungsergebnisse, aktuelle und historische Krankheiten, Symptome und ggf. auch Krankheitsveranlagungen, kann nicht allein mit dem Modul Diagnose oder spezifischen Erweiterungsmodulen repräsentiert werden. Die zusammenfassenden Angaben/Bezeichnungen zu Zuständen stammen aus unterschiedlichen Quellen wie Beobachtungen, Untersuchungen und Eigen- oder Fremd-Anamnesen. Weitere Quellen können mittels NLP oder mathematischer Modelle algorithmisch abgeleitete Beobachtungen und Klinische Zustände sein. Angaben zu Beobachtungen und klinischen Zuständen werden aktuell in einzelnen konsortialen Use Cases (z.B. SMITH Phänotypisierungspipeline) und den übergreifenden Verbundprojekten CORD_MI, POLAR_MI und COVID-19 assoziierten Projekten benötigt.

Conditions sind Gesundheitsstatus (wie Symptome einer Erkrankung oder Diagnosen), die von Patient:innen geäußert bzw. von Ärzt:innen zugeordnet werden. Sie werden durch einen einzelnen Code angegeben, z. B. aus der Findings-Hierarchie aus Snomed CT.

Observations sind Beobachtungen, die in der Regel von Ärzt:innen in einem diagnostischen Prozess erhoben werden oder auch durch Sensoren gemessen werden, und immer aus einem Code/Werte-Paar bestehen. Mit dem Code wird angegeben, was gemessen/beobachtet wird (z. B. Herzfrequenz, Hautfarbe, Gewicht, Temperatur). Der Wert gibt den Messwert an (z. B. 80, blass, 80,5 kg, 37,0 ˚C). Er kann unterschiedliche Skalenniveaus annehmen und entsprechende Einheiten besitzen.

Das Modul Symptom/Phänotyp wird immer dann genutzt, wenn es (noch) kein spezifisches Modul für eine Condition bzw. Observation gibt. Das Modul Symptom/Phänotyp soll dabei als ein Template für Modul-Autoren zur Modellierung von Diagnosen, Symptomen und Observations verstanden werden, das in übergeordneten Modulen Anwendung findet, damit über Module hinweg Konsistenz von Condition und Observation erhalten werden kann.

1. Im Modul Symptom/klinischer Phänotyp können Diagnosen differenziert abgebildet werden. Es muss daher parallel zu Einträgen im Modul Diagnosen ausgewertet werden. Im Gegensatz zum Modul Diagnose wird im Modul Symptom/Phänotyp kein Terminologiesystem für den Code vorgegeben, mit dem Condition kodiert werden soll, um möglichst große Flexibilität zu erlauben.
1. Das Modul Labor enthält Beobachtungen in Form von Laborbefunden und ist für Laborwerte in der Regel zu bevorzugen. Sind Laborwerte für einen komplexen Phänotyp auch über das Modul Symptom/klinischer Phänotyp abgebildet, muss es parallel ausgewertet werden.
1. Dort wo kodierte Befunde/Beobachtungen in dafür vorgesehen spezifischen Modulen vorhanden sind, gelten Eintragungen im Modul Symptome/klinischer Phänotyp als zusätzliche (ergänzende) Informationen.
1. Das Modul Symptome/klinischer Phänotyp ist gegenüber spezifischen Modulen in der Regel nachgeordnet. Es kann dazu dienen, klinische Informationen, die nicht spezifisch abgebildet sind, darzustellen. Es ist immer in einem spezifischen Anwendungskontext zu prüfen, ob und wie das Modul Symptome/klinischer Phänotyp genutzt werden kann und soll.

1. Familienbeziehungen, die für Familienanamnesen und die Beschreibung von erblichen Erkrankungen von Bedeutung sind, werden nicht in diesem Modul abgebildet.

#### Beziehung zum Modul Person

Die Zuordnung von Symptomen/Phänotypen zu einem Patienten bzw. einer Patientin erfolgt über Referenzen vom Modul Symptome/klinischer Phänotyp zum MODUL [PERSON](https://medizininformatik-initiative.github.io/kerndatensatz-basis/2026.0.0).

