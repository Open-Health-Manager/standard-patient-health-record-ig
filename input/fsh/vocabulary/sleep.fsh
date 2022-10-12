Alias: LNC = http://loinc.org
Alias: SCT = http://snomed.info/sct

////////////////////////////////////////////////////////////////////////////////////////////////////

ValueSet:    PCDSleepObservationCode
Id:          pcd-sleep-observation-code
Title:       "Patient contributed data: sleep observation code"
Description: "This value set includes codes to track patient sleep recorded by device or app"

* LNC#93831-6	"Deep sleep duration"
* LNC#93830-8	"Light sleep duration"
* LNC#93829-0	"REM sleep duration"
* LNC#93832-4	"Sleep duration"
* SCT#258158006 "Sleep, function (observable entity)"