// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Profile: MyGoal
Parent: Goal
Description: "An example profile of the Goal resource."

Instance: GoalExample
InstanceOf: MyGoal
Description: "An example of a patient ."
* lifecycleStatus = #planned
* subject.display = "Jane Doe"
* subject.reference = "Patient/jane-doe"
* description = http://snomed.info/sct#184004 "Withdrawal arrhythmia"
