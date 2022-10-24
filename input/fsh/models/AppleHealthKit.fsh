Logical:        AppleHealthKitObject
Title:          "Apple HealthKit Object Logical Model"
Description:    "Data elements for the Apple HealthKit HKObject."

* ^abstract = true
* ^status = #draft

* uuid 1..1 string "UUID" "The universally unique identifier (UUID) for this HealthKit object."
* metadata 0..1 BackboneElement "metadata" "The metadata for this HealthKit object."
* device 0..1 BackboneElement "device" "The device that generated the data for this object."
* sourceRevision 1..1 string "Source Version" "The version of the app or device that generated the data for this HealthKit object." // TODO: string or BackBone?
/* TODO: remove parent?
 */

Logical:        AppleHealthKitSample
Id:             apple-healthkit-sample
Title:          "Apple HealthKit Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKSample."

* ^status = #draft


// * uuid 1..1 string "UUID" "The universally unique identifier (UUID) for this HealthKit object." //inherit from parent
// * metadata 0..1 BackboneElement "metadata" "The metadata for this HealthKit object."
// * device 0..1 BackboneElement "device" "The device that generated the data for this object."
// * sourceRevision 0..1 BackboneElement "sourceRevision" "A HealthKit source, representing the app or device that created this object."
* startDate 0..1 date "The sample's start date." "The sample's start date."
* endDate 0..1 date "The sample's end date." "The sample's end date."
* hasUndeterminedDuration 0..1 boolean "Indicates whether the sample has an unknown duration." "Indicates whether the sample has an unknown duration."
* sampleType 0..1 string "The sample type." "The sample type." //TODO: convert to code and bind with SampleTypeValueSet

* categoryType 0..1 code "The sample's category type." "When the HKSample is an HKCategorySample, the corresponding categoryType." // TODO: bind to valueset
* quantityType 0..1 code "The sample's quantity type." "When the HKSample is an HKQuantitySample, the corresponding quantityType." // TODO: bind to valueset
* correlationType 0..1 code "The sample's correlation type." "When the HKSample is an HKCorrelation, the corresponding correlationType." // TODO: valueset
* workoutActivityType 0..1 code "The sample's workout activity type." "When HKSample is an HKWorkoutActivity, the corresponding workoutActivityType." // TODO: valueset

* value[x] 0..*
* value[x] only integer or Quantity or CodeableConcept or Reference(AppleHealthKitObject)
* value[x] ^short = "The HKSample value"
* value[x] ^definition = "The HKSample value"
* valueInteger ^short = "Value for HKCategory"
* valueQuantity ^short = "Value for HKQuantity or HKWorkout"
// TODO: short descriptions for quantity vs workout
* valueReference ^short = "References for HKCorrelation set"


/* meaningful elements derivied from Apple HealthKit SDK
 * here for reference, will remove before merge

HK Sample
  var startDate: Date
  var endDate: Date
  var hasUndeterminedDuration: Bool  remove?
  var sampleType: HKSampleType

HK SampleType
  var isMinimumDurationRestricted: Bool
  var minimumAllowedDuration: TimeInterval
  var isMaximumDurationRestricted: Bool
  var maximumAllowedDuration: TimeInterval
  var allowsRecalibrationForEstimates: Bool

The subclasses inheriting from HK Sample have different attributes of interest

HK Category:
  var CategoryType: HKCategoryType
  var value: Int

HK Quantity Sample
  var quantity: HKQuantity {HKUnit {string}, double}
  var count: Int
  var quantityType: HKQuantityType

HK Correlation
  var CorrelationType: HKCorrelationType
  var objects: Set<HKSample>

HK Workout
  var duration: TimeInterval
  var workoutActivityType: HKWorkoutActivityType
  var workoutActivities: [HKWorkoutActivity]
  var workoutEvents: [HKWorkoutEvent]
  var allStatistics: [HKQuantityType : HKStatistics]  A dictionary that contains all the statistics for the workout.

 */
