Profile: MII_PR_Symptom_GlasgowComaScore
Parent: MII_PR_Symptom_Observation
Id: mii-pr-symptom-glasgow-coma-score
Title: "MII PR Symptom Glasgow Coma Score"
Description: "Profil für Glasgow Coma Score"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-finding/StructureDefinition/glasgow-coma-score"
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains survey 1..1
* category[survey] = $ObsCat#survey
* code = $LOINC#9269-2
* subject 1..
* effective[x] 1..
* effective[x] only dateTime
* value[x] 1..
* value[x] only Quantity
* valueQuantity = $UCUM#1
* valueQuantity.value 1.. MS
* valueQuantity.unit MS
* valueQuantity.system 1.. MS
* valueQuantity.code 1.. MS 
* specimen 0..0
* referenceRange.low = 3 $UCUM#1
* referenceRange.high = 15 $UCUM#1
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component 3.. MS
* component contains 
    eye 1..1 MS and
    verbal 1..1 MS and
    motor 1..1 MS
* component[eye] ^short = "Eye"
* component[eye] ^definition = "Ocular response"
* component[eye].code = $LOINC#9267-6
* component[eye].value[x] only CodeableConcept
* component[eye].valueCodeableConcept from mii-vs-symptom-glasgow-coma-score-eye (required)
* component[verbal] ^short = "Verbal"
* component[verbal] ^definition = "Oral response"
* component[verbal].code = $LOINC#9270-0
* component[verbal].value[x] only CodeableConcept
* component[verbal].valueCodeableConcept from mii-vs-symptom-glasgow-coma-score-verbal (required)
* component[motor] ^short = "Motor"
* component[motor] ^definition = "Motoric response"
* component[motor].code = $LOINC#9268-4
* component[motor].value[x] only CodeableConcept
* component[motor].valueCodeableConcept from mii-vs-symptom-glasgow-coma-score-motor (required)

Instance: mii-vs-symptom-glasgow-coma-score-eye
InstanceOf: ValueSet
Usage: #definition
* status = #draft
* name = "MII_VS_Symptom_GlasgowComaScore_Eye"
* title = "MII VS Symptom Glasgow Coma Score Eye"
* description = "Values for eye component of Glasgow Coma Score"
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-finding/ValueSet/glasgow-coma-score-eye"
* compose.include.system = "http://loinc.org"
* compose.include.concept[0].code = #LA6553-7
* compose.include.concept[=].display = "No eye opening"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 1
* compose.include.concept[+].code = #LA6554-5
* compose.include.concept[=].display = "Eye opening to pain"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 2
* compose.include.concept[+].code = #LA6555-2
* compose.include.concept[=].display = "Eye opening to verbal command"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 3
* compose.include.concept[+].code = #LA6556-0
* compose.include.concept[=].display = "Eye opening spontaneously"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 4

Instance: mii-vs-symptom-glasgow-coma-score-verbal
InstanceOf: ValueSet
Usage: #definition
* status = #draft
* name = "MII_VS_Symptom_GlasgowComaScore_Verbal"
* title = "MII VS Symptom Glasgow Coma Score Verbal"
* description = "Values for verbal component of Glasgow Coma Score"
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-finding/ValueSet/glasgow-coma-score-verbal"
* compose.include.system = "http://loinc.org"
* compose.include.concept[0].code = #LA6557-8
* compose.include.concept[=].display = "No verbal response (>2 yrs); no vocal response (<=2 yrs)"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 1
* compose.include.concept[+].code = #LA6558-6
* compose.include.concept[=].display = "Incomprehensible sounds"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 2
* compose.include.concept[+].code = #LA6559-4
* compose.include.concept[=].display = "Inappropriate words"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 3
* compose.include.concept[+].code = #LA6560-2
* compose.include.concept[=].display = "Confused"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 4
* compose.include.concept[+].code = #LA6561-0
* compose.include.concept[=].display = "Oriented"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 5

Instance: mii-vs-symptom-glasgow-coma-score-motor
InstanceOf: ValueSet
Usage: #definition
* status = #draft
* name = "MII_VS_Symptom_GlasgowComaScore_Motor"
* title = "MII VS Symptom Glasgow Coma Score Motor"
* description = "Values for motor component of Glasgow Coma Score"
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-finding/ValueSet/glasgow-coma-score-motor"
* compose.include.system = "http://loinc.org"
* compose.include.concept[0].code = #LA6562-8
* compose.include.concept[=].display = "No motor response"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 1
* compose.include.concept[+].code = #LA6563-6
* compose.include.concept[=].display = "Extension to pain"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 2
* compose.include.concept[+].code = #LA6564-4
* compose.include.concept[=].display = "Flexion to pain"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 3
* compose.include.concept[+].code = #LA6565-1
* compose.include.concept[=].display = "Withdrawal from pain"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 4
* compose.include.concept[+].code = #LA6566-9
* compose.include.concept[=].display = "Localizing pain"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 5
* compose.include.concept[+].code = #LA6567-7
* compose.include.concept[=].display = "Obeys commands"
* compose.include.concept[=].extension.url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
* compose.include.concept[=].extension.valueDecimal = 6

Instance: mii-exa-symptom-glasgow-coma-score
InstanceOf: mii-pr-symptom-glasgow-coma-score
Usage: #example
* status = #final
* category[survey] = $ObsCat#survey
* code = $LOINC#9269-2
* subject = Reference(Patient/example)
* effectiveDateTime = "2013-04-02T09:30:10+01:00"
* valueQuantity = 7 $UCUM#1 "Score"
* component[eye].code = $LOINC#9267-6
* component[eye].valueCodeableConcept = $LOINC#LA6554-5
* component[verbal].code = $LOINC#9270-0
* component[verbal].valueCodeableConcept = $LOINC#LA6561-0
* component[motor].code = $LOINC#9268-4
* component[motor].valueCodeableConcept = $LOINC#LA6564-4
