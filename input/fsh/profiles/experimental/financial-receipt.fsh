// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.


Logical: FinancialReceipt
Id: FinancialReceipt
Title: "Financial Receipt"
Description: "Financial receipt for over-the-counter (OTC) purchases.  Based off the Claim resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* ^experimental = true
* subject 1..1 Reference "The patient or person that purchased the item" 
* date 1..1 dateTime "The date that the item was purchased" 
* amount 1..1 Money "The amount that the item cost"