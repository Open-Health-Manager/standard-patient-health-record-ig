
Recurring challenges with designing PHR apps include figuring out which data to include (all of it?  just the hospital data?  fitness data?) and then finding suitable test data.  This implementation guide does not purport to provide algorithms or workflows for every medical category.  However, we can reference the Synthea synthetic data generator, and recommend that PHR developers use it's algorithms for generating sample data for various medical conditions.  

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

![./Tutorial-Dermatogram.png](./Tutorial-Dermatogram.png){:width="100%"}



### Medical Domains  

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

| Domain | Value Sets | File Types  | Avg. File Size  | Frequency | Diagnostic Algorithm |
| ------ | :------------ | :---------- | :-------------- | :-------- | :-------- |
| Genomics | [Sequence Type](https://www.hl7.org/fhir/R4/valueset-sequence-type.html) <br/> [Human Chromosome](https://www.hl7.org/fhir/R4/valueset-chromosome-human.html) <br/>  | FASTQ, BAM, VCFs | ~1TB |  | Pharmacogenenomics <br/> Personalized Medicine <br/>|
| Radiology |  [AcquisitionModality](https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html) <br/> [Laterality](https://www.hl7.org/fhir/valueset-bodysite-laterality.html) <br/>  [SNOMED CT Body Structures](https://www.hl7.org/fhir/valueset-body-site.html) <br/> | DICOM, JPG | ~1GB |  per study| Surgical Planning <br> Autosegmentation <br/> Medication Dosage|
| Embryology |  | PDF | ~100KB |  | |
| [Dermatology](https://github.com/synthetichealth/synthea/tree/master/src/main/resources/modules/dermatitis)   | | | ~2MB | | |
| [Endocrinology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/hypothyroidism.json) | | | ~100KB | | |
| [Pediatrics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/cdc_growth_charts.json) | | | ~100KB | | |
| [Metabolism & Biometrics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/biometrics.yml) | | | ~100KB | | |
| [Neurology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/epilepsy.json)  | | | ~100KB | | |
| [ Cardiology & Hemodynamics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/physiology/generators/circulation_hemodynamics.yml)  | | | ~5GB | | |
| [Pulmonology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/lung_cancer.json)  | | | | | |
| Kinesthesiology | | | | | |
| [Immunology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/immunization_schedule.json) | | | ~100KB | | |
| [Virology (COVID19)](https://github.com/synthetichealth/synthea/tree/master/src/main/resources/modules/covid19) | | | ~20KB | | |
| Gastroenterology | | | ~4GB | | |
| [Obstetrics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/female_reproduction.json) | | | ~100MB | | |
| [Pregnancy](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/pregnancy.json)  | | | ~100MB | | |
| Gynocology | | | | | |
| Andrology | | | | | |
| [Urology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/urinary_tract_infections.json) | | | | | |
| [Healthy Aging](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/wellness_encounters.json) | | | | | |
| [Hospice Care](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/hospice_treatment.json)  | | | | | |



### Synthetic Data Generator Installation  

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 

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
