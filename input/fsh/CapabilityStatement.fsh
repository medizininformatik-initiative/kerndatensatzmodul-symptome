Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: Profile (profile, expectation)
* rest.resource[=].profile[+] = "{profile}"
* rest.resource[=].profile[=].extension[0].url = $exp
* rest.resource[=].profile[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

Instance: mii-cps-symptom-capabilitystatement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/CapabilityStatement/metadata"
* insert Version
* insert SP_Publisher
* name = "MII_CPS_Symptom_CapabilityStatement"
* title = "MII CPS Symptom CapabilityStatement"
* status = #active
* experimental = false
* date = "2023-10-31"
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul Symptom/klinischer Phänotyp der Medizininformatik Initiative zu implementieren."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* rest.mode = #server

// Observation requirements
* insert SupportResource(Observation, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Observation, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-observation|2024.0.0-ballot, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(based-on, http://hl7.org/fhir/SearchParameter/Observation-based-on, #reference, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Observation-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(code-value-concept, http://hl7.org/fhir/SearchParameter/Observation-code-value-concept, #composite, #SHALL)
* insert SupportSearchParam(code-value-date, http://hl7.org/fhir/SearchParameter/Observation-code-value-date, #composite, #SHALL)
* insert SupportSearchParam(code-value-quantity, http://hl7.org/fhir/SearchParameter/Observation-code-value-quantity, #composite, #SHALL)
* insert SupportSearchParam(code-value-string, http://hl7.org/fhir/SearchParameter/Observation-code-value-string, #composite, #SHALL)
* insert SupportSearchParam(component-code, http://hl7.org/fhir/SearchParameter/Observation-component-code, #token, #SHALL)
* insert SupportSearchParam(component-code-value-concept, http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept, #composite, #SHALL)
* insert SupportSearchParam(component-code-value-quantity, http://hl7.org/fhir/SearchParameter/Observation-component-code-value-quantity, #composite, #SHALL)
* insert SupportSearchParam(component-data-absent-reason, http://hl7.org/fhir/SearchParameter/Observation-component-data-absent-reason, #token, #SHALL)
* insert SupportSearchParam(component-value-concept, http://hl7.org/fhir/SearchParameter/Observation-component-value-concept, #token, #SHALL)
* insert SupportSearchParam(component-value-quantity, http://hl7.org/fhir/SearchParameter/Observation-component-value-quantity, #quantity, #SHALL)
* insert SupportSearchParam(data-absent-reason, http://hl7.org/fhir/SearchParameter/Observation-data-absent-reason, #token, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(derived-from, http://hl7.org/fhir/SearchParameter/Observation-derived-from, #reference, #SHALL)
* insert SupportSearchParam(device, http://hl7.org/fhir/SearchParameter/Observation-device, #reference, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL)
* insert SupportSearchParam(focus, http://hl7.org/fhir/SearchParameter/Observation-focus, #reference, #SHALL)
* insert SupportSearchParam(has-member, http://hl7.org/fhir/SearchParameter/Observation-has-member, #reference, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(method, http://hl7.org/fhir/SearchParameter/Observation-method, #token, #SHALL)
* insert SupportSearchParam(part-of, http://hl7.org/fhir/SearchParameter/Observation-part-of, #reference, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(performer, http://hl7.org/fhir/SearchParameter/Observation-performer, #reference, #SHALL)
* insert SupportSearchParam(specimen, http://hl7.org/fhir/SearchParameter/Observation-specimen, #reference, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Observation-status, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Observation-subject, #reference, #SHALL)
* insert SupportSearchParam(value-concept, http://hl7.org/fhir/SearchParameter/Observation-value-concept, #token, #SHALL)
* insert SupportSearchParam(value-date, http://hl7.org/fhir/SearchParameter/Observation-value-date, #date, #SHALL)
* insert SupportSearchParam(value-quantity, http://hl7.org/fhir/SearchParameter/Observation-value-quantity, #quantity, #SHALL)
* insert SupportSearchParam(value-string, http://hl7.org/fhir/SearchParameter/Observation-value-string, #string, #SHALL)

// Condition requirements
* insert SupportResource(Condition, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Condition, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-symptom/StructureDefinition/finding-condition|2024.0.0-ballot, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(abatement-age, http://hl7.org/fhir/SearchParameter/Condition-abatement-age, #quantity, #SHALL)
* insert SupportSearchParam(abatement-date, http://hl7.org/fhir/SearchParameter/Condition-abatement-date, #date, #SHALL)
* insert SupportSearchParam(abatement-string, http://hl7.org/fhir/SearchParameter/Condition-abatement-string, #string, #SHALL)
* insert SupportSearchParam(body-site, http://hl7.org/fhir/SearchParameter/Condition-body-site, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Condition-category, #token, #SHALL)
* insert SupportSearchParam(clinical-status, http://hl7.org/fhir/SearchParameter/Condition-clinical-status, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/Condition-encounter, #reference, #SHALL)
* insert SupportSearchParam(evidence, http://hl7.org/fhir/SearchParameter/Condition-evidence, #token, #SHALL)
* insert SupportSearchParam(evidence-detail, http://hl7.org/fhir/SearchParameter/Condition-evidence-detail, #reference, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(onset-age, http://hl7.org/fhir/SearchParameter/Condition-onset-age, #quantity, #SHALL)
* insert SupportSearchParam(onset-date, http://hl7.org/fhir/SearchParameter/Condition-onset-date, #date, #SHALL)
* insert SupportSearchParam(onset-info, http://hl7.org/fhir/SearchParameter/Condition-onset-info, #string, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(recorded-date, http://hl7.org/fhir/SearchParameter/Condition-recorded-date, #date, #SHALL)
* insert SupportSearchParam(severity, http://hl7.org/fhir/SearchParameter/Condition-severity, #token, #SHALL)
* insert SupportSearchParam(stage, http://hl7.org/fhir/SearchParameter/Condition-stage, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Condition-subject, #reference, #SHALL)
* insert SupportSearchParam(verification-status, http://hl7.org/fhir/SearchParameter/Condition-verification-status, #token, #SHALL)

