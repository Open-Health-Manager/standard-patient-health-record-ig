The purpose of this implementation guide is to help the reader implement a Patient Health Record (in a programming language of their choice).  The notion of a Patient Health Record (PHR) grows out of the concept of an Electronic Medical Record (EMR).  The major difference being in ownership.  The PHR being owned by the patient; and the EMR being owned by the hospital.

The following document will offer design guidance and standardized APIs for helping you develop your application; based on the healthcare industry standard of Fast Healthcare Interoperability Resources (FHIR).  The scope of this document does not attempt to prescribe how you, the implementor, ought to go about programming your software.  What it does provide, is guidance on how to successfully exchange data with other PHR and EHR apps.  In effect, it documents widely supported (and government recognized) data standards and file formats for importing/exporting data into your software.

### Expectations for this Implementation Guide

Readers are encouraged to think of this implementation guide as a marathon, not a sprint.  To further the analogy, the authors of this guide hope to help software implementor plan on whether they are competing in a 26 mile standard marathon, a 50 mile ultramarathon, or an Iron Man triathalon.  Similarly, implementing a complete PHR is no simple task, and in many situations may take upwards of a year of time or more to complete.  We hope to provide guidance that will help implementors strategically plan their implementations and avoid common stumbling blocks.

### What is a Personal Health Record?   
![VennDiagram.png](VennDiagram.png){:width="100%"}    

### Relevant Law

- 21st Century Cures
- Medicare 
- CARES Act

### Purpose / Design Philosophy

The core of the Patient Health Record should be medical grade, and able to incorporate any medical record that you receive after a visit to the hospital; and which the Patient can then carry from one healthcare provider to the next.  As such, a modern Patient Health Record needs to essentially be able to receive captured data from throughout the hospital.  Emergency room, operating room, intensive care unit, laboratory, pharmacy, nursery, psychaitry.  All of it is relavent.  

### Use Cases  

This guide is particularly interested in the problem of collecting and aggregating patient health records from multiple health records into a coherent whole.  In the healthcare industry, these types of records are known as `longitudinal` records.  

- *Longitudinal Health Records* - Assembly of records over a long time span; generally multiple decades (20 years or more), and possibly from different healthcare systems with different practices or standards of care.

- *Longitudinal Studies* - Clinical studies that follow up on patient results after 20 or more years.  Very important for pediatric studies.  

- *Snowbirds* - Many patients have more than one home location, and may spend time in different parts of the country on a seasonal basis.  This leads to medical records that are fragmented.

- *Symptom Tracking* - Symptoms of an illness can evolve as the condition improves or worsens, impacted by such things as climate or diet or circumstances of life.  

- *Long COVID* - An example of an ongoing longitudinal study that has captured national and worldwide attention, as we continued to determine the long-term effects of COVID-19.

- *Multiple Chronic Conditions* - Not all medical conditions are reported to all healthcare providers.  Conversely, specialists will report results for one area of medicine, which needs to be incorporate and reconciled with the patient's master record.  

- *Differential Diagnosises* - Case presentation for rare diseases can require differential diagnosis, as clinicians generate hypotheses and tests for one condition after another to explain a set of symptoms.  

- *Alternative Care - Massage, Accupuncture, etc.* - Patients may wish to track alternative modalities of healthcare that are not recognized or tracked by a healthcare provider or network.

- *Bring Your Own Device* - Patients may wish to utilize consumer medical devices for tracking their own health.

- *Foster Care System* - Custody and care of foster children, especially when it crosses state lines, can be complicated; requiring detailed record keeping to align both medical and court proceedings.  

- *Migrants/Immigrants* - Patients that have immigrated will necessarily have fragmented records that exist in multiple locations or countries.

- *Climate Refugees* - Patients that have been forced to relocate, due to fires, floods, and similar events, will likely have medical records in multiple clinics or hospitals.


### Acknowledgements  

- Jan Oldenburg, Patient Empowerment Workgroup
- Dr. Neelima Karipineni, MITRE
- Salim K Semy, MITRE  
- Dave Carlson, Clinical Cloud Solutions
- Savannah Mueller, EMI Advisors

### References  

- [Patient Health Record - System Functional Model](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=88)  
- [Personal Health Records Software for Consumers](https://www.medicalrecords.com/personal-health-records)    
- [Best Electronic Health Records software of 2022](https://www.techradar.com/best/best-electronic-health-record-ehr-software)  
- [Who Owns Medical Records: 50 State Comparison](http://www.healthinfolaw.org/comparative-analysis/who-owns-medical-records-50-state-comparison)  
- [Centers for Medicare Services - PHR Pilots](https://www.cms.gov/Medicare/E-Health/PerHealthRecords/PHR_Pilots)  
- [Implementing High Quality Primary Care](https://www.nationalacademies.org/our-work/implementing-high-quality-primary-care)  
- [How to Export Facebook Data](https://blog.coupler.io/how-to-export-facebook-data/)
- [Human API - Getting Started](https://reference.humanapi.co/reference/getting-started)
- [Summary of Responses to an Industry RFI Regarding a Role for CMS with Personal Health Records](https://www.cms.gov/Medicare/E-Health/PerHealthRecords/Downloads/SummaryofPersonalHealthRecord.pdf)     
- [HealthKit on FHIR](https://github.com/StanfordBDHG/HealthKitOnFHIR)

### License 
Copyright (c) 2021+ Health Level Seven International and MITRE.org.   
Published under the Creative Commons "Attribution 4.0 International" (CC BY 4.0) License

#### Dependencies
{% include dependency-table.xhtml %}

#### Globals
{% include globals-table.xhtml %}

#### Cross Version Analysis
{% include cross-version-analysis.xhtml %}

#### IP Statements
{% include ip-statements.xhtml %} 
