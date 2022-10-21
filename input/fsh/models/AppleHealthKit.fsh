Logical:        AppleHealthKitObject
Title:          "Apple HealthKit Object Logical Model"
Description:    "Data elements for the Apple HealthKit HKObject."

* ^abstract = true
* ^status = #draft

* uuid 1..1 string "UUID" "The universally unique identifier (UUID) for this HealthKit object."
* device 0..1 link(Device) "Device" "The device that generated the data for this HealthKit object."
* sourceRevision 1..1 string "Source Version" "The version of the app or device that generated the data for this HealthKit object."
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
* hasUndeterminedDuration 0..1 boolean "Indicates an unknown sample duration." "This is true when the endDate of the sample is unknown or distant future."

* categoryType 0..1 code "The sample's category type." "When the HKSample is an HKCategorySample, the corresponding categoryType."

* myquantity 0..1
* myquantity ^short = "The HKQuantitySample, except value is its own element."
* myquantity ^definition = "The HKQuantitySample counterpart, containing HKUnit and HKQuantityType, but value is moved to its own element."
* myquantity.unit 0..1 
* myquantity.unit only code 
* myquantity.unit ^short = "The sample's unit." 
* myquantity.unit ^definition = "When the HKSample is an HKQuantitySample, the corresponding HKQuantityUnit."

// quantity.value at top-level
//* quantityUnit 0..1 code "The sample's unit." "When the HKSample is an HKQuantitySample, the corresponding HKQuantityUnit."
* quantityType 0..1 code "The sample's quantity type." "When the HKSample is an HKQuantitySample, the corresponding quantityType."

* correlationType 0..1 code "The sample's correlation type." "When the HKSample is an HKCorrelation, the corresponding correlationType."
* objects 0..* Reference(AppleHealthKitSample) "The correlation sample's components." "The other HKSamples that comprise the HKCorrelation."

* value[x] 1..1
* value[x] MS
* value[x] only CodeableConcept or Quantity or string
* value[x] ^short = "value (TODO)"
* valueCodeableConcept 0..1
* valueString ^short = "String representation of results; used ONLY when a computable representation is not possible"


* workoutActivity 0..1 code "The workout activity type." "The workout activity type." 
// todo: workoutActivity possible codes

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

//! HK Quantity Sample
// var quantity: HKQuantity {HKUnit {string}, double}
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
