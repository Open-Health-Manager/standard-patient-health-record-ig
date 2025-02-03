// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrProvenance
Parent: Provenance
Description: "Standard PHR profile of the Provenance resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe


Instance: JaneDoePhrMediaProvenance
InstanceOf: PhrProvenance
Title: "Jane Doe's Photo Provenance"
Description: "Self-attested provenance record for Jane Doe's smartphone photo."
Usage: #example
* id = "jane-doe-media-provenance"
* target = Reference(JaneDoePhrMedia)
* recorded = "2024-12-11T06:00:00Z"

* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[0].who = Reference(JaneDoe)
* agent[0].onBehalfOf = Reference(JaneDoe)

* signature[0].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature[0].when = "2024-12-11T06:00:00Z"
* signature[0].who = Reference(JaneDoe)
* signature[0].data = "c2lnbmF0dXJlCg=="  