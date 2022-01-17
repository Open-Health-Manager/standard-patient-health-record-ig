// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyCommunication
Parent: Communication
Description: "An example profile of the Communication resource."

Instance: CommunicationExample
InstanceOf: MyCommunication
Description: "An example of a Communication ."
* status = #active
