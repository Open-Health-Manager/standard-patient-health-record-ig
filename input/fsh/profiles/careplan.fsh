// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: PhrCarePlan
Parent: CarePlan
Description: "Standard PHR profile of the CarePlan resource."


Instance: CarePlanExample
InstanceOf: PhrCarePlan
Description: "An example of a CarePlan ."
* status = #active
* intent = #plan
* subject.display = "John Doe"
* subject.reference = "Patient/john-doe"

