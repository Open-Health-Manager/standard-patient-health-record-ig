// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrRelatedPerson
Parent: RelatedPerson
Description: "Standard PHR profile of the RelatedPerson resource."

Instance: RelatedPersonExample
InstanceOf: PhrRelatedPerson
Description: "An example of a RelatedPerson ."
* patient.display = "John Doe"
* patient.reference = "Patient/john-doe"
