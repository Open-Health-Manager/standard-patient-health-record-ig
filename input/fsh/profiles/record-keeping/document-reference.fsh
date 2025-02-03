// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrDocumentReference
Parent: DocumentReference
Description: "Standard PHR profile of the DocumentReference resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
// * content[*].attachment.contentType from http://terminology.hl7.org/ValueSet/media-types

Instance: JaneDoePhrDocument
InstanceOf: PhrDocumentReference
Title: "Jane Doe PDF Report"
Description: "A PDF genomics report for Jane Doe regarding celiac disease."
Usage: #example
* id = "jane-doe-genomics-document"
* status = #current
* subject = Reference(JaneDoe)
* date = "2024-12-11T05:22:27.249Z"
* author[0].reference = "http://hospital.example.org/Practitioner/123"
* author[0].display = "Dr. Smith"
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "http://hospital.example.org/reports/jane-doe-genomics.pdf"
* content[0].attachment.title = "Genomics Report for Jane Doe"
* content[0].attachment.creation = "2024-12-11T05:22:27.249Z"