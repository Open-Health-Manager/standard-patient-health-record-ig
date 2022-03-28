Instance: Procedure-Note-Example
InstanceOf: Composition
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* meta.profile = "http://hl7.org/fhir/us/ccda/StructureDefinition/CCDA-on-FHIR-Procedure-Note"
* language = #en-US
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "1"
* status = #preliminary
* type = http://loinc.org#28570-0 "Provider-unspecified Procedure note"
* subject = Reference(Patient/john-doe) "John Doe"
* date = "2016-02-28T09:10:14Z"
* author = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
* title = "Procedure Note"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2012-01-04T09:10:14Z"
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
* section[=].entry[0] = Reference(Procedure/procedure-rehab)
* section[=].entry[+] = Reference(MedicationStatement/medication-statement)
* section[+].title = "Assessment Section"
* section[=].code = http://loinc.org#51848-0 "Assessment (evaluation)"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Obesity.</p><p>Uncontrolled brittle Type II diabetic.</p><p>Shortness of breath, mild wheezing.</p><p>Pressure ulder on left knee.</p></div>"
* section[+].title = "Assessment and Plan Section"
* section[=].code = http://loinc.org#51847-2 "Assessment (evaluation) and plan"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Recurrent GI bleed of unknown etiology; hypotension perhaps\n                    secondary to this but as likely secondary to polypharmacy</p><p>Acute on chronic anemia secondary to #1.</p><p>Azotemia, acute renal failure with volume loss secondary tom#1.</p><p>Hyperkalemia secondary to #3 and on ACE and K+ supplement.</p><p>Other chronic diagnoses as noted above, currently stable.</p></div>"
* section[+].title = "Procedure Description Section"
* section[=].code = http://loinc.org#29554-3 "Procedure description"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The patient was brought to the operating room, placed in the supine position, and\n                    general anesthesia was induced. A detailed technical narrative of a laparoscopic\n                    appendectomy from initial incision to placement of any dressings follows.  </p></div>"
* section[+].title = "Procedure Indications Section"
* section[=].code = http://loinc.org#59768-2 "Procedure indications"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The procedure is performed for screening in a low risk individual.</p></div>"
* section[+].title = "Planned Procedure Section"
* section[=].code = http://loinc.org#59772-4 "Planned procedure"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Colonoscopy</p></div>"
* section[+].title = "Procedure Disposition Section"
* section[=].code = http://loinc.org#59775-7 "Procedure disposition"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>The patient was taken to the Endoscopy Recovery Unit in stable condition.</p></div>"
* section[+].title = "Procedure Estimated Blood Loss Section"
* section[=].code = http://loinc.org#59770-8 "Procedure estimated blood loss"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Minimal</p></div>"
* section[+].title = "Procedure Findings Section"
* section[=].code = http://loinc.org#59776-5 "Procedure findings"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>A 6 mm sessile polyp was found in the ascending colon and \n                    removed by snare, no cautery. Bleeding was controlled. \n                    Moderate diverticulosis and hemorrhoids were incidentally noted.</p></div>"
* section[=].entry = Reference(Condition/condition-problem)
* section[+].title = "Procedure Implants Section"
* section[=].code = http://loinc.org#59771-6 "Procedure implants"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>No implants were placed.</p></div>"
* section[+].title = "Procedure Specimens Taken Section"
* section[=].code = http://loinc.org#59773-2 "Procedure specimens taken"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Ascending colon polyp</p></div>"
* section[+].title = "Postprocedure Diagnosis Section"
* section[=].code = http://loinc.org#59769-0 "Postprocedure diagnosis"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Sigmoid diverticulosis, moderate</p><p>Internal hemorrhoids</p><p>Colon polyp, 6mm, ascending colon</p></div>"
* section[+].title = "Chief Complaint and Reason for Visit Section"
* section[=].code = http://loinc.org#46239-0 "Chief complaint and reason for visit"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Cramping, bloating, and constipation.</p></div>"
* section[+].title = "Chief Complaint Section"
* section[=].code = http://loinc.org#10154-3 "Chief complaint"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Dark Stools</p></div>"
* section[+].title = "Complications Section"
* section[=].code = http://loinc.org#55109-3 "Complications"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Asthmatic symptoms while under general anesthesia.</p></div>"
* section[=].entry = Reference(Observation/observation-smoker)
* section[+].title = "Family History Section"
* section[=].code = http://loinc.org#10157-6 "History of family member diseases"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Relationship</b></td><td><b>Diagnosis</b></td><td><b>Age at Onset</b></td></tr><tr><td>Father</td><td>Myocardial Infarction(cause of Death)</td><td>57</td></tr><tr><td>Father</td><td>Diabetes</td><td>40</td></tr></table></div>"
* section[+].title = "History of Past Illness Section"
* section[=].code = http://loinc.org#11348-0 "History of past illness"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Problem Name</b></td><td><b>Type</b></td><td><b>Onset Date</b></td><td><b>Abatement Date</b></td><td><b>Status</b></td></tr><tr><td>Fever</td><td>Condition</td><td>2016-04-01</td><td>2016-04-14</td><td>Complete</td></tr></table></div>"
* section[=].entry = Reference(Condition/condition-problem)
* section[+].title = "History of Present Illness Section"
* section[=].code = http://loinc.org#10164-2 "History of present illness"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>This patient was only recently discharged for a recurrent GI bleed as described below. </p><p>He presented to the ER today c/o a dark stool yesterday but a normal brown\n                    stool today. On exam he was hypotensive in the 80?s resolved after .... .... .... </p><p>Lab at discharge: Glucose 112, BUN 16, creatinine 1.1, electrolytes normal.\n                    H. pylori antibody pending. Admission hematocrit 16%, discharge hematocrit 29%. WBC\n                    7300, platelet count 256,000. Urinalysis normal. Urine culture: No growth. INR 1.1,\n                    PTT 40. </p><p>He was transfused with 6 units of packed red blood cells with .... .... .... </p><p>GI evaluation 12 September: Colonoscopy showed single red clot in .... ........ </p></div>"
* section[+].title = "Medical (General) History Section"
* section[=].code = http://loinc.org#11329-0 "Medical (general) history"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Stomach cramps</p></div>"
* section[+].title = "Medication Section"
* section[=].code = http://loinc.org#10160-0 "History of Medication Use"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Medication</b></td><td><b>Directions</b></td><td><b>Start Date</b></td><td><b>Status</b></td><td><b>Indications</b></td><td><b>Fill Instructions</b></td></tr><tr><td>Amoxicillin</td><td>Amoxicillin Powder, for Suspension 250mg/5ml</td><td>20160401</td><td>Active</td><td>Pneumonia</td><td>Generic substitution allowed</td></tr></table></div>"
* section[=].entry = Reference(MedicationStatement/medication-statement)
* section[+].title = "Physical Exam Section"
* section[=].code = http://loinc.org#29545-1 "Physical findings"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>HEENT: All normal to examination.</p><p>&gt;HEART: RRR, no murmur.</p><p>THORAX &amp; LUNGS: Clear without rhonchi or wheeze.</p><p>ABDOMEN: Marked distension and tenderness, slightly obese, pos bowelsounds.</p><p>BACK: Normal to inspection and palpation, without tenderness; no presacral edema.</p><p>EXTREMITIES: Doughy edema bilaterally, chronic stasis changes, no asymmetrical swelling.</p></div>"
* section[+].title = "Plan of Treatment Section"
* section[=].code = http://loinc.org#18776-5 "Plan of treatment"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Planned Activity</b></td><td><b>Period</b></td><td><b>Status</b></td></tr><tr><td>Colonoscopy</td><td>2010/08/16 - 2010/08/16</td><td>Completed</td></tr><tr><td>Recommendation to Exercise</td><td>2015/10/29</td><td>Ongoing</td></tr></table></div>"
* section[+].title = "Procedures Section"
* section[=].code = http://loinc.org#47519-4 "History of procedures"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Procedure Name</b></td><td><b>Body Site</b></td><td><b>Performer</b></td><td><b>Date Performed</b></td><td><b>Reason</b></td></tr><tr><td>Appendectomy (Procedure)</td><td>Abdomen</td><td>Dr. Adam Everyman</td><td>20160615</td><td>Generalized abdominal pain 24 hours. Localized in RIF with rebound and guarding</td></tr></table></div>"
* section[=].entry = Reference(Procedure/procedure-rehab)
* section[+].title = "Reason for Visit Section"
* section[=].code = http://loinc.org#29299-5 "Reason for visit"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Tenderness of lower abdomen</p></div>"
* section[+].title = "Review of Systems Section"
* section[=].code = http://loinc.org#10187-3 "Review of systems"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Patient denies recent history of fever or malaise. Positive for weakness and\n                   shortness of breath. Several episodes of abdominal tenderness. No recent headaches. \n                   Positive for osteoarthritis in hips, knees and hands. </p></div>"
* section[+].title = "Social History Section"
* section[=].code = http://loinc.org#29762-2 "Social history"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Social History Element</b></td><td><b>Description</b></td><td><b>Effective Dates</b></td></tr><tr><td>Smoking</td><td>1 pack tobacco per day</td><td>2005/05/01 - 2010/02/28</td></tr></table></div>"
* section[=].entry = Reference(Observation/observation-smoker)