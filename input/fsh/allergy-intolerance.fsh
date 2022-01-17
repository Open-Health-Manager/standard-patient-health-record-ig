// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyAllergyIntolerance
Parent: AllergyIntolerance
Description: "An example profile of the AllergyIntolerance resource."

Instance: AllergyIntoleranceExample
InstanceOf: MyAllergyIntolerance
Description: "An example of an AllergyIntolerance."
* patient.display = "Jane Doe"
* patient.reference = "Patient/jane-doe"