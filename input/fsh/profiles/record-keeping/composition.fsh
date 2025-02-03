// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrComposition
Parent: Composition
Description: "Standard PHR profile of the Composition resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* type = http://loinc.org#11503-0 "Medical records"
* subject 1..1 MS 


Instance: JaneDoePhrComposition
InstanceOf: PhrComposition
Title: "Jane Doe Composition"
Description: "A minimal narrative composition for Jane Doe's patient data."
Usage: #example
* id = "jane-doe-composition"
* status = #final
* type = http://loinc.org#11503-0 "Medical records"
* subject = Reference(JaneDoe)
* date = "2024-12-10"
* author[0] = Reference(JaneDoe)
* title = "Jane Doe Patient Summary"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Summary of Jane Doe's patient information including name, contact, gender, birth date, and address.</p></div>"

* section[0].title = "Related Documents"
* section[0].entry[0].reference = "https://example.org/baseR4/DocumentReference/jane-doe-genomics-document"
* section[0].entry[1].reference = "https://example.org/baseR4/Media/jane-doe-media"




