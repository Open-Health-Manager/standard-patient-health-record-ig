

Instance: patient-identifier
InstanceOf: SearchParameter
Usage: #definition
Title: "Search by identifier in patient with multipleOr"
// * url = "https://hl7.org/fhir/us/directory-query/SearchParameter-patient-identifier"
* extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Resource-id"
* name = "PatientIdentifierSearchParameter"
* status = #active
* description = "This SearchParameter enables query of patient by `identifier` with `mutlipleOr` enabled."
* code = #identifier
* base[0] = #Patient
* type = #token
* multipleOr = true


Instance: search-from-date
InstanceOf: SearchParameter
Usage: #definition
Title: "Search From Date"
* extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* status = #active
* code = #search-from-date
* name = "SearchFromDateSearchParameter"
* description = "Return records from this date"
// * url = "http://hl7.org/fhir/us/ndh/SearchParameter/verificationresult-primarysource-validation-date"
// * base[0] = #VerificationResult
* type = #date
* base[0] = #Patient
