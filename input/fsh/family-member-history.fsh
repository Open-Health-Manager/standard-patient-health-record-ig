// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: MyFamilyMemberHistory
Parent: FamilyMemberHistory
Description: "An example profile of the FamilyMemberHistory resource."


Instance: FamilyMemberHistoryExample
InstanceOf: MyFamilyMemberHistory
Description: "An example of a FamilyMemberHistory ."
* status = #active
* patient.display = "Jane Doe"
* patient.reference = "Patient/jane-doe"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#child "Child"