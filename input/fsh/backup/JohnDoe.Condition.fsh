Instance: JohnDoe-diabetes
InstanceOf: Condition
Description: "John Doe - Condition - Diabetes"
Usage: #example
* clinicalStatus = #active
* verificationStatus = #differential
* category.coding[0] = http://snomed.info/sct#55607006 "Problem"
* category.coding[+] = http://hl7.org/fhir/condition-category#problem-list-item
* severity = http://snomed.info/sct#24484000 "Severe"
* code = http://snomed.info/sct#44054006 "Diabetes Type 2"
* subject = Reference(Patient/Anyman/Bob) "John Doe"
// * context.reference = "Encounter/for-diabetes"
// * context.display = "John Doe's encounter with Dr. Patricia Primary"
* onsetDateTime = "2018-09-16"
* abatementDateTime = "2018-09-16"
// * assertedDate = "2018-09-16"
* asserter = Reference(Provider/Primary/Patricia)
* note.text = "The patient is now diagnosed with type 2 diabetes."