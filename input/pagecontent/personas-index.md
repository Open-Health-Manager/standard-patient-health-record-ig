One of the most challenging aspects of programming a Personal Health Record is developing a longitudinal record to use as a baseline.  Rather than specify what functionality should be included the PHR, this implementation guide endeavors to define _patient persona benchmarks_ that PHRs should be able to either consume or generate.  


### Patient Journeys  

| Patient ID | PatientName   | Primary Diagnosis  | .phr | .sphr |
| ------------- | :-------- | :-------- | :-------- | :-------- | 
| john-doe | John Doe | Diabetic | [ JohnDoe.phr ](JohnDoe.phr) |  |
| 12724069 | Timmy Smart | Foster Child | [ TimmySmart.phr ](TimmySmart-FosterCareTimeline.phr) |  |
| wsim001 | William Sim | wsim001 | [WilliamSim.phr](WilliamSim.phr) |  [WilliamSim.sphr](WilliamSim.sphr) | 
| 1 | Candace Salinas |  Asthma | CandaceSalinas.phr |  |  
| A | Ann | Patient relocation  |  |  |  
| B | Earl | Cancer diagnosis |  |  |  
| C | Markus | Cardiac Rehabilitation |  |  |  
| D | Wilma | Long COVID |  |  |  
| E | Marcella | Complex chronic illness |  |  |  
| X12 | Jamie | Diabetes |  |  |  
| Y48 | Alyssa | Pregnancy |  |  |  
| H32 | Choko | Asthma and back pain  |  |  |  
| J02 | Tommy | Obese and prediabetic |  |  |  
| N76 | Naja | Rare familial development disorders |  |  |  
| G43 | Sammy | COPD and Alzheimers |  |  |  
| J97 | Allison | Single mother |  |  |  

### Synthetic Patients (Synthea)  

| Patient ID | PatientName   | Primary Diagnosis  | SNOMED |  .json | .phr | 
| ------------- | :-------- | :-------- | :-------- | :-------- | :-------- | 
| b031fa19-1e03-42e0-19de-f60c9dc2a579 | Adelina682 Walker122 | allergies | 170837001 | [json](Adelina682_Walker122_b031fa19-1e03-42e0-19de-f60c9dc2a579.json) | [phr](Ms.Adelina682Walker122-b031fa19-1e03-42e0-19de-f60c9dc2a579.phr) |   
| ae26bfd6-d45b-c819-0de6-a2299511e6f4 | Spencer878 Stehr398 | acute myeloid leukemia | 91861009 | [json](Spencer878_Stehr398_ae26bfd6-d45b-c819-0de6-a2299511e6f4.json) |  |  
| 521a2b92-7926-4348-0c8d-3bd3af6da538 | Maegan141 Cole117 | seasonal allergic rhinitis | 367498001 | [json](Maegan141_Cole117_521a2b92-7926-4348-0c8d-3bd3af6da538.json) |  |  
| 81810e78-8279-b01b-f0c8-62f7ebf85613 | Loriann967 Torp761 | appendicitis | 74400008 | [json](Loriann967_Torp761_81810e78-8279-b01b-f0c8-62f7ebf85613.json) |  |  
| 6a9e8e6f-d4d8-f062-79cf-cbeda88dc2bf | Dominga527 Goodwin327 | childhood asthma | 233678006 | [json](Dominga527_Goodwin327_6a9e8e6f-d4d8-f062-79cf-cbeda88dc2bf.json) | [phr](Dominga527Goodwin327-6a9e8e6f-d4d8-f062-79cf-cbeda88dc2bf.phr) |  
| 38ce6e87-ca56-e80c-f18b-d6056df7f0a9 | Randolph418 Eichmann909 | anemia | 271737000 | [json](Randolph418_Eichmann909_38ce6e87-ca56-e80c-f18b-d6056df7f0a9.json) |  |  
| d4beb77a-1183-7593-23e8-fb2a2694d55b | Gerald181 Murazik203 | child attention deficit disorder | 192127007 | [json](Gerald181_Murazik203_d4beb77a-1183-7593-23e8-fb2a2694d55b.json) | [phr](Gerald181Murazik203-d4beb77a-1183-7593-23e8-fb2a2694d55b.phr) |  
| 9dad61c1-ab0e-fef2-260f-dec36788558d | Tomoko463 Anja508 Kunze215 | breast cancer - T2 category | 67673008 | [json](Tomoko463_Anja508_Kunze215_9dad61c1-ab0e-fef2-260f-dec36788558d.json) |  |  
| beee2c9a-931e-a2b2-4ae0-ff658b57f439 | Jarvis643 Kunde533 | bronchitis | 10509002 | [json](Jarvis643_Kunde533_beee2c9a-931e-a2b2-4ae0-ff658b57f439.json) |  |  
| 044934bc-569a-051a-7814-2dac8ad467db | Shantae970 Jennine355 Runte676 | cerebral palsy | 128188000 | [json](Shantae970_Jennine355_Runte676_044934bc-569a-051a-7814-2dac8ad467db.json) | [phr](Mr.Jarvis643O'Hara248-91f9ab65-1933-2a48-94b1-b6fef00f7335.phr) |  
| 088144ea-ce4b-fbb7-0167-2bb035387d7b | Georgie506 Daugherty69 | chronic kidney disease | 431856006 | [json](Georgie506_Daugherty69_088144ea-ce4b-fbb7-0167-2bb035387d7b.json) | [phr](Georgie506_Daugherty69_088144ea-ce4b-fbb7-0167-2bb035387d7b.json) |  
| 69437c6f-772f-6aaf-34b9-b4d3f12d9eaf | Michael441 Ward668 | congestive heart failure | 88805009 | [json](Michael441_Ward668_69437c6f-772f-6aaf-34b9-b4d3f12d9eaf.json) |  |  
| 832_d83b3432-e309-a5e1-8b6d-eb7da0c050d6 | Christoper325 Jakubowski | chronic obstructive pulmonary disease| 412776001 | [json](Christoper325_Jakubowski832_d83b3432-e309-a5e1-8b6d-eb7da0c050d6.json) | [phr](Mr.Adrian111Smith67-d5b0f2de-08c8-8259-68b0-af1fb66be392.phr) |  
| 24f4d2f1-b4ef-0654-25a3-bdce21e7ceef | Eryn994 Nader710 | COVID-19 | 840539006 | [json](Eryn994_Nader710_24f4d2f1-b4ef-0654-25a3-bdce21e7ceef.json) | [phr](Eryn994Nader710-24f4d2f1-b4ef-0654-25a3-bdce21e7ceef.phr) |  
| a79c76c3-bd2f-3200-2912-20bfe99f7d4d | Rosario163 Delao225 | dementia | 386257007 | [json](Rosario163_Delao225_a79c76c3-bd2f-3200-2912-20bfe99f7d4d.json) |  |  
| 90fd51e4-3442-e231-1aa7-9e0c336319a0 | Nia310 Kihn564 | atopic dermatitis | 24079001 | [json](Nia310_Kihn564_90fd51e4-3442-e231-1aa7-9e0c336319a0.json) |  |  
| 7acef32e-71aa-5737-c892-16420d944e6e | Sal878 Langworth352 | renal dialysis | 265764009 | [json](Sal878_Langworth352_7acef32e-71aa-5737-c892-16420d944e6e.json) |  |  
| 9532101f-6dc4-e18b-53ae-79a3230fdf70 | Ricky354 Boyle917 | epilepsy | 84757009 | [json](Ricky354_Boyle917_9532101f-6dc4-e18b-53ae-79a3230fdf70.json) |  |  
| 7f7d92cb-d968-56f9-8ee9-108dfb3dd7ee | Vicente970 Botsford977 | gout | 90560007 | [json](Vicente970_Botsford977_7f7d92cb-d968-56f9-8ee9-108dfb3dd7ee.json) |  |  
| 558aac8d-bd8a-e7fd-ca6e-824c192e9544 | Cyril535 Koepp521 | HIV | 165816005 | [json](Cyril535_Koepp521_558aac8d-bd8a-e7fd-ca6e-824c192e9544.json) | [phr](Mr.Christoper325Jakubowski832-d83b3432-e309-a5e1-8b6d-eb7da0c050d6.phr) |  
| 963c7c3a-80ba-5c14-30e9-d3dcf83d6cd4 | Sina65 Ullrich385 | hospice | 385763009 | [json](Sina65_Ullrich385_963c7c3a-80ba-5c14-30e9-d3dcf83d6cd4.json) |  |  
| 97aa6ae5-d71e-f9df-c6dc-be3ae713690a | Kitty323 Farrah946 Lemke654 | hypertension | 59621000 | [json](Kitty323_Farrah946_Lemke654_97aa6ae5-d71e-f9df-c6dc-be3ae713690a.json) |  |  
| 95b19a58-09ae-d6dc-1cb5-532a78b0d3c7 | Shaunta614 Gala823 Sanford861 | idiopathic hypothyroidism | 83664006 | [json](Shaunta614_Gala823_Sanford861_95b19a58-09ae-d6dc-1cb5-532a78b0d3c7.json) |  |  
| fecad5a2-6d95-36ed-7e4c-d47e9199e8cc | Charlotte28 Mireille557 Parisian75 | concussion | 62106007 | [json](Charlotte28_Mireille557_Parisian75_fecad5a2-6d95-36ed-7e4c-d47e9199e8cc.json) | [phr](Mrs.Charlotte28Parisian75-fecad5a2-6d95-36ed-7e4c-d47e9199e8cc.phr)  |  
| 13803def-e365-e248-e7ec-632533574c3c | Diego848 Carrillo204 | non-small cell lung cancer | 254637007 | [json](Diego848_Carrillo204_13803def-e365-e248-e7ec-632533574c3c.json) | [phr](Mr.Diego848Carrillo204-13803def-e365-e248-e7ec-632533574c3c.phr) |  
| 54e40745-9772-e4a4-b501-47ae63c99704 | Graig740 Tremblay80 | metabolic syndrome | 237602007 | [json](Graig740_Tremblay80_54e40745-9772-e4a4-b501-47ae63c99704.json) | [phr](Mr.Graig740Tremblay80-54e40745-9772-e4a4-b501-47ae63c99704.phr) |  
| 91ed826b-b2d7-99fe-0be3-0439d18ecb2a | Natalia964 Fisher429 | opioid abuse | 5602001 | [json](Natalia964_Fisher429_91ed826b-b2d7-99fe-0be3-0439d18ecb2a.json) |  |  
| 846_6fd8fee9-7fba-4446-5a2a-dfe9257e1631 | Vanessa263 Page791 Lang | osteoporosis | 64859006 | [json](Vanessa263_Page791_Lang846_6fd8fee9-7fba-4446-5a2a-dfe9257e1631.json) |  |  
| a6e749b3-eff6-94d5-5ee2-fb4a6566deef | Gail741 Elaine830 Schumm995 | normal pregnancy | 72892002 | [json](Gail741_Elaine830_Schumm995_a6e749b3-eff6-94d5-5ee2-fb4a6566deef.json) | [phr](Gail741_Elaine830_Schumm995_a6e749b3-eff6-94d5-5ee2-fb4a6566deef.json) |  
| b722aff7-7d41-fea2-ca71-7770fc0a9eb7 | Scarlett814 Waneta858 Stamm704 | rheumatoid arthritis | 69896004 | [json](Scarlett814_Waneta858_Stamm704_b722aff7-7d41-fea2-ca71-7770fc0a9eb7.json) |  |  
| c5328d38-7a8c-e245-dabe-2042022047eb | Yu876 Botsford977 | sepsis | 91302008 | [json](Yu876_Botsford977_c5328d38-7a8c-e245-dabe-2042022047eb.json) |  |  
| 2656be07-d463-10d2-bc57-a3fff6058858 | Gonzalo160 Gibson10 | obstructive sleep apnea syndrome | 78275009 | [json](Gonzalo160_Gibson10_2656be07-d463-10d2-bc57-a3fff6058858.json) | [phr](Mr.Gonzalo160Gibson10-2656be07-d463-10d2-bc57-a3fff6058858.phr) |  
| 4fcce493-43ba-aa15-23e8-653d7648ab08 | Dee580 Boehm581 | sore throat | 43878008 | [json](Dee580_Boehm581_4fcce493-43ba-aa15-23e8-653d7648ab08.json) | [phr](Dee580Boehm581-4fcce493-43ba-aa15-23e8-653d7648ab08.phr) |  
| d949d7bb-3bd7-b925-e72f-a314b6feb197 | Ariel183 Schmitt836 | urinary tract infection | 301011002 | [json](Ariel183_Schmitt836_d949d7bb-3bd7-b925-e72f-a314b6feb197.json) | [phr](Ms.Ariel183Schmitt836-d949d7bb-3bd7-b925-e72f-a314b6feb197.phr) |  
| f966ba2e-50d2-df7f-a5b1-bbb59685eda5 | Stanley702 Ritchie586 | neoplasm of prostate | 126906006 | [json](Stanley702_Ritchie586_f966ba2e-50d2-df7f-a5b1-bbb59685eda5.json) |  |  
| 8dc4ac2f-691f-d83b-1bf0-ca4080ab0b4a | Wes853 DuBuque211 | posttraumatic stress disorder | 47505003 | [json](Wes853_DuBuque211_8dc4ac2f-691f-d83b-1bf0-ca4080ab0b4a.json) |  |  




### General References  
- [Node on FHIR - Clinical Scenarios](https://github.com/clinical-meteor/clinical-scenarios)    
- [SMART on FHIR Test Patient Data (Cerner)](https://docs.google.com/document/d/10RnVyF1etl_17pyCyK96tyhUWRbrTyEcqpwzW-Z-Ybs/edit)  
- [Figma - Patient Personas (GoInvo)](https://www.figma.com/proto/MzUwuSOpldbZXQk4aYobgk/V2-Library?page-id=644%3A4036&node-id=1209%3A3275)  
- [Pediatric Leukemia](https://pediatricimaging.org/diseases/leukemia/)
