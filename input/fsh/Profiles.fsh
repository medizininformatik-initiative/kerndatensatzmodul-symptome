Profile: MII_PR_Symptom_Observation
Parent: Observation
Id: mii-pr-symptom-observation
Description: "Messungen oder Zuweisungen zu einem Patienten. Die meisten Beobachtungen sind einfache Entity/Value Paare, sie können aber auch komplex hierarchisch aufgebaut sein."
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-observation"
* insert PR_CS_VS_Version
* insert Publisher
* ^abstract = true
* extension contains http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo named associatedSymptomOrCondition 0..*
* extension[associatedSymptomOrCondition].valueReference only Reference(Observation or Condition)
* extension[associatedSymptomOrCondition] ^short = "Other symptoms or conditions that are associated with this symptom"
* identifier MS
* category MS
* status MS
* code MS
* subject MS
//* subject only https://www.medizininformatik-initiative.de/fhir/core/StructureDefinition/MII-Reference
* subject only Reference(Patient or Group)
* effective[x] MS
* issued MS
* value[x] MS
* dataAbsentReason MS
* interpretation MS
* bodySite from $SNOMEDCTBodyStructures (preferred)
* bodySite.extension contains $bodySite-reference named bodySite 0..1
* bodySite.extension[bodySite].valueReference only Reference($BodyStructureEuCore)
* method MS
* specimen MS
* device MS
* referenceRange MS
* hasMember MS
* derivedFrom MS
* component MS

Instance: mii-exa-symptom-arachnodactyly
InstanceOf: Observation
Description: "Observation Phänotyp Arachnodactyly"
* status = #final "final"
* subject = Reference(Patient/example)
* code = $HPO#HP:0001166 "Arachnodactyly"
* valueCodeableConcept = $LOINC#LA9633-4 "Present"

Instance: mii-exa-symptom-chestpain
InstanceOf: Observation
Description: "Observation Symptom Chest Pain"
* status = #final "final"
* subject = Reference(Patient/example)
* code = $LOINC#75325-1 "Symptom"
* valueCodeableConcept = $SCT#22253000
* bodySite = $SCT#51185008

Profile: MII_PR_Symptom_Condition
Parent: Condition
Id: mii-pr-symptom-condition
Description: "Klinische Zustände, Probleme, Diagnosen oder andere Ereignisse und Situationen. Conditions können als Beschreibung von Krankheiten von Health Professionals dokumentiert sein. Conditions können im Rahmen einer Anamnese vom Patienten selber geäußert werden (Symptom)."
* ^url = "https://www.medizininformatik-initiative.de/fhir/modul-symptom/StructureDefinition/finding-condition"
* insert PR_CS_VS_Version
* insert Publisher
* ^abstract = true
* extension contains $assertedDate named assertedDate 0..1 MS
* identifier MS
* clinicalStatus MS
* verificationStatus MS
* category MS
* severity MS
* code MS
* bodySite MS
* bodySite from $SNOMEDCTBodyStructures (preferred)
* bodySite.extension contains $bodySite-reference named bodySite 0..1
* bodySite.extension[bodySite].valueReference only Reference($BodyStructureEuCore)
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

Instance: mii-exa-symptom-vitreoretinochoroidopathy
InstanceOf: Condition
Usage: #example
* extension[0].url = $assertedDate
* extension[=].valueDateTime = "2023-10-30"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* code = $SCT#711162004 "Autosomal dominant vitreoretinochoroidopathy (disorder)"
* subject = Reference(Patient/example-patient)