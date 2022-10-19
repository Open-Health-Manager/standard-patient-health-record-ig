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

////////////////////////////////////////////////////////////////////////////////////////////////////

ValueSet:    PCDSleepStageValueCode
Id:          pcd-sleep-observation-value
Title:       "Patient contributed data: sleep stage value"
Description: "This value set includes codes to track patient sleep values recorded by device or app"

* SCT#248220008 "Asleep (finding)"
* SCT#248218005	"Awake (finding)"
* SCT#60984000  "Non-rapid eye movement sleep, function (observable entity)"
* SCT#89129007  "Rapid eye movement sleep, function (observable entity)"
* SCT#261665006	"Unknown (qualifier value)"
