Logical:        AppleHealthKitObject
Title:          "Apple HealthKit Object Logical Model"
Description:    "Data elements for the Apple HealthKit HKObject."

* ^abstract = true
* ^status = #draft

* uuid 1..1 string "UUID" "The universally unique identifier (UUID) for this HealthKit object."
* device 0..1 link(Device) "Device" "The device that generated the data for this HealthKit object."
* sourceRevision 1..1 "Source Version" "The version of the app or device that generated the data for this HealthKit object."
/* ^ above could map to Observation.device or Provenance.agent
 */


Logical:        AppleHealthKitSample
Id:             apple-healthkit-sample
Parent:         AppleHealthKitObject
Title:          "Apple HealthKit Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKSample."

* ^abstract = true
* ^status = #draft

* startDate 0..1 date "The sample's start date." "The sample's start date."
* endDate 0..1 date "The sample's end date." "The sample's end date."

* value[x] 1..* /*TODO syntax*/ "The sample's value." "The sample's value."

* workoutActivity 0..1 CodeableConcept "The workout activity type." "The workout activity type." 
* workoutDuration 0..1 period "The workout duration." "The workout duration."

/* above intends to map to Observation.value[x], which includes
    - Observation.valueQuantity
    - Observation.CodeableConcept
    - Observation.valueSampledData
 */
// Observation.component could represent HKCorrelation
// consider: A FHIR resource besides Observation is required for HKWorkout data

//! from HK Sample
// var startDate: Date
// var endDate: Date
// var hasUndeterminedDuration: Bool // remove?
// var sampleType: HKSampleType

//! from HK SampleType
// var isMinimumDurationRestricted: Bool
// var minimumAllowedDuration: TimeInterval
// var isMaximumDurationRestricted: Bool
// var maximumAllowedDuration: TimeInterval
// var allowsRecalibrationForEstimates: Bool

//! The subclasses inheriting from HK Sample have different attributes of interest

//! HK Category:
// var CategoryType: HKCategoryType
// var value: Int

//! HK Quantity
// var quantity: HKQuantity
// var count: Int
// var quantityType: HKQuantityType

//! HK Correlation
// var CorrelationType: HKCorrelationType
// var objects: Set<HKSample>

//! HK Workout
// var duration: TimeInterval
// var workoutActivityType: HKWorkoutActivityType
// var workoutActivities: [HKWorkoutActivity]
// var workoutEvents: [HKWorkoutEvent]
// var allStatistics: [HKQuantityType : HKStatistics] // A dictionary that contains all the statistics for the workout.
