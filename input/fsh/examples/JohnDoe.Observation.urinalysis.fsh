Instance: observation-lab-urine
InstanceOf: Observation
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observationresults"
* status = #final
* category = http://hl7.org/fhir/observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = http://loinc.org#5811-5 "Specific gravity of Urine by Test strip"
* code.text = "SPEC GRAV"
* subject = Reference(Patient/john-doe) "John Doe"
* effectiveDateTime = "2005-07-05"
* valueQuantity = 1.017 '{urine specific gravity}'
* referenceRange.low = 1.003 '{urine specific gravity}'
* referenceRange.high = 1.035 '{urine specific gravity}'