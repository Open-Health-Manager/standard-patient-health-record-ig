
Recurring challenges with designing PHR apps include figuring out which data to include (all of it?  just the hospital data?  fitness data?) and then finding suitable test data.  This implementation guide does not purport to provide algorithms or workflows for every medical category.  However, we can reference the Synthea synthetic data generator, and recommend that PHR developers use it's algorithms for generating sample data for various medical conditions.  

### Synthetic Data Generator Installation  

```bash
# download synthea
git clone https://github.com/synthetichealth/synthea

# go into the cloned directory
cd synthea

# build the app
./gradlew build check test
```

### Medical Domains  

- Genomics
- Embryology
- [Dermatology](https://github.com/synthetichealth/synthea/tree/master/src/main/resources/modules/dermatitis)  
- [Endocrinology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/hypothyroidism.json)  
- [Pediatrics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/cdc_growth_charts.json)  
- [Metabolism & Biometrics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/biometrics.yml)  
- [Neurology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/epilepsy.json)  
- [Cardiology & Hemodynamics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/physiology/generators/circulation_hemodynamics.yml)  
- [Pulmonology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/lung_cancer.json)  
- Kinesthesiology
- [Immunology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/immunization_schedule.json)    
- [Virology (COVID19)](https://github.com/synthetichealth/synthea/tree/master/src/main/resources/modules/covid19)    
- Gastroenterology
    - Nutrition Intake
    - Nutrition Outtake
- Reproductive Health
    - [Contraceptives](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/contraceptives.json)    
    - [Obstetrics](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/female_reproduction.json)  
    - [Pregnancy](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/pregnancy.json)  
    - Gynocology
    - Andrology
    - [Urology](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/urinary_tract_infections.json)  
- [Healthy Aging](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/wellness_encounters.json)  
- [Hospice Care](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/hospice_treatment.json)  



### References  

[SyntheaTM Patient Generator](https://github.com/synthetichealth/synthea)    
