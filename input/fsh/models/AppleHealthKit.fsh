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
* sampleType from AppleHealthKitSampleTypeValueSet (extensible)

* categoryType 0..1 code "The sample's category type." "When the HKSample is an HKCategorySample, the corresponding categoryType."
* quantityType 0..1 code "The sample's quantity type." "When the HKSample is an HKQuantitySample, the corresponding quantityType." // TODO: bind to valueset
* correlationType 0..1 code "The sample's correlation type." "When the HKSample is an HKCorrelation, the corresponding correlationType." // TODO: valueset
* workoutActivityType 0..1 code "The sample's workout activity type." "When HKSample is an HKWorkoutActivity, the corresponding workoutActivityType." // TODO: valueset

* value[x] 0..* 
* value[x] only integer or Quantity or Reference(AppleHealthKitObject)
* value[x] ^short = "The HKSample value"

* valueInteger 0..1
* valueInteger ^short = "Value for HKCategory"

* valueQuantity 0..1
* valueQuantity ^short = "Value for HKQuantity or HKWorkout"
// TODO: short descriptions for quantity vs workout

* valueReference 0..*
* valueReference ^short = "References for HKCorrelation set"

ValueSet: AppleHealthKitSampleTypeValueSet
Title: "Apple Health Kit Sample Type Value Set"
Id: apple-health-kit-sample-type-value-set
Description: "Possible values for AppleHealthKitSample.sampleType"
 * category "Apple HK CategorySample"
 * quantity "Apple HK QuantitySample"
 * correlation "Apple HK CorrelationSample"
 * workout "Apple HK WorkoutSample"



/*
  CategoryTypeValueSet: https://developer.apple.com/documentation/healthkit/hkcategorytypeidentifier
  QuantityTypeValueSet: https://developer.apple.com/documentation/healthkit/hkquantitytypeidentifier
  CorrelationTypeValueSet: https://developer.apple.com/documentation/healthkit/hkcorrelationtypeidentifier (also allows any string)
  WorkoutTypeValueSet: string (see: https://developer.apple.com/documentation/healthkit/hkworkouttypeidentifier)
  WorkoutActivityTypeValueSet: uint (https://developer.apple.com/documentation/healthkit/hkworkoutactivitytype)
*/

ValueSet: AppleHealthKitQuantityTypeValueSet
Title: "Apple Health Kit Quantity Type Value Set"
Id: apple-health-kit-quantity-type-value-set
Description: "Possible values for AppleHealthKitSample.quantityType"
  * bodyMassIndex
  * bodyFatPercentage "Scalar(Percent, 0.0 - 1.0), Discrete"
  * height "Length, Discrete"
  * bodyMass "Mass, Discrete"
  * leanBodyMass "Mass, Discrete"
  * waistCircumference "Length, Discrete"

  // Fitness
  * stepCount "Scalar(Count), Cumulative"
  * distanceWalkingRunning "Length, Cumulative"
  * distanceCycling "Length, Cumulative"
  * distanceWheelchair "Length, Cumulative"
  * basalEnergyBurned "Energy, Cumulative"
  * activeEnergyBurned "Energy, Cumulative"
  * flightsClimbed "Scalar(Count), Cumulative"
  * nikeFuel "Scalar(Count), Cumulative"
  * appleExerciseTime "Time Cumulative"
  * pushCount "Scalar(Count), Cumulative"
  * distanceSwimming "Length, Cumulative"
  * swimmingStrokeCount "Scalar(Count), Cumulative"
  * vo2Max "ml/(kg*min) Discrete"
  * distanceDownhillSnowSports "Length, Cumulative"

  // Vitals
  * heartRate "Scalar(Count)/Time, Discrete"
  * bodyTemperature "Temperature, Discrete"
  * basalBodyTemperature "Basal Body Temperature, Discrete"
  * bloodPressureSystolic "Pressure, Discrete"
  * bloodPressureDiastolic "Pressure, Discrete"
  * respiratoryRate "Scalar(Count)/Time, Discrete"

  // Beats per minute estimate of a user's lowest heart rate while at rest
  * restingHeartRate "Scalar(Count)/Time, Discrete"

  // Average heartbeats per minute captured by an Apple Watch while a user is walking    
  * walkingHeartRateAverage "Scalar(Count)/Time, Discrete"

  // The standard deviation of heart beat-to-beat intevals (Standard Deviation of Normal to Normal)
  * heartRateVariabilitySDNN "Time (ms), Discrete"

  // Results
  * oxygenSaturation "Scalar (Percent, 0.0 - 1.0), Discrete"
  * peripheralPerfusionIndex "Scalar(Percent, 0.0 - 1.0), Discrete"
  * bloodGlucose "Mass/Volume, Discrete"
  * numberOfTimesFallen "Scalar(Count), Cumulative"
  * electrodermalActivity "Conductance, Discrete"
  * inhalerUsage "Scalar(Count), Cumulative"
  * insulinDelivery "Pharmacology (IU) Cumulative"
  * bloodAlcoholContent "Scalar(Percent, 0.0 - 1.0), Discrete"
  * forcedVitalCapacity "Volume, Discrete"
  * forcedExpiratoryVolume1 "Volume, Discrete"
  * peakExpiratoryFlowRate "Volume/Time, Discrete"

  // Nutrition    
  * dietaryFatTotal "Mass, Cumulative"
  * dietaryFatPolyunsaturated "Mass, Cumulative"
  * dietaryFatMonounsaturated "Mass, Cumulative"
  * dietaryFatSaturated "Mass, Cumulative"
  * dietaryCholesterol "Mass, Cumulative"
  * dietarySodium "Mass, Cumulative"
  * dietaryCarbohydrates "Mass, Cumulative"
  * dietaryFiber "Mass, Cumulative"
  * dietarySugar "Mass, Cumulative"
  * dietaryEnergyConsumed "Energy, Cumulative"
  * dietaryProtein "Mass, Cumulative"
  * dietaryVitaminA "Mass, Cumulative"
  * dietaryVitaminB6 "Mass, Cumulative"
  * dietaryVitaminB12 "Mass, Cumulative"
  * dietaryVitaminC "Mass, Cumulative"
  * dietaryVitaminD "Mass, Cumulative"
  * dietaryVitaminE "Mass, Cumulative"
  * dietaryVitaminK "Mass, Cumulative"
  * dietaryCalcium "Mass, Cumulative"
  * dietaryIron "Mass, Cumulative"
  * dietaryThiamin "Mass, Cumulative"
  * dietaryRiboflavin "Mass, Cumulative"
  * dietaryNiacin "Mass, Cumulative"
  * dietaryFolate "Mass, Cumulative"
  * dietaryBiotin "Mass, Cumulative"
  * dietaryPantothenicAcid "Mass, Cumulative"
  * dietaryPhosphorus "Mass, Cumulative"
  * dietaryIodine "Mass, Cumulative"
  * dietaryMagnesium "Mass, Cumulative"
  * dietaryZinc "Mass, Cumulative"
  * dietarySelenium "Mass, Cumulative"
  * dietaryCopper "Mass, Cumulative"
  * dietaryManganese "Mass, Cumulative"
  * dietaryChromium "Mass, Cumulative"
  * dietaryMolybdenum "Mass, Cumulative"
  * dietaryChloride "Mass, Cumulative"
  * dietaryPotassium "Mass, Cumulative"
  * dietaryCaffeine "Mass, Cumulative"
  * dietaryWater "Volume, Cumulative"
  * uvExposure "Scalar (Count), Discrete"

/*--------------------------------*
/*   HKCategoryType Identifiers   *
/*--------------------------------*

public struct HKCategoryTypeIdentifier : Hashable, Equatable, RawRepresentable {

    public init(rawValue: String)
}
extension HKCategoryTypeIdentifier {

    
    
    * sleepAnalysis: HKCategoryTypeIdentifier

    
    * appleStandHour: HKCategoryTypeIdentifier // HKCategoryValueAppleStandHour

    
    * cervicalMucusQuality: HKCategoryTypeIdentifier // HKCategoryValueCervicalMucusQuality

    
    * ovulationTestResult: HKCategoryTypeIdentifier // HKCategoryValueOvulationTestResult

    
    * menstrualFlow: HKCategoryTypeIdentifier // HKCategoryValueMenstrualFlow

    
    * intermenstrualBleeding: HKCategoryTypeIdentifier // (Spotting) HKCategoryValue

    
    * sexualActivity: HKCategoryTypeIdentifier // HKCategoryValue

    
    * mindfulSession: HKCategoryTypeIdentifier // HKCategoryValue
}

/*--------------------------------------*
/*   HKCharacteristicType Identifiers   *
/*--------------------------------------*

public struct HKCharacteristicTypeIdentifier : Hashable, Equatable, RawRepresentable {

    public init(rawValue: String)
}
extension HKCharacteristicTypeIdentifier {

    
    
    * biologicalSex: HKCharacteristicTypeIdentifier

    
    * bloodType: HKCharacteristicTypeIdentifier // HKBloodTypeObject

    
    * dateOfBirth: HKCharacteristicTypeIdentifier // NSDateComponents

    
    * fitzpatrickSkinType: HKCharacteristicTypeIdentifier // HKFitzpatrickSkinTypeObject

    
    * wheelchairUse: HKCharacteristicTypeIdentifier // HKWheelchairUseObject
}

/*-----------------------------------*
/*   HKCorrelationType Identifiers   *
/*-----------------------------------*

public struct HKCorrelationTypeIdentifier : Hashable, Equatable, RawRepresentable {

    public init(rawValue: String)
}
extension HKCorrelationTypeIdentifier {

    
    
    * bloodPressure: HKCorrelationTypeIdentifier

    
    * food: HKCorrelationTypeIdentifier
}

/*--------------------------------*
/*   HKDocumentType Identifiers   *
/*--------------------------------*

public struct HKDocumentTypeIdentifier : Hashable, Equatable, RawRepresentable {

    public init(rawValue: String)
}
extension HKDocumentTypeIdentifier {

    
    
    * CDA: HKDocumentTypeIdentifier
}

/*------------------------------*
/*   HKWorkoutType Identifier   *
/*------------------------------*


public let HKWorkoutTypeIdentifier: String

/*--------------------------------*
/*   HKSeriesSample Identifiers   *
/*--------------------------------*


public let HKWorkoutRouteTypeIdentifier: String



 */

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
