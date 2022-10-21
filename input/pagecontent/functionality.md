A common question that comes up in designing a Personal Health Record is 'what features should it support?'.  This question has been discussed in great detail by past workgroup efforts, and we encourage implementors interested in guidance around which functionality to include to refer to [Personal Health Record System Functional Model](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=88) with provides 93 pages and nearly 1800+ recommendations of functionalities that PHR vendors in the past have agreed ought to be inlcluded in a standard model.  

However, for the purposes of this implementation guide, we are going to defer on the question of functionality, and take a more data-centric approach and consider the question in terms of importing/exporting records and data storage buckets. The general idea behind this document is that data will be added or removed from the PHR, either through granular API interfaces or bulk data import/export functions, we don't care which.  However, in either case, we will be using standard data schemas for how the data will be transmitted and stored.

For instance... rather than specify that the PHR must include medication reconciliation functionality, we recommend that a PHR must be able to consume a Continuity of Care Documents (CCD) received from a hospital in .sphr format, and to do so, the data should be specified with FHIR resources, which may happen to include MedicationStatement and other resources produced by a medication reconciliation module.  But whether or not the .sphr health record contains a medication reconcilitation or not is left completely up to the implementor.  The only requirement for conformance is that if the data is included in the .sphr file, it use FHIR data schemas.  

In effect, this implementation guide does not specify what functionality should be included the PHR, but it does specify medical charting format that the record uses.  It's about the folder and record keeping, not the specific contents of the records themselves.  

### PHR Functional Model (FHIR-ized)

#### Personal Health

| Section |  Header Name | Relevant FHIR Standard | Notes  |
| ---------- | :-------------------- | :------- | :--- |
| PH.0 | Protected Personal Health Data | [Meta](https://www.hl7.org/fhir/resource.html#Meta) <br/> [Provenance](https://www.hl7.org/fhir/provenance.html) <br/> [Communication](https://www.hl7.org/fhir/communication.html) <br/> Consent Engine <br/> 50 US State Profiles <br/> |  |
| PH.1 | PHR Account Holder Profile | | |
| PH.1.1 | Identify and Maintain a PHR Account Holder Record | | |
| PH.1.2 | Manage PHR Account Holder Demographic Information | [Patient](https://www.hl7.org/fhir/patient.html) | |
| PH.1.3 | Manage PHR Account Holder and Family Preferences |  | |
| PH.1.4 | Manage PHR Account Holder Advance Directives | [Consent](https://www.hl7.org/fhir/consent.html) <br/> [Contract](https://www.hl7.org/fhir/contract.html)   | |
| PH.1.5 | Manage Consents and Authorizations | [Consent](https://www.hl7.org/fhir/consent.html)  | |
| PH.1.6 | Manage PHR Account Status | | |
| PH.2 | Manage Historical Clinical Data and Current State Data | | |
| PH.2.1 |Manage PHR Account Holder Originated Dat | | |
| PH.2.2 | Manage Data from External Administrative Sources | | |
| PH.2.3 | Manage Data and Documentation from External Clinical Sources | | |
| PH.2.4 |Produce and Present Ad Hoc Views of the Personal Health Record | | |
| PH.2.5 | Manage Historical and Current State Data | | |
| PH.2.5.1 | Manage Problem Lists | [Condition](https://www.hl7.org/fhir/condition.html)  | | | |
| PH.2.5.2 | Manage Medication List | [Medication](https://www.hl7.org/fhir/medication.html) <br/> [MedicationStatement](https://www.hl7.org/fhir/medicationstatement.html)  | | | |
| PH.2.5.3 | Manage Test Results | [Observation](https://www.hl7.org/fhir/observation.html) | |
| PH.2.5.4 | Manage Allergy, Intolerance, and Adverse Reaction List | [AllergyIntolerance](https://www.hl7.org/fhir/allergyintolerance.html)  | |
| PH.2.5.5 | Manage Immunization List |  [Immunization](https://www.hl7.org/fhir/immunization.html) | |
| PH.2.5.6 | Manage Medical History | | |
| PH.2.5.7 | Manage Surgical History | [Procedure](https://www.hl7.org/fhir/procedure.html)  | |
| PH.2.5.8 | Maintain Family History | [FamilyMemberHistory](https://www.hl7.org/fhir/familymemberhistory.html)  | |
| PH.2.5.9 | Manage Personal Genetic Information | [MolecularSequence](https://www.hl7.org/fhir/molecularsequence.html) | |
| PH.2.5.10 | Manage Social History | [Observation](https://www.hl7.org/fhir/observation.html) <br/> [Gravity - Social Determinates of Health](https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare/)       | |
| PH.2.5.11 | Nutrition and Diet Information | | |
| PH.3 | Wellness, Preventive Medicine, and Self Care | | |
| PH.3.1 | Manage Personal Clinical Measurements and Observations | [Observation](https://www.hl7.org/fhir/observation.html) <br/> [Vital Signs](https://build.fhir.org/ig/HL7/cimi-vital-signs/)  | |
| PH.3.1.1 | Manage Personal Observations and Care | [Composition](https://www.hl7.org/fhir/composition.html) <br/> [DocumentReference](https://www.hl7.org/fhir/documentreference.html) <br/>  [Media](https://www.hl7.org/fhir/media.html) <br/> [Communication](https://www.hl7.org/fhir/communication.html) <br/> [Argonaut Scheduling](http://fhir.org/guides/argonaut/scheduling/)| |
| PH.3.1.2 | Communication with Home Monitoring Devices | [Observation](https://www.hl7.org/fhir/observation.html) <br/> [Device](https://www.hl7.org/fhir/device.html) <br/> - [Mobile Access to Health Documents](https://profiles.ihe.net/ITI/MHD/)  | |
| PH.3.2 | Manage Account Holder Implemented Care Plans |  [CarePlan](https://www.hl7.org/fhir/careplan.html) <br/>  | |
| PH.3.3 | Manage Provider-Initiated Care Plans |  [CarePlan](https://www.hl7.org/fhir/careplan.html) <br/>   [Practitioner](https://www.hl7.org/fhir/practitioner.html) <br/> | |
| PH.3.4 | Manage Medications |  [Medication](https://www.hl7.org/fhir/medication.html) <br/> [MedicationStatement](https://www.hl7.org/fhir/medicationstatement.html) <br/> | |
| PH.3.5 | Manage Tools and Functions to Assist Self Care | [Argonaut Scheduling](http://fhir.org/guides/argonaut/scheduling/)<br/> [Task](https://www.hl7.org/fhir/task.html)| |
| PH.3.5.1 | Manage Health Calendar | [Argonaut Scheduling](http://fhir.org/guides/argonaut/scheduling/)  | |
| PH.3.5.2 | Manage Tasks | [Task](https://www.hl7.org/fhir/task.html) | |
| PH.3.5.3 | Manage a Registry and Directory of Actors | [Practitioner](https://www.hl7.org/fhir/practitioner.html) <br>  [RelatedPerson](https://www.hl7.org/fhir/relatedperson.html) <br/>  [Person](https://www.hl7.org/fhir/person.html) <br/>  [CareTeam](https://www.hl7.org/fhir/careteam.html) | |
| PH.3.5.4 | Manage Reminders | [Communication](https://www.hl7.org/fhir/communication.html) | |
| PH.3.5.5 | Manage Health Alerts | [Communication](https://www.hl7.org/fhir/communication.html) | |
| PH.3.5.6 | Manage Recommendations | [Communication](https://www.hl7.org/fhir/communication.html) <br/> [Evidence](https://www.hl7.org/fhir/evidence.html) <br/> [DiagnosticReport](https://www.hl7.org/fhir/diagnosticreport.html)| |
| PH.3.6 | Population Health and Wellness | [Measure](https://www.hl7.org/fhir/measure.html) <br/> [MeasureReport](https://www.hl7.org/fhir/measurereport.html) | |
| PH.3.6.1 | Public Health Reporting | [Measure](https://www.hl7.org/fhir/measure.html) <br/> [MeasureReport](https://www.hl7.org/fhir/measurereport.html) | |
| PH.3.6.2 | Public Health Risk Alerts | | |
| PH.4 | Manage Health Education | [Communication](https://www.hl7.org/fhir/communication.html) <br/> [DocumentReference](https://www.hl7.org/fhir/documentreference.html) <br/> [Media](https://www.hl7.org/fhir/media.html) | |
| PH.5 | PHR Account Holder Decision Support | | |
| PH.5.1 | Manage Guidelines and Protocols | | |
| PH.5.2 | Drug Interaction Checking | | |
| PH.5.3 | Care-Related Decision Support | | |
| PH.5.4 | Integration with Third Party Clinical Decision Support Services | | |
| PH.5.5 | PHR Account Holder Configured Alerts, Reminders, and/or Notifications | | |
| PH.5.6 | Manage Updated Orders, Recommendations, or Alternative Care Plans | | |
| PH.6 | Manage Encounters with Providers | | |
| PH.6.1 | PHR Account Holder Health Data Derived from Administrative and Financial Sources | | |
| PH.6.2 | Manage Self-Assessments (i.e., Symptoms) | | |
| PH.6.3 | Communications Between Provider and PHR Account Holder and/or PHR Account Holder Proxy | | |
| PH.6.4 | Data and Documentation from External Clinical Sources | | |
| PH.6.5 | Provider Assessments | | |
| PH.6.6 | Referrals and Referral Process | | |
| PH.6.7 | Patient-Specific Care, Instructions, Care Plans, Treatment Plans, Guidelines and Protocols | | |
| PH.6.8 | Manage Patient-Specific Care and Treatment Plans | | |

#### Supportive

| Section |  Header Name | Relevant FHIR Standard | Notes  |
| ---------- | :-------------------- | :------- | :--- |
| S.1 | Provider Information | | |
| S.1.1 | Manage Selection of Providers | | |
| S.1.2 | Manage PHR Account Holder Provider’s Information | | |
| S.1.3 | Manage Health Care Provider Information | | |
| S.1.4 | Manage Provider Transparency Information | | |
| S.1.5 | Manage Healthcare Facility Information | | |
| S.1.6 | Manage Healthcare Facility Transparency Information | | |
| S.1.7 | Manage Surveys on the Healthcare Experience | | |
| S.2 | Financial Management | [Claim](https://www.hl7.org/fhir/claim.html) | |
| S.2.1 | Capture and Read Health Insurance Account and Benefit Information | | |
| S.2.2 | Manage Health Insurance Plan Benefit Information | [InsurancePlan](https://www.hl7.org/fhir/insuranceplan.html) <br/> [ExplanationOfBenefit](https://www.hl7.org/fhir/explanationofbenefit.html) <br/>  | |
| S.2.3 | Manage Standard Reporting |  [Measure](https://www.hl7.org/fhir/measure.html) <br/> [MeasureReport](https://www.hl7.org/fhir/measurereport.html)  | |
| S.2.4 | Manage Ad Hoc Reporting |  [Measure](https://www.hl7.org/fhir/measure.html) <br/> [MeasureReport](https://www.hl7.org/fhir/measurereport.html)  | |
| S.3 | Administration Management | | |
| S.3.1 | Manage Interoperability of PHR Account Holder Demographics | [Person](https://www.hl7.org/fhir/person.html) <br/> [RelatedPerson](https://www.hl7.org/fhir/relatedperson.html) | |
| S.3.2 | Manage PHR Conditions of Use | | |
| S.3.3 | Manage Legal and other Related Documents | [Contract](https://www.hl7.org/fhir/contract.html) <br /> [DocumentReference](https://www.hl7.org/fhir/documentreference.html) <br /> [Media](https://www.hl7.org/fhir/media.html) <br /> | |
| S.3.3.1 | Manage Consents and Authorizations |[PACIO - Advanced Directives](https://build.fhir.org/ig/HL7/fhir-pacio-adi/) <br/> [Consent](https://www.hl7.org/fhir/consent.html) <br />  | |
| S.3.3.2 | Manage End-of-Life Documents and Other Advance Directives | [PACIO - Advanced Directives](https://build.fhir.org/ig/HL7/fhir-pacio-adi/) <br/> [Consent](https://www.hl7.org/fhir/consent.html) <br /> | |
| S.3.3.3 | Manage Documents for Personal Representation | | |
| S.3.4 | Manage Data Masking for Sensitive or Selective Information | | |
| S.3.5 | Manage PHR Output | [Bundle](https://www.hl7.org/fhir/bundle.html) | |
| S.3.6 | Manage PHR Data Import and Export | [Bulk Data IG](https://hl7.org/fhir/uv/bulkdata/) | |
| S.3.7 | Manage New, Additional, or Other Use Request | | |
| S.3.8 | Manage Requests for Release of Information | | |
| S.3.9 | Manage Information Views | | |
| S.4 | Manage Other Resources | | |
| S.4.1 | Manage Clinical Research Information | [ResearchStudy](https://www.hl7.org/fhir/researchstudy.html) <br/> [ResearchSubject](https://www.hl7.org/fhir/researchsubject.html) | |
| S.4.1.1 | Capture Genomic/Proteomic Data and Documentation from External Clinical Sources | [MolecularSequence](https://www.hl7.org/fhir/molecularsequence.html) | |
| S.4.1.2 | Manage De-Identified Data Request Process | | |
| S.4.1.3 | Manage PHR Account Holder Notification of Clinical Trials | [ResearchStudy](https://www.hl7.org/fhir/researchstudy.html) <br/> [ResearchSubject](https://www.hl7.org/fhir/researchsubject.html) | |
| S.4.1.4 | Manage PHR Account Holder Enrollment in Clinical Trials or Research | [ResearchStudy](https://www.hl7.org/fhir/researchstudy.html) <br/> [ResearchSubject](https://www.hl7.org/fhir/researchsubject.html)| |
| S.4.2 | Registry Notification and Management | | |
| S.4.3 | Manage Donor Information | | |
| S.4.4 | Manage PHR Account Holder Education Material Updates | | |
| S.4.5 | Manage PHR Account Holder Reminder Information Updates | | |
| S.4.6 | Manage Public Health Information | | |
| S.4.6.1 | Manage Public Health Related Updates | | |
| S.4.6.2 | Manage Access to Public Health Information Resources | | |
| S.4.6.3 | Manage Access to Public Health Knowledge Bases | | |
| S.4.6.4 | Manage Enrollment in Public Health Programs | | |
| S.4.6.5 | Manage Enrollment in Public Health Notifications and Alerts | | |
| S.4.6.6 | Enrollment in Public Health Surveys | | |

#### Record and Trust Infrastructure
RI. [Record Infrastructure](recordlifecycle.html)

TI. [Trust Infrastructure](security.html)

### References  

[Personal Health Record System Functional Model](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=88)