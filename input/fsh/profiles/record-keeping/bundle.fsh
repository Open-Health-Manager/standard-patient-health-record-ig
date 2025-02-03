// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrBundle
Parent: Bundle
Description: "Standard PHR profile of the Bundle resource."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* type = #document

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "$this.resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false   // can be omitted, since false is the default
* entry ^slicing.description = "Slice based on the entry.resource pattern"

// 2023-06-09  we may need to change cardinality on IPA; TBD
// question:  can a record have multiple IPAs? 

* entry contains 
    primaryPatientResource 1..* MS and
    coverPage 1..1 MS and
    internationalPatientSummary 0..* MS and
    documentReferences 0..* MS and
    mediaReferences 0..* MS and
    provenanceRecords 0..* MS

* entry[primaryPatientResource].resource only Patient
* entry[coverPage].resource only Composition
* entry[documentReferences].resource only DocumentReference
* entry[mediaReferences].resource only Media
* entry[provenanceRecords].resource only Provenance






Instance: PhrBundle-example
InstanceOf: PhrBundle
Description: "Jane Doe - PhrBundle"
Usage: #example
* type = #document
* timestamp = "2024-12-11T07:00:00Z"
* identifier[0].system = "urn:uuid"
* identifier[0].value = "123e4567-e89b-12d3-a456-426614174000"
* entry[0].resource = JaneDoePhrComposition
* entry[=].fullUrl = "https://example.org/baseR4/Composition/jane-doe-composition"
* entry[+].resource = JaneDoe
* entry[=].fullUrl = "https://example.org/baseR4/Patient/jane-doe"
* entry[+].resource = JaneDoePhrDocument
* entry[=].fullUrl = "https://example.org/baseR4/DocumentReference/jane-doe-genomics-document"
* entry[+].resource = JaneDoePhrMedia
* entry[=].fullUrl = "https://example.org/baseR4/Media/jane-doe-media"
* entry[+].resource = JaneDoePhrMediaProvenance
* entry[=].fullUrl = "https://example.org/baseR4/Provenance/jane-doe-media-provenance"
