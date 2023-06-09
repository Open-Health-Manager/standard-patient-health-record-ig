// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.

Profile: PhrBundle
Parent: Bundle
Description: "Standard PHR profile of the Bundle resource."
* type = #document

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource.resolve()"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false   // can be omitted, since false is the default
* entry ^slicing.description = "Slice based on the entry.resource pattern"

// 2023-06-09  we may need to change cardinality on IPA; TBD
// question:  can a record have multiple IPAs? 

* entry contains 
    primaryPatientResource 1..* MS and
    coverPage 1..1 MS and
    internationalPatientSummary 0..* MS and
    documentReferences 1..* MS and
    mediaReferences 1..* MS and
    provenanceRecords 1..* MS

* entry[primaryPatientResource].resource only Patient
* entry[coverPage].resource only Composition
* entry[internationalPatientSummary].resource only Composition
* entry[documentReferences].resource only DocumentReference
* entry[mediaReferences].resource only Media
* entry[provenanceRecords].resource only Provenance






