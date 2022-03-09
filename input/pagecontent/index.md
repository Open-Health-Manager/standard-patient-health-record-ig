# Standard Patient Health Record  

The purpose of this implementation guide is to help the reader implement a Patient Health Record (in a programming language of their choice).  The notion of a Patient Health Record (PHR) grows out of the concept of an Electronic Medical Record (EMR).  The major difference being in ownership.  The PHR being owned by the patient; and the EMR being owned by the hospital.

The following document will offer design guidance and standardized APIs for helping you develop your application; based on the healthcare industry standard of Fast Healthcare Interoperability Resources (FHIR).  The scope of this document does not attempt to prescribe how you, the implementor, ought to go about programming your software.  What it does provide, in guidance on how to successfully exchange data with other PHR and EHR apps.  In effect, it documents widely supported (and government recognized) data standards and file formats for importing/exporting data into your software.

![./StarTrek-Sphr.png](./StarTrek-Sphr.jpg){:width="100%"}
> Medical software and health record from Star Trek: Into Darkness.  Copyright VIACOM-CBS.


### Purpose / Design Philosophy

The core of the Patient Health Record should be medical grade, and the sort of record that you receive after a visit to the hospital; and which the Patient can carry to from one healthcare provider to the next.  As such, a modern Patient Health Record needs to essentially be able to receive captured data from throughout the hospital.  Emergency room, operating room, intensive care unit, laboratory, pharmacy, nursery, psychaitry.  All of it is relavent.  

### Prior Art - Implementation Guides   

This implementation guide was developed through meta-analysis of dozens of other guides, journal liturature, and an environment surveys of the PHR market.  Implementators may find the following implementation guides of particular interest:  

- [Patient Health Record - System Functional Model](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=88)  
- [Smart on FHIR - App Launch](https://hl7.org/fhir/smart-app-launch/)      
- [Argonaut Data Query](http://www.fhir.org/guides/argonaut/r2/)      
- [Argonaut Scheduling](http://fhir.org/guides/argonaut/scheduling/)  
- [Argonaut Clinical Notes](http://fhir.org/guides/argonaut/clinicalnotes/) 
- [Argonaut Questionnaire](http://fhir.org/guides/argonaut/questionnaire/)  
- [Patient Request for Corrections](https://build.fhir.org/ig/HL7/fhir-patient-correction/)   
- [International Patient Summary](http://hl7.org/fhir/uv/ips/)  
- [C-CDA on FHIR](http://hl7.org/fhir/us/ccda/)  
- [PACIO - Advanced Directives](https://build.fhir.org/ig/HL7/fhir-pacio-adi/)  
- [PACIO - Cognitive Status](https://build.fhir.org/ig/HL7/fhir-pacio-cognitive-status/)        
- [PACIO - Functional Status](https://build.fhir.org/ig/HL7/fhir-pacio-functional-status/)
- [VCI - Vaccine Credential Initiative](https://build.fhir.org/ig/HL7/fhir-shc-vaccination-ig/)    
- [Gravity - Social Determinates of Health](https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare/)       
- [US CORE](https://www.hl7.org/fhir/us/core/)    
- [Dental Data Exchange](https://build.fhir.org/ig/HL7/dental-data-exchange/)  
- [Genomics Reporting](https://build.fhir.org/ig/HL7/genomics-reporting/artifacts.html)  
- [Radiation Dose Summary](https://build.fhir.org/ig/HL7/fhir-radiation-dose-summary-ig/)  
- [Breast Radiology Reporting](https://build.fhir.org/ig/HL7/fhir-breast-radiology-ig/)  
- [Allergy Intolerance](https://build.fhir.org/ig/hl7ch/ch-allergyintolerance/document.html)  
- [Vital Signs](https://build.fhir.org/ig/HL7/cimi-vital-signs/)  
- [UDAP Security](https://build.fhir.org/ig/HL7/fhir-udap-security-ig/)  
- [SNOMED Terminology Server](https://build.fhir.org/ig/IHTSDO/snomed-ig/)  
- [Electronic Case Reporting (eCR)](https://build.fhir.org/ig/HL7/case-reporting/the_specification.html)  
- [SMART Healthcards - Vaccine & Testing](https://build.fhir.org/ig/HL7/fhir-shc-vaccination-ig/index.html)  
- [COVID19](https://build.fhir.org/ig/aih-uth/mycovid/artifacts.html)  
- [CARIN Digital Insurance Card](https://build.fhir.org/ig/HL7/carin-digital-insurance-card/)  
- [Mobile Access to Health Documents](https://profiles.ihe.net/ITI/MHD/)  
- [Patient Reported Outcomes](http://hl7.org/fhir/us/patient-reported-outcomes/2019May/index.html)  
- [Patient Health Devices](http://hl7.org/fhir/uv/phd/2019May/)    
- [Da Vinci - Prior Authorization](http://hl7.org/fhir/us/davinci-pas/)  
- [Vital Records -  Birth and Fetal Death Reporting](http://hl7.org/fhir/us/bfdr/artifacts.html)  


### References  



