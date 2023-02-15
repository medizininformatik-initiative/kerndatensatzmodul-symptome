Profile: MII_PR_Finding_Observation
Parent: Observation
Id: mii-pr-finding-observation
Description: "Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-finding/StructureDefinition/finding-observation"
* identifier MS
* category MS
* status MS
* code MS
* subject MS
* subject only https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference
* subject only Reference(Patient or Group)
* effective[x] MS
* issued MS
* value[x] MS
* dataAbsentReason MS
* interpretation MS
* method MS
* specimen MS
* device MS
* referenceRange MS
* hasMember MS
* derivedFrom MS
* component MS

Instance: mii-ex-finding-arachnodactyly
InstanceOf: mii-pr-finding-observation
Description: "Phänotyp Example für Arachnodactyly"
* status = #final "final"
* subject = Reference(Patient/example)
* code = HPO#HP:0001166 "Arachnodactyly"
* valueCodeableConcept = LOINC#LA9633-4 "Present"

Profile: MII_PR_Finding_Condition
Parent: Condition
Id: mii-pr-finding-condition
Description: "Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom)."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-finding/StructureDefinition/finding-condition"
* identifier MS
* clinicalStatus MS
* verificationStatus MS
* category MS
* severity MS
* code MS
* bodySite MS
* subject MS
* encounter MS
* onset[x] MS
* onsetPeriod MS
* onsetPeriod.start.extension contains $lebensphase named lebensphase-von 0..1 MS
* onsetPeriod.end.extension contains $lebensphase named lebensphase-bis 0..1 MS
* recordedDate MS
* evidence MS
* evidence.code MS
* evidence.detail MS
* stage MS
* stage.summary MS
* stage.assessment MS
* stage.type MS

Instance: mii-ex-condition-vitreoretinochoroidopathy
InstanceOf: mii-pr-finding-condition
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* code = http://snomed.info/sct#711162004 "Autosomal dominant vitreoretinochoroidopathy (disorder)"
* subject = Reference(Patient/example-patient)