Alias: LNC = http://loinc.org
Alias: SCT = http://snomed.info/sct

////////////////////////////////////////////////////////////////////////////////////////////////////

ValueSet:    PCDSleepObservationCode
Id:          pcd-sleep-observation-code
Title:       "Patient contributed data: sleep observation code"
Description: "This value set includes codes to track patient sleep recorded by device or app"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.  The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology.  The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org.  This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* LNC#93831-6	"Deep sleep duration"
* LNC#93830-8	"Light sleep duration"
* LNC#93829-0	"REM sleep duration"
* LNC#93832-4	"Sleep duration"
* SCT#258158006 "Sleep, function (observable entity)"

////////////////////////////////////////////////////////////////////////////////////////////////////

ValueSet:    PCDSleepStageValueCode
Id:          pcd-sleep-observation-value
Title:       "Patient contributed data: sleep stage value"
Description: "This value set includes codes to track patient sleep values recorded by device or app"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #pe
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.  The SNOMED International IPS Terminology is distributed by International Health Terminology Standards Development Organisation, trading as SNOMED International, and is subject the terms of the Creative Commons Attribution 4.0 International Public License. For more information, see SNOMED IPS Terminology.  The HL7 International IPS implementation guides incorporate SNOMED CT®, used by permission of the International Health Terminology Standards Development Organisation, trading as SNOMED International. SNOMED CT was originally created by the College of American Pathologists. SNOMED CT is a registered trademark of the International Health Terminology Standards Development Organisation, all rights reserved. Implementers of SNOMED CT should review usage terms or directly contact SNOMED International: info@snomed.org"
* SCT#248220008 "Asleep (finding)"
* SCT#248218005	"Awake (finding)"
* SCT#60984000  "Non-rapid eye movement sleep, function (observable entity)"
* SCT#89129007  "Rapid eye movement sleep, function (observable entity)"
* SCT#261665006	"Unknown (qualifier value)"
