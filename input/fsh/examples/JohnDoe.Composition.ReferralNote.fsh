Instance: Referral-Note-Example
InstanceOf: Composition
Usage: #example
* meta.versionId = "2"
* meta.lastUpdated = "2019-01-25T16:39:57.088-05:00"
* meta.profile = "http://hl7.org/fhir/us/ccda/StructureDefinition/CCDA-on-FHIR-Referral-Note"
* language = #en-US
* extension[0].url = "https://trifolia-fhir.lantanagroup.com/stu3/StructureDefinition/github-branch"
* extension[=].valueString = "master"
* extension[+].url = "https://trifolia-fhir.lantanagroup.com/stu3/StructureDefinition/github-path"
* extension[=].valueString = "HL7/ccda-on-fhir/source/resources/composition/CCDA-on-FHIR-Referral-Note-Example.xml"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "1"
* status = #preliminary
* type = http://loinc.org#57133-1 "Referral Note"
* subject = Reference(Patient/jane-doe) "Jane Doe"
* date = "2016-06-15T09:10:14Z"
* author = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
* title = "Referral Note"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2016-06-15T09:10:14Z"
* attester.party = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
* custodian = Reference(Organization/organization-1) "Community Health and Hospitals"
* event.code = http://hl7.org/fhir/v3/ActClass#PCPR "Care Provision"
* event.period.start = "2016-06-15"
* event.period.end = "2016-06-15"
* section[0].title = "Allergies and Intolerances Section"
* section[=].code = http://loinc.org#48765-2 "Allergies and adverse reactions"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Substance</b></td><td><b>Overall Severity</b></td><td><b>Reaction</b></td><td><b>Reaction Severity</b></td><td><b>Status</b></td></tr><tr><td>Cashew Nut</td><td>Severe</td><td>Anaphylactic reaction</td><td>Mild</td><td>Active</td></tr></table></div>"
* section[=].mode = #snapshot
* section[=].orderedBy = http://hl7.org/fhir/list-order#event-date "Sorted by Event Date"
* section[=].entry = Reference(AllergyIntolerance/allergy-intolerance)
* section[+].title = "Advance Directives Section"
* section[=].code = http://loinc.org#42348-3 "Advance directives"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Name</b></td><td><b>Applies Period</b></td></tr><tr><td>Resuscitation</td><td>2015/01/01 - 2016/12/31</td></tr></table></div>"
* section[+].title = "Assessment Section"
* section[=].code = http://loinc.org#51848-0 "Assessment (evaluation)"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Obesity.</p><p>Uncontrolled brittle Type II diabetic.</p><p>Shortness of breath, mild wheezing.</p><p>Pressure ulder on left knee.</p></div>"
* section[+].title = "Assessment and Plan Section"
* section[=].code = http://loinc.org#51847-2 "Assessment (evaluation) and plan"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Recurrent GI bleed of unknown etiology; hypotension perhaps\n                    secondary to this but as likely secondary to polypharmacy</p><p>Acute on chronic anemia secondary to #1.</p><p>Azotemia, acute renal failure with volume loss secondary tom#1.</p><p>Hyperkalemia secondary to #3 and on ACE and K+ supplement.</p><p>Other chronic diagnoses as noted above, currently stable.</p></div>"
* section[+].title = "Family History Section"
* section[=].code = http://loinc.org#10157-6 "History of family member diseases"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Relationship</b></td><td><b>Diagnosis</b></td><td><b>Age at Onset</b></td></tr><tr><td>Father</td><td>Myocardial Infarction(cause of Death)</td><td>57</td></tr><tr><td>Father</td><td>Diabetes</td><td>40</td></tr></table></div>"
* section[+].title = "History of Past Illness Section"
* section[=].code = http://loinc.org#11348-0 "History of past illness"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>See History of Present Illness</p></div>"
* section[+].title = "History of Present Illness Section"
* section[=].code = http://loinc.org#10164-2 "History of present illness"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>This patient was only recently discharged for a recurrent GI bleed as described below. </p><p>He presented to the ER today c/o a dark stool yesterday but a normal brown\n                    stool today. On exam he was hypotensive in the 80?s resolved after .... .... .... </p><p>Lab at discharge: Glucose 112, BUN 16, creatinine 1.1, electrolytes normal.\n                    H. pylori antibody pending. Admission hematocrit 16%, discharge hematocrit 29%. WBC\n                    7300, platelet count 256,000. Urinalysis normal. Urine culture: No growth. INR 1.1,\n                    PTT 40. </p><p>He was transfused with 6 units of packed red blood cells with .... .... .... </p><p>GI evaluation 12 September: Colonoscopy showed single red clot in .... ........ </p></div>"
* section[+].title = "Social History Section"
* section[=].code = http://loinc.org#29762-2 "Social history"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Social History Element</b></td><td><b>Description</b></td><td><b>Effective Dates</b></td></tr><tr><td>Smoking</td><td>1 pack tobacco per day</td><td>2005/05/01 - 2010/02/28</td></tr></table></div>"
* section[=].entry = Reference(Observation/observation-smoker)
* section[+].title = "General Status Section"
* section[=].code = http://loinc.org#10210-3 "Physical findings of General status"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Alert and in good spirits, no acute distress.</p></div>"
* section[+].title = "Functional Status Section"
* section[=].code = http://loinc.org#47420-5 "Functional status"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Functional or Cognitive Finding</b></td><td><b>Observation</b></td><td><b>Observation Date</b></td><td><b>Condition Status</b></td></tr><tr><td>Ambulation (Dependent to Independent</td><td>Independently able</td><td>2010/03/11</td><td>Active</td></tr><tr><td>Finding of Functional Performance and Activity</td><td>Dyspnea</td><td>2008/02/16</td><td>Active</td></tr><tr><td>Cognitive Function Finding</td><td>Memory Impairment</td><td>2014/04/29</td><td>Active</td></tr></table></div>"
* section[+].title = "Mental Status Section"
* section[=].code = http://loinc.org#10190-7 "Mental status"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table border=\"1\" width=\"100%\"><thead><tr><td><b>Mental Status Findings</b></td><td><b>Effective Dates</b></td><td><b>Condition Status</b></td></tr></thead><tr><td>Mental Function</td><td>July 31, 2013</td><td>Impaired</td></tr><tr><td>Cognitive Abilities</td><td>July 31, 2013</td><td>Judgement, Intact</td></tr><tr><td>Cognitive Function</td><td>July 31, 2013</td><td>Aggressive Behavior</td></tr><tr><td>Cognitive Function</td><td>July 31, 2013</td><td>Difficulty understanding own emotions</td></tr><tr><td>Cognitive Function</td><td>July 31, 2013</td><td>Difficulty communicating Thoughts </td></tr></table></div>"
* section[+].title = "Immunizations Section"
* section[=].code = http://loinc.org#11369-6 "History of immunization"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Vaccine</b></td><td><b>Date</b></td><td><b>Status</b></td></tr><tr><td>Fluvax (Influenza)</td><td>2016-04-05</td><td>Completed</td></tr></table></div>"
* section[=].entry = Reference(Immunization/immunization)
* section[+].title = "Nutrition Section"
* section[=].code = http://loinc.org#61144-2 "Diet and nutrition"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Date</b></td><td><b>Nutritional Status</b></td><td><b>Diet</b></td></tr><tr><td>2005/12/29</td><td>Well nourished</td><td>Low sodium diet, excessive carbohydrate</td></tr><tr><td>2010/05/26</td><td>Slight dehydration</td><td>High protein, low fibre</td></tr></table></div>"
* section[+].title = "Reason for Referral Section"
* section[=].code = http://loinc.org#42349-1 "Reason for Referral"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Colonoscopy</p></div>"
* section[+].title = "Physical Exam Section"
* section[=].code = http://loinc.org#29545-1 "Physical findings"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>HEENT: All normal to examination.</p><p>&gt;HEART: RRR, no murmur.</p><p>THORAX &amp; LUNGS: Clear without rhonchi or wheeze.</p><p>ABDOMEN: Marked distension and tenderness, slightly obese, pos bowelsounds.</p><p>BACK: Normal to inspection and palpation, without tenderness; no presacral edema.</p><p>EXTREMITIES: Doughy edema bilaterally, chronic stasis changes, no asymmetrical swelling.</p></div>"
* section[+].title = "Review of Systems Section"
* section[=].code = http://loinc.org#10187-3 "Review of systems"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Patient denies recent history of fever or malaise. Positive for weakness and\n                    shortness of breath. Several episodes of abdominal tenderness. No recent headaches. \n                    Positive for osteoarthritis in hips, knees and hands. </p></div>"
* section[+].title = "Medication Section"
* section[=].code = http://loinc.org#10160-0 "History of Medication Use"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Medication</b></td><td><b>Directions</b></td><td><b>Start Date</b></td><td><b>Status</b></td><td><b>Indications</b></td><td><b>Fill Instructions</b></td></tr><tr><td>Amoxicillin</td><td>Amoxicillin Powder, for Suspension 250mg/5ml</td><td>20160401</td><td>Active</td><td>Pneumonia</td><td>Generic substitution allowed</td></tr></table></div>"
* section[=].entry = Reference(MedicationStatement/medication-statement)
* section[+].title = "Medical Equipment Section"
* section[=].code = http://loinc.org#46264-8 "Medical equipment"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Supply/Device</b></td><td><b>Date Supplied</b></td></tr><tr><td>Automatic Implantable cardioverter/defbrillator</td><td>2008/11/16</td></tr><tr><td>Wheelchair</td><td>1999/12/01</td></tr></table></div>"
* section[+].title = "Plan of Treatment Section"
* section[=].code = http://loinc.org#18776-5 "Plan of treatment"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Planned Activity</b></td><td><b>Period</b></td><td><b>Status</b></td></tr><tr><td>Colonoscopy</td><td>2016/08/16 - 2010/08/16</td><td>Completed</td></tr><tr><td>Recommendation to Exercise</td><td>2016/10/29</td><td>Ongoing</td></tr></table></div>"
* section[+].title = "Problem Section"
* section[=].code = http://loinc.org#11450-4 "Problem list"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Problem Name</b></td><td><b>Type</b></td><td><b>Onset Date</b></td><td><b>Abatement Date</b></td><td><b>Status</b></td></tr><tr><td>Fever</td><td>Condition</td><td>2016-04-01</td><td>2016-04-14</td><td>Complete</td></tr></table></div>"
* section[=].entry = Reference(Condition/condition-problem)
* section[+].title = "Procedures Section"
* section[=].code = http://loinc.org#47519-4 "History of procedures"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Procedure Name</b></td><td><b>Body Site</b></td><td><b>Performer</b></td><td><b>Date Performed</b></td><td><b>Reason</b></td></tr><tr><td>Appendectomy (Procedure)</td><td>Abdomen</td><td>Dr. Adam Everyman</td><td>20160405</td><td>Generalized abdominal pain 24 hours. Localized in RIF with rebound and guarding</td></tr></table></div>"
* section[=].entry = Reference(Procedure/procedure-rehab)
* section[+].title = "Results Section"
* section[=].code = http://loinc.org#30954-2 "Relevant diagnostic tests and laboratory data"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Result Type</b></td><td><b>Quantity Value</b></td><td><b>Date</b></td><td><b>Status</b></td></tr><tr><td>Glucose [Moles/volume] in Blood</td><td>6.3 mmol/l</td><td>2016/04/01</td><td>Final</td></tr></table></div>"
* section[=].entry = Reference(Observation/observation-lab-urine)
* section[+].title = "Vital Signs Section"
* section[=].code = http://loinc.org#8716-3 "Vital signs"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Vital Sign</b></td><td><b>Date</b></td><td><b>Value</b></td></tr><tr><td>Temperature</td><td>2016/06/15</td><td>39 Degrees Celcius</td></tr></table></div>"
* section[=].entry = Reference(Observation/observation-vitals-temp)