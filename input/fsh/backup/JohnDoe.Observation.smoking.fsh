Instance: observation-smoker
InstanceOf: Observation
Description: "John Doe - Observation - Smoking status"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* status = #final
* category = http://hl7.org/fhir/observation-category#social-history "Social History"
* category.text = "Social History"
* code = http://loinc.org#72166-2 "Tobacco smoking status"
* code.text = "Tobacco smoking status"
* subject = Reference(Patient/john-doe) "John Doe"
* issued = "2016-03-18T05:27:04+00:00"
* valueCodeableConcept = http://snomed.info/sct#428041000124106 "Current some day smoker"
* valueCodeableConcept.text = "Current some day smoker"