// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: PhrCarePlan
Parent: CarePlan
Description: "Standard PHR profile of the CarePlan resource."
// Usage: #definition

Instance: ExampleCarePlan
InstanceOf: PhrCarePlan
Description: "John Doe - CarePlan - Consolidated"
* status = #active
* intent = #plan
* subject.display = "John Doe"
* subject.reference = "Patient/john-doe"

