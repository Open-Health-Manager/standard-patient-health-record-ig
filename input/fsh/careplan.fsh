// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyCarePlan
Parent: CarePlan
Description: "An example profile of the CarePlan resource."


Instance: CarePlanExample
InstanceOf: MyCarePlan
Description: "An example of a CarePlan ."
* status = #active
* intent = #plan
* subject.display = "Jane Doe"
* subject.reference = "Patient/jane-doe"

