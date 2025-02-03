// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrMedia
Parent: Media
Description: "Standard PHR profile of the Media resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe


Instance: JaneDoePhrMedia
InstanceOf: PhrMedia
Title: "Jane Doe Smartphone Photo"
Description: "A JPEG photo taken from Jane Doe's smartphone."
Usage: #example
* id = "jane-doe-media"
* status = #completed
* type = http://snomed.info/sct#257444003 "Photograph"
* subject = Reference(JaneDoe)
* createdDateTime = "2024-12-11T05:22:27.249Z"
* content.contentType = #image/jpeg
* content.url = "http://hospital.example.org/media/jane-doe-smartphone-photo.jpg"
* content.title = "Jane Doe Smartphone Photo"

