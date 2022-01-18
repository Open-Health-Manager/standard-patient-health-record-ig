

Integer auctor euismod orci eu condimentum. Phasellus placerat, ante at porta convallis, urna ex fermentum enim, id rhoncus erat ex non ipsum. Vivamus ultrices felis massa, vel ultricies sem hendrerit eget. Maecenas vel tempor tellus. Proin neque lacus, porttitor sed tempus sed, congue sit amet massa. Fusce massa mauris, euismod nec felis sit amet, tincidunt congue nulla. Curabitur sagittis ullamcorper ex.

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
