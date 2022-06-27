## Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

Die Vielfalt zusammenfassender klinischer Angaben zu Befunden, Messungen und zum Status von Patienten, wie Untersuchungsergebnisse, aktuelle und historische Krankheiten, Symptome und ggf. auch Krankheitsveranlagungen, kann nicht allein mit dem Modul Diagnose oder spezifischen Erweiterungsmodulen repräsentiert werden. Die zusammenfassenden Angaben/Bezeichnungen zu Zuständen stammen aus unterschiedlichen Quellen wie Beobachtungen, Untersuchungen und Eigen- oder Fremd-Anamnesen. Weitere Quellen können mittels NLP oder mathematischer Modelle algorithmisch abgeleitete Beobachtungen und Klinische Zustände sein.
Angaben zu Beobachtungen und klinischen Zuständen werden aktuell in einzelnen konsortialen Use Cases (z.B. SMITH Phänotypisierungspipeline) und den übergreifenden Verbundprojekten CORD_MI, POLAR_MI und COVID-19 assoziierten Projekten benötigt.

1.	Im Modul Symptom/klinischer Phänotyp können Diagnosen differenziert abgebildet werden. Es muss daher parallel zu Einträgen im Modul Diagnosen ausgewertet werden.
2.	Das Modul Labor enthält Beobachtungen in Form von Laborbefunden und ist für Laborwerte in der Regel zu bevorzugen. Sind Laborwerte für einen komplexen Phänotyp auch über das Modul Symptom/klinischer Phänotyp abgebildet, muss es parallel ausgewertet werden.
3.	Dort wo kodierte Befunde/Beobachtungen in dafür vorgesehen spezifischen Modulen vorhanden sind, gelten Eintragungen im Modul Symptome/klinischer Phänotyp als zusätzliche (ergänzende) Informationen.
a.	Das Modul Symptome/klinischer Phänotyp ist gegenüber spezifischen Modulen in der Regel nachgeordnet. Es kann dazu dienen, klinische Informationen, die nicht spezifisch abgebildet sind, darzustellen. Es ist immer in einem spezifischen Anwendungskontext zu prüfen, ob und wie das Modul Symptome/klinischer Phänotyp genutzt werden kann und soll.
4.	Familienbeziehungen, die für Familienanamnesen und die Beschreibung von erblichen Erkrankungen von Bedeutung sind, werden nicht in diesem Modul abgebildet.


### Beziehung zum Modul Person

Die Zuordnung von Symptomen/Phänotypen zu einem Patienten bzw. einer Patientin erfolgt über Referenzen vom Modul Symptome/klinischer Phänotyp zum MODUL [PERSON](https://simplifier.net/guide/medizininformatikinitiative-modulperson-implementationguide/igmiikdsmodulperson).