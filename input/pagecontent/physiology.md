
Recurring challenges with designing PHR apps include figuring out which data to include (all of it?  just the hospital data?  fitness data?) and then finding suitable test data.  This implementation guide does not purport to provide algorithms or workflows for every medical domain.  However, we can reference the Synthea synthetic data generator, and recommend that PHR developers use it's algorithms for generating sample data for various medical conditions.  


![./Tutorial-Dermatogram.jpg](./Tutorial-Dermatogram.jpg){:width="100%"}



### Domain Analysis

The following table provides links to clinical workflow simulations, relevant terminologies, file types, estimated data usage, and diagnostic algorithms used in various medical domains that are typically incorporated into electronic medical records.  

> Note:  the following table was partially generated using Claude LLM. Please review for accuracy.  


| Domain | Value Sets | File Types  | Avg. File Size  | Frequency | Diagnostic Algorithm |
| ------ | :------------ | :---------- | :-------------- | :-------- | :-------- |
| Genomics | [Sequence Type](https://www.hl7.org/fhir/R4/valueset-sequence-type.html) <br/> [Human Chromosome](https://www.hl7.org/fhir/R4/valueset-chromosome-human.html) <br/>  | FASTQ, BAM, VCFs | ~1TB | Annual/Lifetime | Pharmacogenomics <br/> Personalized Medicine <br/> Genetic Risk Scoring |
| Radiology | [AcquisitionModality](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html) <br/> [Laterality](https://www.hl7.org/fhir/valueset-bodysite-laterality.html) <br/> [SNOMED CT Body Structures](https://www.hl7.org/fhir/valueset-body-site.html) <br/> | DICOM, JPG, PNG | ~1GB | Per Study | Surgical Planning <br/> Autosegmentation <br/> Lesion Detection <br/> Radiation Therapy Planning |
| Embryology | [Embryonic Development Stages](https://www.ncbi.nlm.nih.gov/books/NBK10794/) | PDF, SVG | ~100KB | Periodic Checkups | Developmental Anomaly Detection <br/> Genetic Screening |
| [Dermatology](https://github.com/synthetichealth/synthea/tree/master/src/main/resources/modules/dermatitis) | [SNOMED CT Skin Conditions](https://browser.ihtsdotools.org/) | JPG, PNG, DICOM | ~2MB | As Needed | Skin Lesion Classification <br/> Melanoma Detection <br/> Dermatitis Progression |
| [Endocrinology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/hypothyroidism.json) | [Endocrine Disorder Codes](https://www.icd10data.com/ICD10CM/Codes/E00-E89) | PDF, CSV | ~100KB | Quarterly/Annually | Hormone Level Analysis <br/> Thyroid Function Evaluation |
| [Pediatrics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/cdc_growth_charts.json) | [Pediatric Growth Standards](https://www.cdc.gov/growthcharts/) | PDF, CSV | ~100KB | Periodic Checkups | Growth Trajectory Monitoring <br/> Developmental Milestone Tracking |
| [Metabolism & Biometrics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/biometrics.yml) | [HL7 Observation Codes](https://loinc.org/) | CSV, JSON | ~100KB | Daily/Weekly | Metabolic Rate Calculation <br/> Body Composition Analysis |
| [Neurology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/epilepsy.json) | [Neurological Disorder Classifications](https://www.who.int/standards/classifications/classification-of-diseases/international-classification-of-diseases) | EEG, MRI, PDF | ~100KB | Periodic/As Needed | Seizure Pattern Recognition <br/> Neuroplasticity Mapping |
| [ Cardiology & Hemodynamics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/physiology/generators/circulation_hemodynamics.yml) | [Cardiac Condition Codes](https://www.icd10data.com/ICD10CM/Codes/I00-I99) | ECG, DICOM | ~5GB | Periodic/Continuous | Arrhythmia Detection <br/> Cardiovascular Risk Scoring |
| [Pulmonology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/lung_cancer.json) | [Respiratory Disorder Codes](https://www.icd10data.com/ICD10CM/Codes/J00-J99) | X-Ray, CT, PDF | ~500MB | Periodic/As Needed | Lung Function Analysis <br/> Cancer Progression Tracking |
| Kinesthesiology | [Movement Disorder Codes](https://www.icd10data.com/ICD10CM/Codes/G00-G99) | Video, CSV | ~200MB | As Needed | Movement Pattern Analysis <br/> Rehabilitation Tracking |
| [Immunology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/immunization_schedule.json) | [Immunization Codes](https://www.cdc.gov/vaccines/schedules/) | PDF, CSV | ~100KB | Periodic | Immune Response Profiling <br/> Vaccination Efficacy |
| [Virology (COVID19)](https://github.com/synthetichealth/synthea/tree/master/src/main/resources/modules/covid19) | [COVID-19 Diagnostic Codes](https://www.cdc.gov/coronavirus/2019-ncov/) | PDF, CSV | ~20KB | Periodic/As Needed | Viral Load Tracking <br/> Variant Identification |
| Gastroenterology | [Digestive System Disorder Codes](https://www.icd10data.com/ICD10CM/Codes/K00-K95) | Endoscopy, MRI | ~4GB | As Needed | Inflammatory Marker Analysis <br/> Digestive Function Evaluation |
| [Obstetrics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/female_reproduction.json) | [Pregnancy Complication Codes](https://www.icd10data.com/ICD10CM/Codes/O00-O9A) | Ultrasound, PDF | ~100MB | Periodic | Fetal Development Monitoring <br/> High-Risk Pregnancy Identification |
| [Pregnancy](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/pregnancy.json) | [Maternal Health Codes](https://www.icd10data.com/ICD10CM/Codes/O00-O9A) | Ultrasound, PDF | ~100MB | Monthly/Trimesterly | Gestational Age Tracking <br/> Prenatal Health Assessment |
| Gynecology | [Reproductive Health Codes](https://www.icd10data.com/ICD10CM/Codes/N00-N99) | Ultrasound, PDF | ~200MB | Annual/As Needed | Reproductive Health Screening <br/> Hormonal Balance Analysis |
| Andrology | [Male Reproductive Health Codes](https://www.icd10data.com/ICD10CM/Codes/N00-N99) | Semen Analysis, PDF | ~100MB | Annual/As Needed | Fertility Assessment <br/> Hormonal Profiling |
| [Urology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/urinary_tract_infections.json) | [Urinary System Disorder Codes](https://www.icd10data.com/ICD10CM/Codes/N00-N99) | Ultrasound, CT | ~200MB | Periodic/As Needed | Kidney Function Analysis <br/> Urinary Tract Infection Tracking |
| [Healthy Aging](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/wellness_encounters.json) | [Geriatric Assessment Codes](https://www.icd10data.com/ICD10CM/Codes/Z00-Z99) | PDF, CSV | ~100KB | Annual | Cognitive Function Screening <br/> Lifestyle Risk Assessment |
| [Hospice Care](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/hospice_treatment.json) | [Palliative Care Codes](https://www.icd10data.com/ICD10CM/Codes/Z00-Z99) | PDF, Medical Records | ~200MB | Ongoing | Symptom Management <br/> Quality of Life Assessment |

### Synthetic Data Generator Installation  



```bash
# download synthea
git clone https://github.com/synthetichealth/synthea

# go into the cloned directory
cd synthea

# build the app
./gradlew build check test
```

### References  

[SyntheaTM Patient Generator](https://github.com/synthetichealth/synthea)    
[Simulacres Et Simulation - Jean Baudrillard](https://doku.pub/download/simulacres-et-simulation-jean-baudrillard-1q7e2mp3ov0v)  
