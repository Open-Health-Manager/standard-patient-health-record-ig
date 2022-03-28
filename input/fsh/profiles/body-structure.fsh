// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrBodyStructure
Parent: BodyStructure
Description: "Standard PHR profile of the BodyStructure resource."


Instance: BodyStructureExample
InstanceOf: PhrBodyStructure
Description: "An example of a BodyStructure ."
* patient.display = "John Doe"
* patient.reference = "Patient/john-doe"


