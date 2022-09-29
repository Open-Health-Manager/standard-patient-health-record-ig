// Instance: Discharge-Summary-Example
// InstanceOf: Composition
// Description: "John Doe - Composition - Discharge Summary"
// Usage: #example
// * meta.versionId = "1"
// * meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
// * meta.profile = "http://hl7.org/fhir/us/ccda/StructureDefinition/CCDA-on-FHIR-Discharge-Summary"
// * language = #en-US
// * identifier.system = "urn:ietf:rfc:3986"
// * identifier.value = "1"
// * status = #preliminary
// * type = http://loinc.org#18842-5 "Discharge Summary"
// * subject = Reference(Patient/john-doe) "John Doe"
// * date = "2016-02-28T09:10:14Z"
// * author = Reference(Practitioner/practitioner-1) "Ronald Boone, MD"
// * title = "Discharge Summary(CCoF)"
// * confidentiality = #N
// * custodian = Reference(Organization/organization-1) "Community Health and Hospitals"
// * section[0].title = "Allergies and Intolerances Section"
// * section[=].code = http://loinc.org#48765-2 "Allergies and adverse reactions"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Substance</b></td><td><b>Overall Severity</b></td><td><b>Reaction</b></td><td><b>Reaction Severity</b></td><td><b>Status</b></td></tr><tr><td>Cashew Nut</td><td>Severe</td><td>Anaphylactic reaction</td><td>Mild</td><td>Active</td></tr></table></div>"
// * section[=].mode = #snapshot
// * section[=].orderedBy = http://hl7.org/fhir/list-order#event-date "Sorted by Event Date"
// * section[=].entry = Reference(AllergyIntolerance/allergy-intolerance)
// * section[+].title = "Chief Complaint and Reason for Visit Section"
// * section[=].code = http://loinc.org#46239-0 "Chief complaint and reason for visit"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Cramping, bloating, and constipation.</p></div>"
// * section[+].title = "Chief Complaint Section"
// * section[=].code = http://loinc.org#10154-3 "Chief complaint"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Dark Stools</p></div>"
// * section[+].title = "Reason for Visit Section"
// * section[=].code = http://loinc.org#29299-5 "Reason for visit"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Tenderness of lower abdomen</p></div>"
// * section[+].title = "Admission Diagnosis Section"
// * section[=].code = http://loinc.org#46241-6 "Hospital admission diagnosis"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Appendicitis</p></div>"
// * section[+].title = "Admission Medications Section"
// * section[=].code = http://loinc.org#42346-7 "Medications on admission"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Medication</b></td><td><b>Directions</b></td><td><b>Start Date</b></td><td><b>Status</b></td><td><b>Indications</b></td><td><b>Fill Instructions</b></td></tr><tr><td>Pepcid Complete (MAGNESIUM HYDROXIDE0</td><td>Chew one tablet completely and swallow as needed </td><td>20160615</td><td>Active</td><td>Bloating</td><td>Generic substitution allowed</td></tr></table></div>"
// * section[+].title = "History of Past Illness Section"
// * section[=].code = http://loinc.org#11348-0 "History of past illness"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Problem Name</b></td><td><b>Type</b></td><td><b>Onset Date</b></td><td><b>Abatement Date</b></td><td><b>Status</b></td></tr><tr><td>Fever</td><td>Condition</td><td>2016-06-15</td><td>2016-06-15</td><td>Complete</td></tr></table></div>"
// * section[=].entry = Reference(Condition/condition-problem)
// * section[+].title = "History of Present Illness Section"
// * section[=].code = http://loinc.org#10164-2 "History of present illness"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>This patient was only recently discharged for a recurrent GI bleed as described below. </p><p>He presented to the ER today c/o a dark stool yesterday but a normal brown\n                    stool today. On exam he was hypotensive in the 80?s resolved after .... .... .... </p><p>Lab at discharge: Glucose 112, BUN 16, creatinine 1.1, electrolytes normal.\n                    H. pylori antibody pending. Admission hematocrit 16%, discharge hematocrit 29%. WBC\n                    7300, platelet count 256,000. Urinalysis normal. Urine culture: No growth. INR 1.1,\n                    PTT 40. </p><p>He was transfused with 6 units of packed red blood cells with .... .... .... </p><p>GI evaluation 12 September: Colonoscopy showed single red clot in .... ........ </p></div>"
// * section[+].title = "Review of Systems Section"
// * section[=].code = http://loinc.org#10187-3 "Review of systems"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Patient denies recent history of fever or malaise. Positive for weakness and\n                    shortness of breath. One episode of melena. No recent headaches. Positive for\n                    osteoarthritis in hips, knees and hands. </p></div>"
// * section[+].title = "Family History Section"
// * section[=].code = http://loinc.org#10157-6 "History of family member diseases"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Relationship</b></td><td><b>Diagnosis</b></td><td><b>Age at Onset</b></td></tr><tr><td>Father</td><td>Myocardial Infarction(cause of Death)</td><td>57</td></tr><tr><td>Father</td><td>Diabetes</td><td>40</td></tr></table></div>"
// * section[+].title = "Social History Section"
// * section[=].code = http://loinc.org#29762-2 "Social history"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Social History Element</b></td><td><b>Description</b></td><td><b>Effective Dates</b></td></tr><tr><td>Smoking</td><td>1 pack tobacco per day</td><td>2005/05/01 - 2010/02/28</td></tr></table></div>"
// * section[=].entry = Reference(Observation/observation-smoker)
// * section[+].title = "Functional Status Section"
// * section[=].code = http://loinc.org#47420-5 "Functional status"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Functional or Cognitive Finding</b></td><td><b>Observation</b></td><td><b>Observation Date</b></td><td><b>Condition Status</b></td></tr><tr><td>Ambulation (Dependent to Independent</td><td>Independently able</td><td>2010/03/11</td><td>Active</td></tr><tr><td>Finding of Functional Performance and Activity</td><td>Dyspnea</td><td>2008/02/16</td><td>Active</td></tr><tr><td>Cognitive Function Finding</td><td>Memory Impairment</td><td>2014/04/29</td><td>Active</td></tr></table></div>"
// * section[+].title = "Hospital Course Section"
// * section[=].code = http://loinc.org#8648-8 "Hospital course"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Following a colonoscopy, the patient was admitted and started on Lovenox and\n                    nitroglycerin paste. The patient had serial cardiac enzymes and was ruled out for\n                    myocardial infarction. The patient underwent a dual isotope stress test. There was no\n                    evidence of reversible ischemia on the Cardiolite scan. The patient has been ambulated.\n                    The patient had a Holter monitor placed but the report is not available at this time.\n                    The patient has remained hemodynamically stable. Will discharge.</p></div>"
// * section[+].title = "Hospital Consultations Section"
// * section[=].code = http://loinc.org#18841-7 "Hospital consultations"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>listType=&quot;ordered&quot;</p><p>Gastroenterology</p><p>Cardiology</p><p>Dietitian</p></div>"
// * section[+].title = "Plan of Treatment Section"
// * section[=].code = http://loinc.org#18776-5 "Plan of treatment"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Planned Activity</b></td><td><b>Period</b></td><td><b>Status</b></td></tr><tr><td>Colonoscopy</td><td>2016/08/16 - 2016/08/16</td><td>Completed</td></tr><tr><td>Recommendation to Exercise</td><td>2016/06/29</td><td>Ongoing</td></tr></table></div>"
// * section[+].title = "Problem Section"
// * section[=].code = http://loinc.org#11450-4 "Problem list"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Problem Name</b></td><td><b>Type</b></td><td><b>Onset Date</b></td><td><b>Abatement Date</b></td><td><b>Status</b></td></tr><tr><td>Fever</td><td>Condition</td><td>2016-04-01</td><td>2016-04-14</td><td>Complete</td></tr></table></div>"
// * section[=].entry = Reference(Condition/condition-problem)
// * section[+].title = "Procedures Section"
// * section[=].code = http://loinc.org#47519-4 "History of procedures"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Procedure Name</b></td><td><b>Body Site</b></td><td><b>Performer</b></td><td><b>Date Performed</b></td><td><b>Reason</b></td></tr><tr><td>Appendectomy (Procedure)</td><td>Abdomen</td><td>Dr. Adam Everyman</td><td>20160405</td><td>Generalized abdominal pain 24 hours. Localized in RIF with rebound and guarding</td></tr></table></div>"
// * section[=].entry = Reference(Procedure/procedure-rehab)
// * section[+].title = "Discharge Diagnosis Section"
// * section[=].code = http://loinc.org#11535-2 "Hospital discharge diagnosis"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Diverticula of intestine</p></div>"
// * section[+].title = "Discharge Medications Section (entries required)"
// * section[=].code = http://loinc.org#10183-2 "Hospital discharge medications"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Medication</b></td><td><b>Directions</b></td><td><b>Start Date</b></td><td><b>Status</b></td><td><b>Indications</b></td><td><b>Fill Instructions</b></td></tr><tr><td>Acetaminophen Tab 325 mg</td><td>Take 2 tablet(s) every four hours if needed</td><td>20160618</td><td>Active</td><td>Pain management</td><td>Generic substitution allowed</td></tr></table></div>"
// * section[+].title = "Hospital Discharge Instructions Section"
// * section[=].code = http://loinc.org#8653-8 "Hospital discharge instructions"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Take all of your prescription medication as directed. </p><p>Make an appointment with your doctor to be seen two weeks from the date of your procedure. </p><p>You may feel slightly bloated after the procedure because of air that was\n                    introduced during the examination. </p><p> Call your physician if you notice: \n                    <br/> Bleeding or black stools. \n                    <br/> Abdominal pain. \n                    <br/> Fever or chills. \n                    <br/> Nausea or vomiting. \n                    <br/> Any unusual pain or problem. \n                    <br/> Pain or redness at the site where the intravenous needle was placed. \n                    <br/></p><p>Do not drink alcohol for 24 hours. Alcohol amplifies the effect of the sedatives given. </p><p>Do not drive or operate machinery for 24 hours.</p></div>"
// * section[+].title = "Hospital Discharge Physical Section"
// * section[=].code = http://loinc.org#10184-0 "Hospital discharge physical"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>GENERAL: Well-developed, slightly obese man. </p><p>NECK: Supple, with no jugular venous distension.</p><p>HEART: Intermittent tachycardia without murmurs or gallops. </p><p>PULMONARY: Decreased breath sounds, but no clear-cut rales or wheezes.</p><p>EXTREMITIES: Free of edema.</p></div>"
// * section[+].title = "Hospital Discharge Studies Section"
// * section[=].code = http://loinc.org#11493-4 "Hospital discharge studies summary"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table border=\"1\" width=\"100%\"><thead><tr><th>Laboratory Information</th><th>Chemistries and drug levels</th></tr></thead><tbody><tr><td>Potasium</td><td>4.0</td></tr><tr><td>NA (135-145meq/l)</td><td>140</td></tr></tbody></table><br/><table border=\"1\" width=\"100%\"><thead><tr><th>Other Tests</th><th>Results</th></tr></thead><tbody><tr><td>EKG</td><td>Sinus rhythm without acute changes.</td></tr></tbody></table></div>"
// * section[+].title = "Immunizations Section"
// * section[=].code = http://loinc.org#11369-6 "History of immunization"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Vaccine</b></td><td><b>Date</b></td><td><b>Status</b></td></tr><tr><td>Fluvax (Influenza)</td><td>2016-04-05</td><td>Completed</td></tr></table></div>"
// * section[=].entry = Reference(Immunization/immunization)
// * section[+].title = "Nutrition Section"
// * section[=].code = http://loinc.org#61144-2 "Diet and nutrition"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Date</b></td><td><b>Nutritional Status</b></td><td><b>Diet</b></td></tr><tr><td>2016/06/15</td><td>Well nourished</td><td>Low sodium diet, excessive carbohydrate</td></tr><tr><td>2016/06/15</td><td>Slight dehydration</td><td>High protein, low fibre</td></tr></table></div>"
// * section[+].title = "Vital Signs Section"
// * section[=].code = http://loinc.org#8716-3 "Vital signs"
// * section[=].text.status = #generated
// * section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td><b>Vital Sign</b></td><td><b>Date</b></td><td><b>Value</b></td></tr><tr><td>Temperature</td><td>2016/06/15</td><td>39 Degrees Celcius</td></tr></table></div>"
// * section[=].entry = Reference(Observation/observation-vitals-temp)