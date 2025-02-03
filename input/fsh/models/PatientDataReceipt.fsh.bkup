Alias: $sct = http://snomed.info/sct

Instance: acupuncture-procedure-1234
InstanceOf: Procedure
Usage: #example
* subject = Reference(Patient/example) "John Doe"
* status = #completed
* code = $sct#386637004 "Acupuncture (procedure)"
* code.text = "Acupuncture therapy"
* performedDateTime = "2024-01-16"
* performer[0].actor = Reference(Practitioner/example) "Dr. Jane Smith"
* performer[=].function.coding[0].system = "http://snomed.info/sct"
* performer[=].function.coding[=].code = #223366
* performer[=].function.coding[=].display = "Acupuncturist"
* location = Reference(Location/1) "Acupuncture Clinic"
* reasonCode.text = "Chronic back pain"
* outcome.text = "Patient reported reduced pain levels"
* note.text = "Patient tolerated procedure well without any complications."


