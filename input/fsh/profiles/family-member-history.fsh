// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrFamilyMemberHistory
Parent: FamilyMemberHistory
Description: "Standard PHR profile of the FamilyMemberHistory resource."


Instance: FamilyMemberHistoryExample
InstanceOf: PhrFamilyMemberHistory
Description: "An example of a FamilyMemberHistory ."
* status = #completed
* patient.display = "John Doe"
* patient.reference = "Patient/john-doe"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#child "Child"