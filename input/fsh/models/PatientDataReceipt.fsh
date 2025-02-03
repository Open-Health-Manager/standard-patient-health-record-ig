Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $sct = http://snomed.info/sct

Instance: pdr-message
InstanceOf: Bundle
Title: "PatientDataReceipt Message"
Description: "An atomic update to a patient record; sent via a commit/push command and POST or PUT operation."
Usage: #example
* type = #message
* entry[0].resource = pdr-message-header
* entry[=].fullUrl = "http://example.org/baseR4/MessageHeader/pdr-message-header"
* entry[+].resource = 71a8b156-760b-df6b-859e-eefc7932a526
* entry[=].fullUrl = "http://example.org/baseR4/Patient/71a8b156-760b-df6b-859e-eefc7932a526"
* entry[+].resource = ee6beac6-aaaa-957c-767e-1e1caa5c816c
* entry[=].fullUrl = "http://example.org/baseR4/Encounter/ee6beac6-aaaa-957c-767e-1e1caa5c816c"
* entry[+].resource = ee6beac6-aaaa-957c-767e-1e1c925c816c
* entry[=].fullUrl = "http://example.org/baseR4/Procedure/ee6beac6-aaaa-957c-767e-1e1c925c816c"

Instance: pdr-message-header
InstanceOf: MessageHeader
Usage: #inline
* eventUri = "urn:mitre:healthmanager:pdr"
* source.endpoint = "http://example.org"
* focus[0] = Reference(http://example.org/baseR4/Encounter/ee6beac6-aaaa-957c-767e-1e1caa5c816c)
* focus[+] = Reference(http://example.org/baseR4/Procedure/ee6beac6-aaaa-957c-767e-1e1c925c816c)
* focus[+] = Reference(http://example.org/baseR4/Patient/71a8b156-760b-df6b-859e-eefc7932a526)

Instance: 71a8b156-760b-df6b-859e-eefc7932a526
InstanceOf: Patient
Usage: #inline
* identifier[0].system = "https://github.com/synthetichealth/synthea"
* identifier[=].value = "71a8b156-760b-df6b-859e-eefc7932a526"
* identifier[+].system = "urn:mitre:healthmanager:account:username"
* identifier[=].value = "a394Kutch271"
* identifier[+].type = $v2-0203#MR "Medical Record Number"
* identifier[=].type.text = "Medical Record Number"
* identifier[=].system = "http://hospital.smarthealthit.org"
* identifier[=].value = "71a8b156-760b-df6b-859e-eefc7932a526"
* identifier[+].type = $v2-0203#SS "Social Security Number"
* identifier[=].type.text = "Social Security Number"
* identifier[=].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[=].value = "999-12-3038"
* identifier[+].type = $v2-0203#DL "Driver's license number"
* identifier[=].type.text = "Driver's license number"
* identifier[=].system = "urn:oid:2.16.840.1.113883.4.3.25"
* identifier[=].value = "S99996224"
* identifier[+].type = $v2-0203#PPN "Passport Number"
* identifier[=].type.text = "Passport Number"
* identifier[=].system = "http://standardhealthrecord.org/fhir/StructureDefinition/passportNumber"
* identifier[=].value = "X15390510X"
* name[0].use = #official
* name[=].family = "Kutch271"
* name[=].given = "Adriana394"
* name[=].prefix = "Mrs."
* name[+].use = #maiden
* name[=].family = "Hintz995"
* name[=].given = "Adriana394"
* name[=].prefix = "Mrs."
* telecom.system = #phone
* telecom.value = "555-237-5240"
* telecom.use = #home
* gender = #female
* birthDate = "1966-05-16"
* address.extension.extension[0].url = "latitude"
* address.extension.extension[=].valueDecimal = 42.3980503884975
* address.extension.extension[+].url = "longitude"
* address.extension.extension[=].valueDecimal = -70.97134547950968
* address.extension.url = "http://hl7.org/fhir/StructureDefinition/geolocation"
* address.line = "455 Bayer Rapid Suite 75"
* address.city = "Boston"
* address.state = "MA"
* address.postalCode = "02120"
* address.country = "US"
* maritalStatus = $v3-MaritalStatus#L "Legally Separated"
* maritalStatus.text = "Legally Separated"
* multipleBirthBoolean = false
* communication.language = urn:ietf:bcp:47#en-US "English (United States)"
* communication.language.text = "English (United States)"

Instance: ee6beac6-aaaa-957c-767e-1e1caa5c816c
InstanceOf: Encounter
Usage: #inline
* identifier.use = #official
* identifier.system = "https://github.com/synthetichealth/synthea"
* identifier.value = "ee6beac6-aaaa-957c-767e-1e1caa5c816c"
* status = #finished
* class = $v3-ActCode#AMB
* type = $sct#185349003 "Encounter for check up (procedure)"
* type.text = "Encounter for check up (procedure)"
* subject = Reference(71a8b156-760b-df6b-859e-eefc7932a526) "Mrs. Adriana394 Kutch271"
* period.start = "2022-02-15T10:20:13-05:00"
* period.end = "2022-02-15T10:35:13-05:00"

Instance: ee6beac6-aaaa-957c-767e-1e1c925c816c
InstanceOf: Procedure
Usage: #inline
* identifier.use = #official
* identifier.system = "https://github.com/synthetichealth/synthea"
* identifier.value = "ee6beac6-aaaa-957c-767e-1e1c925c816c"
* status = #completed
* code = $sct#73761001 "Colonoscopy (procedure)"
* code.text = "Colonoscopy"
* subject = Reference(71a8b156-760b-df6b-859e-eefc7932a526) "Mrs. Adriana394 Kutch271"
* encounter = Reference(ee6beac6-aaaa-957c-767e-1e1caa5c816c)
* performedDateTime = "2022-02-15T10:20:13-05:00"