The purpose of this implementation guide is to help the reader implement a Patient Health Record (in a programming language of their choice).  The notion of a Patient Health Record (PHR) grows out of the concept of an Electronic Medical Record (EMR).  The major difference being in ownership.  The PHR being owned by the patient; and the EMR being owned by the hospital.

The following document will offer design guidance and standardized APIs for helping you develop your application; based on the healthcare industry standard of Fast Healthcare Interoperability Resources (FHIR).  The scope of this document does not attempt to prescribe how you, the implementor, ought to go about programming your software.  What it does provide, in guidance on how to successfully exchange data with other PHR and EHR apps.  In effect, it documents widely supported (and government recognized) data standards and file formats for importing/exporting data into your software.

### History

Medical records have been around since as long as there have been practicing physicials.  Modern medical record systems began in 1665, however, with the Bills of Mortality of London, England, which eventually became the Internal Clasification of Diseases, and defined a standard Code System for recording diseases.  Later, advances in library science led to the adoption of record keeping conventions, such as the Dewey Decimal System and the Card Catalog patent.   

![./iStock-1290312834.jpg](./iStock-1290312834.jpg){:width="50%"}

 In 1945, the Enigma Project invented the first digital computer, to which library science information management principles were soon added.  By 1970, digital computers became accessible enough that hospitals could use them to track patient visits for accounting purposes, which led to the assachusetts General Hospital Utility Multi-Programming System (MUMPS/VAX), which is commonly regarded as the first electronic medical record system.  Soon after, the personal computing revolution saw the general population become able to purchase a home computer, and with it a flury of patients using these PCs to manage their personal health using spreadsheets and small self-written offline medical record management utilities.    Many of these utilities were eventually abandoned; but others found themselves in a process of consolidation and gravitating towards what would eventually become the major electronic medical record vendors (i.e. Epic, Cerner, Allscripts, Meditech, etc).
 
- HL7 v2
- FHIR 

![./StarTrek-Sphr.png](./StarTrek-Sphr.jpg){:width="100%"}
> Medical software and health record from Star Trek: Into Darkness.  Copyright VIACOM-CBS.

### Purpose / Design Philosophy

The core of the Patient Health Record should be medical grade, and the sort of record that you receive after a visit to the hospital; and which the Patient can carry to from one healthcare provider to the next.  As such, a modern Patient Health Record needs to essentially be able to receive captured data from throughout the hospital.  Emergency room, operating room, intensive care unit, laboratory, pharmacy, nursery, psychaitry.  All of it is relavent.  

![./ImplementingPrimaryCare.jpg](./ImplementingPrimaryCare.jpg){:width="100%"}

### Expectations for this Implementation Guide
Readers are encouraged to think of this implementation guide as a marathon, not a sprint.  To further the analogy, the authors of this guide hope to help software implementor plan on whether they are competing in a 26 mile standard marathon, a 50 mile ultramarathon, or an Iron Man triathalon.  Similarly, implementing a complete PHR is no simple task, and in many situations may take upwards of a year of time or more to complete.  We hope to provide guidance that will help implementors strategically plan their implementations and avoid common stumbling blocks.


### Prior Art - Implementation Guides   

This implementation guide was developed through meta-analysis of dozens of other guides, journal liturature, and an environment surveys of the PHR market.  Implementators may find the following implementation guides of particular interest:  

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

- [Patient Health Record - System Functional Model](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=88)  
- [Personal Health Records Software for Consumers](https://www.medicalrecords.com/personal-health-records)    
- [Best Electronic Health Records software of 2022](https://www.techradar.com/best/best-electronic-health-record-ehr-software)  
- [Who Owns Medical Records: 50 State Comparison](http://www.healthinfolaw.org/comparative-analysis/who-owns-medical-records-50-state-comparison)  
- [Centers for Medicare Services - PHR Pilots](https://www.cms.gov/Medicare/E-Health/PerHealthRecords/PHR_Pilots)  
- [Implementing High Quality Primary Care](https://www.nationalacademies.org/our-work/implementing-high-quality-primary-care)  
- [How to Export Facebook Data](https://blog.coupler.io/how-to-export-facebook-data/)
- [Human API - Getting Started](https://reference.humanapi.co/reference/getting-started)