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
* sampleType 0..1 string "The sample type." "The sample type." //TODO: use sampleType, or various *Type elements?

* categoryType 0..1 code "The sample's category type." "When the HKSample is an HKCategorySample, the corresponding categoryType."

* quantity 0..1
* quantity only BackboneElement
* quantity ^short = "The HKQuantitySample, except value is its own element."
* quantity ^definition = "The HKQuantitySample counterpart, containing HKUnit and HKQuantityType, but value is moved to its own element."
* quantity.unit 0..1 
* quantity.unit only code // todo: constrain code? see https://build.fhir.org/datatypes.html#Quantity for reference
* quantity.unit ^short = "The sample's unit." 
* quantity.unit ^definition = "When the HKSample is an HKQuantitySample, the corresponding HKQuantityUnit."
// quantity.value replaced by top-level element value
* quantityType 0..1 code "The sample's quantity type." "When the HKSample is an HKQuantitySample, the corresponding quantityType."

* correlationType 0..1 code "The sample's correlation type." "When the HKSample is an HKCorrelation, the corresponding correlationType."
* objects 0..* Reference(AppleHealthKitSample) "The correlation sample's components." "The other HKSamples that comprise the HKCorrelation."

* value[x] 1..1
//* value[x] MS
* value[x] only CodeableConcept or Quantity or string
* value[x] ^short = "value (TODO)"
* valueCodeableConcept 0..1
* valueString ^short = "String representation of results; used ONLY when a computable representation is not possible"


* workoutActivity 0..1 code "The workout activity type." "The workout activity type." 
// todo: workoutActivity possible codes

* workoutDuration 0..1 period "The workout duration." "The workout duration."
// consider: A FHIR resource besides Observation to contain HKWorkout data

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
