// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: MyMedicationStatement
Parent: MedicationStatement
Description: "An example profile of the MedicationStatement resource."


Instance: MedicationStatementExample
InstanceOf: MyMedicationStatement
Description: "An example of a MedicationStatement ."
* status = #active
* subject.display = "Jane Doe"
* subject.reference = "Patient/jane-doe"
* medicationReference.display = "Acetaminophen"
* medicationReference.reference = "Medication/acetaminophen"