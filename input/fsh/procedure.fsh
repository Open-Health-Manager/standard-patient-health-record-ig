// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: MyProcedure
Parent: Procedure
Description: "An example profile of the Procedure resource."

Instance: ProcedureExample
InstanceOf: MyProcedure
Description: "An example of a Procedure ."
* status = #active
* subject.display = "Jane Doe"
* subject.reference = "Patient/jane-doe"
