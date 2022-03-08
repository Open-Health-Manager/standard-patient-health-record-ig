// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: MyDiagnosticReport
Parent: DiagnosticReport
Description: "An example profile of the DiagnosticReport resource."


Instance: DiagnosticReportExample
InstanceOf: MyDiagnosticReport
Description: "An example of a DiagnosticReport ."
* status = #final
* code = http://snomed.info/sct#184004 "Withdrawal arrhythmia"
// * patient.display = "Jane Doe"
// * patient.reference = "Patient/jane-doe"