Instance: Operative-Note-Example
InstanceOf: Composition
Description: "John Doe - Composition - Operative Note"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* meta.profile = "http://hl7.org/fhir/us/ccda/StructureDefinition/CCDA-on-FHIR-Operative-Note"
* language = #en-US
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "1"
* status = #preliminary
* type = http://loinc.org#11504-8 "Provider-unspecified Operation Note"
* subject = Reference(Patient/john-doe) "John Doe"
* date = "2016-06-15T09:10:14Z"
* author = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
* title = "Operative Note"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2016-06-15T09:10:14Z"
* attester.party = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
* custodian = Reference(Organization/organization-1) "Community Health and Hospitals"
* event.code = http://snomed.info/sct#73761001 "Colonoscopy"
* event.period.start = "2016-06-15"
* event.period.end = "2016-06-15"
* section[0].title = "Allergies and Intolerances Section"
* section[=].code = http://loinc.org#48765-2 "Allergies and adverse reactions"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Substance</b></td><td><b>Overall Severity</b></td><td><b>Reaction</b></td><td><b>Reaction Severity</b></td><td><b>Status</b></td></tr><tr><td>Cashew Nut</td><td>Severe</td><td>Anaphylactic reaction</td><td>Mild</td><td>Active</td></tr></table></div>"
* section[=].mode = #snapshot
* section[=].orderedBy = http://hl7.org/fhir/list-order#event-date "Sorted by Event Date"
* section[=].entry = Reference(AllergyIntolerance/allergy-intolerance)
* section[+].title = "Anesthesia Section"
* section[=].code = http://loinc.org#59774-0 "Anesthesia"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Conscious sedation with propofol 200 mg IV</p></div>"
* section[=].entry = Reference(Condition/condition-problem)
* section[+].title = "Assessment Section"
* section[=].code = http://loinc.org#51848-0 "Assessment (evaluation)"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Obesity.</p><p>Uncontrolled brittle Type II diabetic.</p><p>Shortness of breath, mild wheezing.</p><p>Pressure ulder on left knee.</p></div>"
* section[+].title = "Assessment and Plan Section"
* section[=].code = http://loinc.org#51847-2 "Assessment (evaluation) and plan"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Recurrent GI bleed of unknown etiology; hypotension perhaps\n                    secondary to this but as likely secondary to polypharmacy</p><p>Acute on chronic anemia secondary to #1.</p><p>Azotemia, acute renal failure with volume loss secondary tom#1.</p><p>Hyperkalemia secondary to #3 and on ACE and K+ supplement.</p><p>Other chronic diagnoses as noted above, currently stable.</p></div>"
* section[+].title = "Complications Section"
* section[=].code = http://loinc.org#55109-3 "Complications"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Asthmatic symptoms while under general anesthesia.</p></div>"
* section[=].entry = Reference(Condition/condition-problem)
* section[+].title = "Preoperative Diagnosis Section"
* section[=].code = http://loinc.org#10219-4 "Preoperative Diagnosis"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Appendicitis</p></div>"
* section[+].title = "Operative Note Surgical Procedure Section"
* section[=].code = http://loinc.org#10223-6 "Operative Note Surgical Procedure"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Laparoscopic Appendectomy</p></div>"
* section[+].title = "Planned Procedure Section"
* section[=].code = http://loinc.org#59772-4 "Planned procedure"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Colonoscopy</p></div>"
* section[+].title = "Procedure Indications Section"
* section[=].code = http://loinc.org#59768-2 "Procedure indications"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The procedure is performed for screening in a low risk individual.</p></div>"
* section[+].title = "Procedure Description Section"
* section[=].code = http://loinc.org#29554-3 "Procedure description"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The patient was brought to the operating room, placed in the supine position, and\n                    general anesthesia was induced. A detailed technical narrative of a laparoscopic\n                    appendectomy from initial incision to placement of any dressings follows.  </p></div>"
* section[+].title = "Procedure Estimated Blood Loss Section"
* section[=].code = http://loinc.org#59770-8 "Procedure Estimated Blood Loss"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Minimal</p></div>"
* section[+].title = "Procedure Findings Section"
* section[=].code = http://loinc.org#59776-5 "Procedure findings"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>A 6 mm sessile polyp was found in the ascending colon and \n                    removed by snare, no cautery. Bleeding was controlled. \n                    Moderate diverticulosis and hemorrhoids were incidentally noted.</p></div>"
* section[=].entry = Reference(Condition/condition-problem)
* section[+].title = "Procedure Specimens Taken Section"
* section[=].code = http://loinc.org#59773-2 "Procedure specimens taken"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Ascending colon polyp</p></div>"
* section[+].title = "Operative Note Fluids Section"
* section[=].code = http://loinc.org#10216-0 "Operative Note Fluids"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>250 ML Ringers Lactate</p></div>"
* section[+].title = "Surgical Drains Section"
* section[=].code = http://loinc.org#11537-8 "Surgical Drains"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Penrose drain placed</p></div>"
* section[+].title = "Procedure Implants Section"
* section[=].code = http://loinc.org#59771-6 "Procedure implants"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>No implants were placed.</p></div>"
* section[+].title = "Procedure Disposition Section"
* section[=].code = http://loinc.org#59775-7 "Procedure disposition"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The patient was taken to the Endoscopy Recovery Unit in stable condition.</p></div>"
* section[+].title = "Postoperative Diagnosis Section"
* section[=].code = http://loinc.org#10218-6 "Postoperative Diagnosis"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Appendicitis with periappendiceal abscess</p></div>"
* section[+].title = "Plan of Treatment Section"
* section[=].code = http://loinc.org#18776-5 "Plan of treatment"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Planned Activity</b></td><td><b>Period</b></td><td><b>Status</b></td></tr><tr><td>Colonoscopy</td><td>2016/09/17 - 2010/09/17</td><td>Planned</td></tr><tr><td>Recommendation to Exercise</td><td>2016/06/25</td><td>Ongoing</td></tr></table></div>"