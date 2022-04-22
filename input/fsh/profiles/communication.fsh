// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: PhrCommunication
Parent: Communication
Description: "Standard PHR profile of the Communication resource."
// Usage: #definition

Instance: ExampleCommunication
InstanceOf: PhrCommunication
Description: "John Doe - Communication - New medication request."
* status = #completed
