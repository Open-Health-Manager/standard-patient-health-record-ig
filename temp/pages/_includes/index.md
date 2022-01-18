# Standard Personal Health Record  

The purpose of this implementation guide is to help the reader implement a Personal Health Record (in a programming language of their choice).  The notion of a Personal Health Record (PHR) grows out of the concept of an Electronic Medical Record (EMR).  The major difference being in ownership.  The PHR being owned by the patient, and the EMR being owned by the hospital.

The following document will offer design guidance and standardized APIs for helping you develop your application; based on the healthcare industry standard of Fast Healthcare Interoperability Resources (FHIR).    

![./StarTrek-Sphr.png](./StarTrek-Sphr.png){:width="100%"}
> Medical software and health record from Star Trek: Into Darkness.  Copyright VIACOM-CBS.




### Physiology Model  

Proin non diam eu est tincidunt accumsan ac vitae sem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla consequat, augue ac sollicitudin pharetra, odio orci euismod est, fringilla tincidunt nisi nunc vel justo. Mauris eu erat erat. Duis facilisis quis urna fermentum dignissim. Etiam a metus id enim dignissim gravida.

- [AllergyIntolerance](https://www.hl7.org/fhir/allergyintolerance.html)
- [BodyStructure](https://www.hl7.org/fhir/bodystructure.html)
- [Condition](https://www.hl7.org/fhir/condition.html)
- [DiagnosticReport](https://www.hl7.org/fhir/diagnosticreport.html)
- [FamilyMemberHistory](https://www.hl7.org/fhir/familymemberhistory.html)
- [Immunization](https://www.hl7.org/fhir/immunization.html)
- [ImagingStudy](https://www.hl7.org/fhir/imagingstudy.html)
- [Media](https://www.hl7.org/fhir/media.html)
- [Medication](https://www.hl7.org/fhir/medication.html)
- [MedicationStatement](https://www.hl7.org/fhir/medicationstatement.html)
- [MolecularSequence](https://www.hl7.org/fhir/molecularsequence.html)
- [Patient](https://www.hl7.org/fhir/patient.html)
- [Observation](https://www.hl7.org/fhir/observation.html)
- [Procedure](https://www.hl7.org/fhir/procedure.html)
- [Specimen](https://www.hl7.org/fhir/specimen.html)

### Social and Behavioral

Phasellus vel nunc et tellus semper venenatis a eget turpis. Cras lacinia ante elementum imperdiet blandit. Praesent pharetra et neque sit amet laoreet. Praesent porta efficitur erat, quis egestas eros mollis nec. Phasellus lobortis tempus lectus, non tristique ex aliquam sit amet.

- [CarePlan](https://www.hl7.org/fhir/careplan.html)
- [CareTeam](https://www.hl7.org/fhir/careteam.html)
- [Communication](https://www.hl7.org/fhir/communication.html)
- [Goal](https://www.hl7.org/fhir/goal.html)
- [Practitioner](https://www.hl7.org/fhir/practitioner.html)
- [RelatedPerson](https://www.hl7.org/fhir/relatedperson.html)

### Administrative

Nam efficitur, tortor nec tincidunt iaculis, tellus mauris feugiat est, ut congue dolor velit id sem. Nunc malesuada venenatis purus pharetra lacinia. Duis hendrerit lectus non interdum semper. 

- [Binary](https://www.hl7.org/fhir/binary.html)
- [Contract](https://www.hl7.org/fhir/contract.html)
- [Consent](https://www.hl7.org/fhir/consent.html)
- [Device](https://www.hl7.org/fhir/device.html)
- [DocumentReference](https://www.hl7.org/fhir/diagnosticresource.html)
- [Provenance](https://www.hl7.org/fhir/provenance.html)
- [Questionnaire](https://www.hl7.org/fhir/questionnaire.html)
- [QuestionnaireResponse](https://www.hl7.org/fhir/questionnaireresponse.html)


### Logical Models

Suspendisse vel eleifend nunc. Integer nec dolor gravida, pharetra metus nec, tincidunt magna. Praesent sit amet risus luctus massa porttitor efficitur. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec ac ultrices ante, vitae molestie elit. 

- [HealthReceipt]()
- [SocialMedia]()
- [Environmental]()
- [VitalSigns]()
- [NutrientIntake]()
- [NutrientOuttake]()
