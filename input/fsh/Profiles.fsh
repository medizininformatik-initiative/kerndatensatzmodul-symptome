Profile: MII_PR_Symptom_Observation
Parent: Observation
Id: mii-pr-symptom-observation
Description: "Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-observation"
* insert PR_CS_VS_Version
* insert Publisher
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
InstanceOf: mii-pr-symptom-observation
Description: "Phänotyp Example für Arachnodactyly"
* status = #final "final"
* subject = Reference(Patient/example)
* code = $HPO#HP:0001166 "Arachnodactyly"
* valueCodeableConcept = $LOINC#LA9633-4 "Present"

Profile: MII_PR_Symptom_Condition
Parent: Condition
Id: mii-pr-symptom-condition
Description: "Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom)."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-condition"
* insert PR_CS_VS_Version
* insert Publisher
* extension contains $assertedDate named assertedDate 0..1 MS
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
InstanceOf: mii-pr-symptom-condition
Usage: #example
* extension[0].url = $assertedDate
* extension[=].valueDateTime = "2023-10-30"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* code = $SCT#711162004 "Autosomal dominant vitreoretinochoroidopathy (disorder)"
* subject = Reference(Patient/example-patient)