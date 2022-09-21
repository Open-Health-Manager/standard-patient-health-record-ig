Instance: ObservationsBundle1
InstanceOf: Bundle
Description: "John Doe - Observation - Collection"
Usage: #example
* type = #collection
* entry[0].fullUrl = "/Observation/TvuX2kXom6hSvYhMs"
* entry[=].resource = TvuX2kXom6hSvYhMs
* entry[+].fullUrl = "/Observation/x7JRtwiGcxpFA7Psb"
* entry[=].resource = x7JRtwiGcxpFA7Psb
* entry[+].fullUrl = "/Observation/8y7MPgGCmx5CeZHqS"
* entry[=].resource = 8y7MPgGCmx5CeZHqS
* entry[+].fullUrl = "/Observation/Z3WQTCWsnRMHwzygK"
* entry[=].resource = Z3WQTCWsnRMHwzygK
* entry[+].fullUrl = "/Observation/ym9B2bdDJbHAKpyhF"
* entry[=].resource = ym9B2bdDJbHAKpyhF
* entry[+].fullUrl = "/Observation/WZoW2sj73yy7D7pnd"
* entry[=].resource = WZoW2sj73yy7D7pnd
* entry[+].fullUrl = "/Observation/n6SyqiHGT8xwvYJLZ"
* entry[=].resource = n6SyqiHGT8xwvYJLZ
* entry[+].fullUrl = "/Observation/hXcf7dFjizx8MxMqD"
* entry[=].resource = hXcf7dFjizx8MxMqD
* entry[+].fullUrl = "/Observation/Gz6nXg5JFY33hQEX8"
* entry[=].resource = Gz6nXg5JFY33hQEX8
* entry[+].fullUrl = "/Observation/Gz6nXg5JFY33hQEX9"
* entry[=].resource = Gz6nXg5JFY33hQEX9
* entry[+].fullUrl = "/Observation/AEsJJuTPw657P6LEj"
* entry[=].resource = AEsJJuTPw657P6LEj

Instance: TvuX2kXom6hSvYhMs
InstanceOf: Observation
Description: "John Doe - Observation - Symptom - General fatigue"
Usage: #inline
* status = #preliminary
* category.text = "Complaint"
* effectiveDateTime = "2018-10-05T16:03:02.351Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 0
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = ""
* valueString = "General fatigue"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "Symptom"
* code.coding[0].code = #75325-1


Instance: x7JRtwiGcxpFA7Psb
InstanceOf: Observation
Description: "John Doe - Observation - Symptom - Thirst"
Usage: #inline
* status = #preliminary
* category.text = "Complaint"
* effectiveDateTime = "2018-10-05T16:03:35.687Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 0
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = ""
* valueString = "Constant thirst"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "Symptom"
* code.coding[0].code = #75325-1


Instance: 8y7MPgGCmx5CeZHqS
InstanceOf: Observation
Description: "John Doe - Observation - Symptom - Frequent urination"
Usage: #inline
* status = #preliminary
* category.text = "Complaint"
* effectiveDateTime = "2018-10-05T16:04:17.589Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 0
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = ""
* valueString = "Frequent urination"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "Symptom"
* code.coding[0].code = #75325-1


Instance: Z3WQTCWsnRMHwzygK
InstanceOf: Observation
Description: "John Doe - Observation - Symptom - Cold feet"
Usage: #inline
* status = #preliminary
* category.text = "Complaint"
* effectiveDateTime = "2018-10-05T16:05:02.753Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 0
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = ""
* valueString = "Cold feet"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "Symptom"
* code.coding[0].code = #75325-1


Instance: ym9B2bdDJbHAKpyhF
InstanceOf: Observation
Description: "John Doe - Observation - Fasting glucose"
Usage: #inline
* status = #final
* category.text = "Fasting Blood Glucose"
* effectiveDateTime = "2018-10-05T16:08:07.465Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 163
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "mg/dl"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "Fasting glucose [Mass/volume] in Capillary blood by Glucometer"
* code.coding[0].code = #41604-0	


Instance: WZoW2sj73yy7D7pnd
InstanceOf: Observation
Description: "John Doe - Observation - Hemoglobin A1c"
Usage: #inline
* status = #final
* category.text = "HbA1c"
* effectiveDateTime = "2018-10-05T16:09:33.924Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 7.8
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "%"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "Hemoglobin A1c/Hemoglobin.total in Blood"
* code.coding[0].code = #4548-4	


Instance: n6SyqiHGT8xwvYJLZ
InstanceOf: Observation
Description: "John Doe - Observation - Body height"
Usage: #inline
* status = #final
* category.text = "Height"
* effectiveDateTime = "2018-10-05T16:10:14.868Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 67
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "inches"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "Body height"
* code.coding[0].code = #8302-2


Instance: hXcf7dFjizx8MxMqD
InstanceOf: Observation
Description: "John Doe - Observation - Body weight"
Usage: #inline
* status = #final
* category.text = "Weight"
* effectiveDateTime = "2018-10-05T16:11:03.223Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 216
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "lbs"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "Body weight"
* code.coding[0].code = #29463-7


Instance: Gz6nXg5JFY33hQEX8
InstanceOf: Observation
Description: "John Doe - Observation - Systolic blood pressure"
Usage: #inline
* status = #final
* category.text = "Blood Pressure"
* effectiveDateTime = "2018-10-05T16:11:48.290Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 164
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "mm Hg"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "Systolic blood pressure"
* code.coding[0].code = #8480-6

Instance: Gz6nXg5JFY33hQEX9
InstanceOf: Observation
Description: "John Doe - Observation - Diastolic blood pressure"
Usage: #inline
* status = #final
* category.text = "Blood Pressure"
* effectiveDateTime = "2018-10-05T16:11:48.290Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 108
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = "mm Hg"
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "Diastolic blood pressure"
* code.coding[0].code = #8462-4	



Instance: AEsJJuTPw657P6LEj
InstanceOf: Observation
Description: "John Doe - Observation - Body Mass Index"
Usage: #inline
* status = #final
* category.text = "BMI"
* effectiveDateTime = "2018-10-05T16:12:26.875Z"
* subject = Reference(/Patient/Anyman/Bob) "John Doe"
* valueQuantity.value = 33
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.unit = ""
* code.coding[0].system = "http://loinc.org"
* code.coding[0].display = "BMI score for risk calculation"
* code.coding[0].code = #97057-4
