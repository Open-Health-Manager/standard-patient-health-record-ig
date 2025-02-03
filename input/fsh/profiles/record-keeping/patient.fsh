Profile: PhrPatient
Parent: Patient
Description: "Standard PHR profile of the Patient resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe



Instance: JaneDoe
InstanceOf: PhrPatient
Title: "Jane Doe"
Description: "A sample patient resource for Jane Doe."
Usage: #example
* id = "jane-doe"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Jane Doe Example</p></div>"
* identifier[0].system = "http://hospital.example.org/patient"
* identifier[0].value = "12345"
* active = true
* name[0].use = #official
* name[0].family = "Doe"
* name[0].given[0] = "Jane"
* telecom[0].system = #phone
* telecom[0].value = "555-123-4567"
* telecom[0].use = #mobile
* gender = #female
* birthDate = "1985-05-15"
* address[0].line[0] = "123 Main St"
* address[0].city = "Springfield"
* address[0].state = "IL"
* address[0].postalCode = "62704"
* address[0].country = "USA"

