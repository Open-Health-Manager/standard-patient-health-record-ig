Instance: ContinuityCareDocument1
InstanceOf: Composition
Description: "John Doe - Composition - Continuity of Care Document"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* meta.profile = "http://hl7.org/fhir/us/ccda/StructureDefinition/CCDA-on-FHIR-Continuity-of-Care-Document"
* language = #en-US
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7e63fe21-7285-46c6-b72f-e58a61341195"
* status = #preliminary
* type = http://loinc.org#34133-9 "Summary of episode note"
* subject = Reference(Patient/john-doe) "John Doe"
* date = "2016-02-28T09:10:14Z"
* author = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
* title = "Continuity of Care Document"
* confidentiality = #N
* attester.mode = #legal
* attester.time = "2016-06-15T09:10:14Z"
* attester.party = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
* custodian = Reference(Organization/organization-1) "Community Health and Hospitals"
* event.code = http://hl7.org/fhir/v3/ActClass#PCPR "Care Provision"
* event.period.start = "2016-06-15"
* event.period.end = "2016-08-20"
* section[0].title = "Allergies and Intolerances Section"
* section[=].code = http://loinc.org#48765-2 "Allergies and adverse reactions"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Substance</b></td><td><b>Overall Severity</b></td><td><b>Reaction</b></td><td><b>Reaction Severity</b></td><td><b>Status</b></td></tr><tr><td>Cashew Nut</td><td>Severe</td><td>Anaphylactic reaction</td><td>Mild</td><td>Active</td></tr></table></div>"
* section[=].mode = #snapshot
* section[=].orderedBy = http://hl7.org/fhir/list-order#event-date "Sorted by Event Date"
* section[=].entry = Reference(AllergyIntolerance/allergy-intolerance)
* section[+].title = "Medication Section"
* section[=].code = http://loinc.org#10160-0 "History of Medication Use"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Medication</b></td><td><b>Directions</b></td><td><b>Start Date</b></td><td><b>Status</b></td><td><b>Indications</b></td><td><b>Fill Instructions</b></td></tr><tr><td>Amoxicillin</td><td>Amoxicillin Powder, for Suspension 250mg/5ml</td><td>2016/02/28</td><td>Active</td><td>Pneumonia</td><td>Generic substitution allowed</td></tr></table></div>"
* section[=].entry = Reference(MedicationStatement/medication-statement)
* section[+].title = "Problem Section"
* section[=].code = http://loinc.org#11450-4 "Problem list"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Problem Name</b></td><td><b>Type</b></td><td><b>Onset Date</b></td><td><b>Abatement Date</b></td><td><b>Status</b></td></tr><tr><td>Fever</td><td>Condition</td><td>2016/02/28</td><td>2016/03/01</td><td>Complete</td></tr></table></div>"
* section[=].entry = Reference(Condition/condition-problem)
* section[+].title = "Procedures Section"
* section[=].code = http://loinc.org#47519-4 "History of procedures"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Procedure Name</b></td><td><b>Body Site</b></td><td><b>Performer</b></td><td><b>Date Performed</b></td><td><b>Reason</b></td></tr><tr><td>Appendectomy (Procedure)</td><td>Abdomen</td><td>Dr. Adam Everyman</td><td>2016/06/15</td><td>Generalized abdominal pain 24 hours. Localized in RIF with rebound and guarding</td></tr></table></div>"
* section[=].entry = Reference(Procedure/procedure-rehab)
* section[+].title = "Results Section"
* section[=].code = http://loinc.org#30954-2 "Relevant diagnostic tests and laboratory data"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Result Type</b></td><td><b>Quantity Value</b></td><td><b>Date</b></td><td><b>Status</b></td></tr><tr><td>Glucose [Moles/volume] in Blood</td><td>6.3 mmol/l</td><td>2016/06/15</td><td>Final</td></tr></table></div>"
* section[=].entry = Reference(Observation/observation-lab-urine)
* section[+].title = "Advance Directives Section"
* section[=].code = http://loinc.org#42348-3 "Advance directives"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Name</b></td><td><b>Applies Period</b></td></tr><tr><td>Resuscitation</td><td>2010/01/01 - 2025/01/01</td></tr></table></div>"
* section[+].title = "Encounters Section"
* section[=].code = http://loinc.org#46240-8 "Encounters"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Encounter</b></td><td><b>Performer</b></td><td><b>Location</b></td><td><b>Date</b></td></tr><tr><td>Checkup Examination</td><td>Dr. S. Steene</td><td>Community Urgent Care Center</td><td>2016/04/18</td></tr></table></div>"
* section[+].title = "Family History Section"
* section[=].code = http://loinc.org#10157-6 "History of family member diseases"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Relationship</b></td><td><b>Diagnosis</b></td><td><b>Age at Onset</b></td></tr><tr><td>Father</td><td>Myocardial Infarction(cause of Death)</td><td>57</td></tr><tr><td>Father</td><td>Diabetes</td><td>40</td></tr></table></div>"
* section[+].title = "Functional Status Section"
* section[=].code = http://loinc.org#47420-5 "Functional status assessment"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Functional or Cognitive Finding</b></td><td><b>Observation</b></td><td><b>Observation Date</b></td><td><b>Condition Status</b></td></tr><tr><td>Ambulation (Dependent to Independent</td><td>Independently able</td><td>2016/06/15</td><td>Active</td></tr><tr><td>Finding of Functional Performance and Activity</td><td>Dyspnea</td><td>2016/06/15</td><td>Active</td></tr><tr><td>Cognitive Function Finding</td><td>Memory Impairment</td><td>2010/04/17</td><td>Active</td></tr></table></div>"
* section[+].title = "Immunizations Section"
* section[=].code = http://loinc.org#11369-6 "History of immunization"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Vaccine</b></td><td><b>Date</b></td><td><b>Status</b></td></tr><tr><td>Fluvax (Influenza)</td><td>2014/05/29</td><td>Completed</td></tr></table></div>"
* section[=].entry = Reference(Immunization/immunization)
* section[+].title = "Nutrition Section"
* section[=].code = http://loinc.org#61144-2 "Diet and nutrition"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Date</b></td><td><b>Nutritional Status</b></td><td><b>Diet</b></td></tr><tr><td>2016/06/15</td><td>Well nourished</td><td>Low sodium diet, excessive carbohydrate</td></tr><tr><td>2016/06/15</td><td>Slight dehydration</td><td>High protein, low fibre</td></tr></table></div>"
* section[+].title = "Mental Status Section"
* section[=].code = http://loinc.org#10190-7 "Mental status"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Date</b></td><td><b>Mental Status</b></td><td><b>Support System</b></td></tr><tr><td>2016/06/15</td><td>Good</td><td>Not required</td></tr><tr><td>2012/04/29</td><td>Dimentia</td><td>Daily Home Care</td></tr></table></div>"
* section[+].title = "Social History Section"
* section[=].code = http://loinc.org#29762-2 "Social history"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Social History Element</b></td><td><b>Description</b></td><td><b>Effective Dates</b></td></tr><tr><td>Smoking</td><td>1 pack tobacco per day</td><td>2010/01/01 - 2016/06/15</td></tr></table></div>"
* section[=].entry = Reference(Observation/observation-smoker)
* section[+].title = "Plan of Treatment Section"
* section[=].code = http://loinc.org#18776-5 "Plan of treatment"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Planned Activity</b></td><td><b>Period</b></td><td><b>Status</b></td></tr><tr><td>Colonoscopy</td><td>2016/06/15 - 2015/06/15</td><td>Completed</td></tr><tr><td>Recommendation to Exercise</td><td>2016/06/15</td><td>Ongoing</td></tr></table></div>"
* section[+].title = "Payers Section"
* section[=].code = http://loinc.org#48768-6 "Payers"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Payer Name</b></td><td><b>Policy ID</b></td><td><b>Policy Holder</b></td></tr><tr><td>United Healthcare</td><td>12341</td><td>Self</td></tr><tr><td>Cigna</td><td>53123</td><td>Spouse</td></tr></table></div>"
* section[+].title = "Medical Equipment Section"
* section[=].code = http://loinc.org#46264-8 "Medical equipment"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Supply/Device</b></td><td><b>Date Supplied</b></td></tr><tr><td>Automatic Implantable cardioverter/defbrillator</td><td>2015/05/29</td></tr><tr><td>Wheelchair</td><td>2016/06/15</td></tr></table></div>"
* section[+].title = "Vital Signs Section"
* section[=].code = http://loinc.org#8716-3 "Vital signs"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Vital Sign</b></td><td><b>Date</b></td><td><b>Value</b></td></tr><tr><td>Temperature</td><td>2016/06/15</td><td>39 Degrees Celcius</td></tr></table></div>"
* section[=].entry = Reference(Observation/observation-vitals-temp)