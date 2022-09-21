Instance: DiagnosticImagingReport1
InstanceOf: Composition
Description: "John Doe - Composition - Diagnostic Imaging Report"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* meta.profile = "http://hl7.org/fhir/us/ccda/StructureDefinition/CCDA-on-FHIR-Diagnostic-Imaging-Report"
* language = #en-US
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "1"
* status = #preliminary
* type = http://loinc.org#18748-4 "Diagnostic imaging study"
* subject = Reference(Patient/john-doe) "John Doe"
* date = "2016-05-16T09:10:14Z"
* author = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
* title = "Diagnostic Imaging Report"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2016-06-15T09:10:14Z"
* attester.party = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
* custodian = Reference(Organization/organization-1) "Acme Labs"
* event.code = http://snomed.info/sct#168731009 "Standard Chest X-Ray"
* event.period.start = "2016-06-15"
* event.period.end = "2016-06-15"
* section[0].title = "Findings Section"
* section[=].code = http://dicom.nema.org/resources/ontology/DCM#121070 "Findings"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The cardiomediastinum is within normal limits. The trachea is midline. \n                    The previously described opacity at the medial right lung base has cleared. \n                    There are no new infiltrates. There is a new round density at the left hilus, \n                    superiorly (diameter about 45mm). A CT scan is recommended for further evaluation. \n                    The pleural spaces are clear. The visualized musculoskeletal structures and the\n                    upper abdomen are stable and unremarkable.</p></div>"
* section[+].title = "DICOM Object Catalog Section"
* section[=].code = http://dicom.nema.org/resources/ontology/DCM#121181 "DICOM Object Catalog"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Computed Radiography Image Storage</p></div>"
* section[+].title = "Indications for Procedure Section"
* section[=].code = http://dicom.nema.org/resources/ontology/DCM#121109 "Indications for Procedure"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Suspected lung tumor</p></div>"