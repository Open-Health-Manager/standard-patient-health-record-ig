Profile:     PCDSleepObservation
Id:          pcd-sleep-observation
Parent:      Observation
Title:       "Patient contributed data: sleep observation"
Description: "patient sleep logs recorded by device or app."

* code from pcd-sleep-observation-code (required)

* effective[x] 1..1
* effective[x] only dateTime or Period

* value[x] 1..1
* value[x] MS
* value[x] only CodeableConcept or Quantity
* valueCodeableConcept from pcd-sleep-observation-value (required)

////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: PCDSleepObservation-stage-example
InstanceOf: PCDSleepObservation
Description: "Example - pcd-sleep-observation stage"
Usage: #example
* subject.display = "Jane Smith"
* subject.reference = "Patient/janesmith"
* status = #final
* code = http://snomed.info/sct#258158006 "Sleep, function (observable entity)"
* effectivePeriod.start = "2022-10-07T22:57:00Z"
* effectivePeriod.end = "2022-10-08T09:13:34.2112Z"
* valueCodeableConcept = http://snomed.info/sct#248220008	"Asleep (finding)"

////////////////////////////////////////////////////////////////////////////////////////////////////

Instance: PCDSleepObservation-duration-example
InstanceOf: PCDSleepObservation
Description: "Example - pcd-sleep-observation duration"
Usage: #example
* subject.display = "Jane Smith"
* subject.reference = "Patient/janesmith"
* status = #final
* code = http://loinc.org#93832-4	"Sleep duration"
* effectiveDateTime = "2022-10-08T09:57:34.2112Z"
* valueQuantity = 9 'h'