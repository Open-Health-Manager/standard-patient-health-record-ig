// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: MyImmunization
Parent: Immunization
Description: "An example profile of the Immunization resource."


Instance: ImmunizationExample
InstanceOf: MyImmunization
Description: "An example of a Immunization ."
* status = #completed
* patient.display = "Jane Doe"
* patient.reference = "Patient/jane-doe"
* vaccineCode = http://hl7.org/fhir/sid/cvx#MMR "MMR"
* occurrenceString = "2022-01-02"