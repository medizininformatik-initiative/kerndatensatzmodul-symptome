Profile: SD_MII_Finding_Observation
Parent: Observation
Id: sd-mii-finding-observation
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

Instance: ex-mii-finding-arachnodactyly
InstanceOf: sd-mii-finding-observation
Description: "Phänotyp Example für Arachnodactyly"
* status = #final "final"
* subject = Reference(Patient/example)
* code = HPO#HP:0001166 "Arachnodactyly"
* valueCodeableConcept = LOINC#LA9633-4 "Present"