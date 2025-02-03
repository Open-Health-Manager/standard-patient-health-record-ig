// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Logical: Environmental
Id: Environmental
Title: "Environmental"
Description: "Standard PHR profile of the Environmental resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* ^experimental = true
* temperature 1..1 BackboneElement "The ambient temperature"
* humidity 1..1 BackboneElement "The ambient humidity"




