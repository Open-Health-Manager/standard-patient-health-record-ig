Instance: Care-Plan-Example
InstanceOf: Composition
Description: "John Doe - Composition - CarePlan"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* meta.profile = "http://hl7.org/fhir/us/ccda/StructureDefinition/CCDA-on-FHIR-Care-Plan"
* language = #en-US
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:39067866-6319-4008-9c6d-3f0176d6826c"
* status = #preliminary
* type = http://loinc.org#52521-2 "Overall Plan of Care/​Advance Care Directives"
* subject = Reference(Patient/john-doe) "John Doe"
* date = "2016-06-15T09:10:14Z"
* author = Reference(Practitioner/practitioner-1) "Ronald Bone, MD"
* title = "Care Plan"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2016-06-15T09:10:14Z"
* attester.party = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
* custodian = Reference(Organization/organization-1) "Acme Labs"
* event.code = http://snomed.info/sct#73761001 "Colonoscopy"
* event.period.start = "2016-06-15"
* event.period.end = "2016-09-18"
* section[0].title = "Health Concerns Section"
* section[=].code = http://loinc.org#75310-3 "Health concerns Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Concern</b></td><td><b>Status</b></td><td><b>Date</b></td></tr><tr><td>Current every day smoker</td><td>Active</td><td>Concern from June 16, 2015</td></tr><tr><td>Respiratory insufficiency</td><td>Completed</td><td>Concern from June 13, 2015</td></tr><tr><td>Pneumonia</td><td>Completed</td><td>June 16, 2015</td></tr></table></div>"
* section[=].mode = #snapshot
* section[=].orderedBy = http://hl7.org/fhir/list-order#event-date "Sorted by Event Date"
* section[+].title = "Goals Section"
* section[=].code = http://loinc.org#61146-7 "Goals"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Goal</b></td><td><b>Value</b></td><td><b>Date</b></td></tr><tr><td>Pulse oximetry</td><td>92%</td><td>September 2, 2015</td></tr></table></div>"
* section[+].title = "Interventions Section"
* section[=].code = http://loinc.org#62387-6 "Interventions provided"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Planned Intervention</b></td><td><b>Status</b></td><td><b>Date</b></td></tr><tr><td>Elevate head of bed</td><td>active</td><td>June 18, 2016</td></tr><tr><td>Oxygen administration by nasal cannula</td><td>active</td><td>June 18, 2016</td></tr><tr><td>pulse oximetry monitoring</td><td>active</td><td>June 18, 2016</td></tr></table></div>"
* section[+].title = "Health Status Evaluations and Outcomes Section"
* section[=].code = http://loinc.org#11383-7 "Patient problem outcome"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Item</b></td><td><b>Outcome</b></td><td><b>Date</b></td></tr><tr><td>Pulse oximetry</td><td>95%</td><td>June 20, 2016</td></tr></table></div>"