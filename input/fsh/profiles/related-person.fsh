// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrRelatedPerson
Parent: RelatedPerson
Description: "Standard PHR profile of the RelatedPerson resource."

Instance: ExampleRelatedPerson
InstanceOf: PhrRelatedPerson
Description: "John Doe - RelatedPerson - Sister"
* patient.display = "John Doe"
* patient.reference = "Patient/john-doe"
