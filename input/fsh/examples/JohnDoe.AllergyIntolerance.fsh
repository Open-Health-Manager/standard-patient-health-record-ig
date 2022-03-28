Instance: allergy-intolerance
InstanceOf: AllergyIntolerance
Description: "John Doe - AllergyIntolerance - Sulfonamide"

Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance"
* clinicalStatus.text = "active"
* verificationStatus.text = "confirmed"
* category = #medication
* criticality = #high
* code = http://hl7.org/fhir/ndfrt#N0000175503 "sulfonamide antibacterial"
* code.text = "sulfonamide antibacterial"
* patient = Reference(Patient/john-doe) "John Doe"
* onsetDateTime = "2000"
* reaction.manifestation = http://snomed.info/sct#271807003 "skin rash"
* reaction.manifestation.text = "skin rash"
* reaction.severity = #mild