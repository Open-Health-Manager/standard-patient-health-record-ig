


// Logical:        CDSResponse
// Id:             cds-response-example
// Title:          "CDS Response Example"
// // Description:    "Data elements for the Apple HealthKit HKCategorySample."
// Parent:         AppleHealthKitSample
// * summary 1..1 string 
// * indicator 1..1 string 
// * links 0..* BackboneElement
// * links[0].label 1..1 string 
// * links[0].type 1..1 string 
// * links[0].url 1..1 string 
// * detail 0..1 string 

// https://cds-hooks.org/
// https://cds-hooks.hl7.org/1.0/ 
// Logical:        CDSRequest
// Id:             ammend-record
// Title:          "Amend (Update) Record"
// Description:    "Amend (Update) Record"
// Parent: DomainResource  
// * hookInstance 1..1 string  
// * fhirServer 1..1 string  
// * fhirAuthorization 1..0 BackboneElement   
// * fhirAuthorization.access_token 1..1 string    
// * fhirAuthorization.token_type 1..1 string  
// * fhirAuthorization.expires_in 1..1 integer  
// * fhirAuthorization.scope 1..1 string   
// * fhirAuthorization.subject 1..1 string   
// * context 1..0 BackboneElement   
// * context.access_token 1..1 userId   
// * context.access_token 1..1 patientId   
// * context.access_token 1..1 encounterId   
// * prefetch 1..0 BackboneElement  


