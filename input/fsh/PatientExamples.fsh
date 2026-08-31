// MIGRATION ADDITION (QA repair, owner-directed 2026-08-31; supersedes the
// earlier Gate-A decision to leave the refs dangling): the three source
// examples reference Patient/example and Patient/example-patient, which never
// existed in the package (the pre-migration QA baseline carried the same three
// unresolved-reference errors). These two minimal SYNTHETIC patients carry the
// exact referenced ids so the examples resolve. Obviously artificial test
// data only.

Instance: example
InstanceOf: Patient
Usage: #example
Title: "Beispiel-Patient (synthetisch)"
Description: "Synthetischer Minimal-Patient, auf den die Beispiel-Observations dieses Moduls verweisen. Kein realer Patientenbezug."
* name.family = "Mustermann-Testpatient"
* name.given = "Max"
* birthDate = "1970-01-01"

Instance: example-patient
InstanceOf: Patient
Usage: #example
Title: "Beispiel-Patientin (synthetisch)"
Description: "Synthetische Minimal-Patientin, auf die das Beispiel der Condition dieses Moduls verweist. Kein realer Patientenbezug."
* name.family = "Musterfrau-Testpatientin"
* name.given = "Erika"
* birthDate = "1970-01-01"
