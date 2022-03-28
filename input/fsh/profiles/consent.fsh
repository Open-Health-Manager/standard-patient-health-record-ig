// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: PhrConsent
Parent: Consent
Description: "Standard PHR profile of the Consent resource."

Instance: ConsentExample
InstanceOf: PhrConsent
Description: "An example of a Consent ."
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Patient Privacy"
* category = https://www.hl7.org/fhir/valueset-consent-category.html#acd "Advanced Directive"