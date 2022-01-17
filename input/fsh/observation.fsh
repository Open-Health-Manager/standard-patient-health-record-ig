// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203

Profile: MyObservation
Parent: Observation
Description: "An example profile of the Observation resource."

Instance: ObservationExample
InstanceOf: MyObservation
Description: "An example of a Observation ."
* status = #active
* subject.display = "Jane Doe"
* subject.reference = "Patient/jane-doe"
* code = $v2-0203#10200-4 "Physical findings of Heart Narrative"



