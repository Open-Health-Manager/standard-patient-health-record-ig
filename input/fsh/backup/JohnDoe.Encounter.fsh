// Instance: JohnDoe-diabetesOnset
// InstanceOf: Encounter
// Description: "John Doe - Encounter - Diabetes diagnosis"
// Usage: #example
// * identifier.use = #temp
// * identifier.value = "Encounter/for/diabetes"
// * status = #finished
// * class = http://hl7.org/fhir/v3/ActCode#AMB "ambulatory"
// * subject = Reference(Patient/Anyman/Bob) "John Doe"
// * participant.individual = Reference(Provider/Primary/Patricia)
// * length = 20 'min' "minutes"
// // * reason.extension.url = "http://hl7.org/fhir/StructureDefinition/encounter-primaryDiagnosis"
// // * reason.extension.valuePositiveInt = 2
// // * reason.text = "The patient has new onset diabetes type 2."
// * diagnosis.condition = Reference(Snomed-CT/44054006) "Diabetes Type 2"
// * serviceProvider = Reference(Organization/f201)