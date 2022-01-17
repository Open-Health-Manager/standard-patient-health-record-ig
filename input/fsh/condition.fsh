// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyCondition
Parent: Condition
Description: "An example profile of the Condition resource."

Instance: ConditionExample
InstanceOf: MyCondition
Description: "An example of a Condition ."
* subject.display = "Jane Doe"
* subject.reference = "Patient/jane-doe"
