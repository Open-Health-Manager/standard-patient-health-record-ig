
/*--------------------------------------------------------------*
/*                        Logical Models                        * 
/*--------------------------------------------------------------*/
Logical:        AppleHealthKitObject
Title:          "Apple HealthKit Object Logical Model"
Description:    "Data elements for the Apple HealthKit HKObject."
* ^abstract = true
* ^status = #draft
* uuid 1..1 string "UUID" "The universally unique identifier (UUID) for this HealthKit object."
* metadata 0..1 BackboneElement "metadata" "The metadata for this HealthKit object."
* device 0..1 BackboneElement "device" "The device that generated the data for this object."
* sourceRevision 0..1 string "Source Version" "The version of the app or device that generated the data for this HealthKit object."


Logical:        AppleHealthKitSample
Id:             apple-healthkit-sample
Title:          "Apple HealthKit Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKSample."
Parent:         AppleHealthKitObject
* ^abstract = true
* ^status = #draft
* startDate 0..1 dateTime "The sample's start date." "The sample's start date."
* endDate 0..1 dateTime "The sample's end date." "The sample's end date."
* hasUndeterminedDuration 0..1 boolean "Indicates whether the sample has an unknown duration." "Indicates whether the sample has an unknown duration."
* sampleType 1..1 code "The sample type." "The sample type."
* sampleType from AppleHealthKitSampleTypeValueSet (extensible)


Logical:        AppleHealthKitCategorySample
Id:             apple-healthkit-category-sample
Title:          "Apple HealthKit Category Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKCategorySample."
Parent:         AppleHealthKitSample
* ^status = #draft
* categoryType 1..1 code "The sample's category type." "The HKCategorySampleType."
* categoryType from AppleHealthKitCategoryTypeValueSet (extensible)
* value 1..1 integer "The sample's category value." "The HKCategorySample.value value."


Logical:        AppleHealthKitQuantitySample
Id:             apple-healthkit-quantity-sample
Title:          "Apple HealthKit Quantity Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKQuantitySample."
Parent:         AppleHealthKitSample
* ^status = #draft
* quantity 1..1 BackboneElement "The sample's quantity." "The HKQuantity for this sample."
* quantity.unit 0..1 BackboneElement "The quantity's unit." "The HKUnit in HKQuantity in this HKQuantitySample."
* quantity.unit.unitString 0..1 string "The unit string." "The HKUnit.unitString value."
* quantity.doubleValue 0..1 decimal "The quantity's value." "The HKQuantity.doubleValue."
* count 0..1 integer "The sample's quantity count." "The sample's quantity count."
* quantityType 1..1 code "The sample's quantity type." "HKQuantitySample.quantityType from corresponding ValueSet"
* quantityType from AppleHealthKitQuantityTypeValueSet (extensible)


Logical:        AppleHealthKitCorrelationSample
Id:             apple-healthkit-correlation-sample
Title:          "Apple HealthKit Correlation Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKCorrelation."
Parent:         AppleHealthKitSample
* ^status = #draft
* correlationType 1..1 code "The sample's correlation type." "HKCorrelation.correlationType from corresponding ValueSet"
* correlationType from AppleHealthKitCorrelationTypeValueSet (extensible)
* objects 1..* Reference(AppleHealthKitSample) "The set of sample objects that make up the correlation." "HKCorrelation.objects (Set<HKSample>)"


Logical:        AppleHealthKitWorkoutSample
Id:             apple-healthkit-workout-sample
Title:          "Apple HealthKit Workout Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKWorkout."
Parent:         AppleHealthKitSample
* ^status = #draft
* duration 0..1 period "The workout duration." "The workout duration, may be derived from endDate - startDate."
* workoutActivityType 0..1 code "The sample's workout activity type." "When HKSample is an HKWorkoutActivity, the corresponding workoutActivityType."
* workoutActivityType from AppleHealthKitWorkoutActivityTypeValueSet (extensible)
* workoutActivities 0..* Reference(AppleHealthKitWorkoutActivity) "The sample's workout activities." "The sample's workout activities."
* workoutEvents 0..* Reference(AppleHealthKitWorkoutEvent) "The sample's workout events." "The sample's workout events, in agreement with workoutActivities."


Logical:        AppleHealthKitWorkoutActivity
Id:             apple-healthkit-workout-activity
Title:          "Apple HealthKit Workout Activity Logical Model"
Description:    "Data elements for the Apple HealthKit HKWorkoutActivity."
Parent:         AppleHealthKitObject
* ^status = #draft
* startDate 0..1 dateTime "The Workout Activity start datetime." "The Workout Activity start datetime."
* endDate 0..1 dateTime "Workout Activity end datetime." "The Workout Activity end datetime."
* duration 0..1 period "Workout Activity duration" "Workout Avtivity duration may be derived from endDate - startDate."
// map allStatistics [ HKQuantity:HKStatistics ]
* workoutEvents 0..* Reference(AppleHealthKitWorkoutEvent) "Associated Workout Events." "Associated Workout Events."


Logical:        AppleHealthKitWorkoutEvent
Id:             apple-healthkit-workout-event
Title:          "Apple HealthKit Workout Event Logical Model"
Description:    "Data elements for the Apple HealthKit HKWorkoutEvent."
//Parent:         AppleHealthKitObject
* ^status = #draft
* metadata 0..1 BackboneElement "The metadata." "The metadata."
* dateInterval 0..1 BackboneElement "The event's time and duration." "The event's time and duration."
* dateInterval.start 1..1 dateTime "The dateInterval's start date." "The dateInterval's start date."
* dateInterval.end 0..1 dateTime "The dateInterval's end date." "The dateInterval's end date."
* dateInterval.duration 0..1 period "The dateInterval's duration." "The dateInterval's duration."
* type 1..1 code "The workout event type." "The workout event type."
* type from AppleHealthKitWorkoutEventTypeValueSet (extensible)


Logical:        AppleHealthKitCharacteristic
Id:             apple-healthkit-characteristic
Title:          "Apple HealthKit Characteristic Logical Model"
Description:    "Relevant Data elements that correspond to the CharacteristicType stored in Apple HealthStore."
* ^status = #draft
* characteristicType 1..1 code "The characteristic type." "The characteristic type."
* characteristicType from AppleHealthKitCharacteristicTypeValueSet (extensible)
* biologicalSex 0..1 code "The biological sex." "The biological sex."
* biologicalSex from AppleHealthKitBiologicalSexValueSet (extensible)
* dateOfBirth 0..1 date "The date of birth." "The date of birth."



/*--------------------------------------------------------------*
/*                        Value Sets                            * 
/*--------------------------------------------------------------*/

/*
  CategoryTypeValueSet: https://developer.apple.com/documentation/healthkit/hkcategorytypeidentifier
  QuantityTypeValueSet: https://developer.apple.com/documentation/healthkit/hkquantitytypeidentifier
  CorrelationTypeValueSet: https://developer.apple.com/documentation/healthkit/hkcorrelationtypeidentifier
  WorkoutTypeValueSet: arbitrary string (see: https://developer.apple.com/documentation/healthkit/hkworkouttypeidentifier)
  WorkoutActivityTypeValueSet: uint enum (https://developer.apple.com/documentation/healthkit/hkworkoutactivitytype)
  WorkoutEventTypeValueSet: int enum (https://developer.apple.com/documentation/healthkit/hkworkouteventtype)
  CharacteristicTypeValueSet: https://developer.apple.com/documentation/healthkit/hkcharacteristictypeidentifier
  BiologicalSexValueSet: int enum https://developer.apple.com/documentation/healthkit/hkbiologicalsex
*/

ValueSet: AppleHealthKitSampleTypeValueSet
Title: "Apple Health Kit Sample Type Value Set"
Id: apple-health-kit-sample-type-value-set
Description: "Possible values for AppleHealthKitSample.sampleType"
* include codes from system AppleHealthKitSampleTypeCodeSystem

CodeSystem: AppleHealthKitSampleTypeCodeSystem
Title: "Apple Health Kit Sample Type Code System"
Id: apple-health-kit-sample-type-code-system
Description: "Code System required for defining sampleType ValueSet"
* #category "Apple HK CategorySample"
* #quantity "Apple HK QuantitySample"
* #correlation "Apple HK CorrelationSample"
* #workout "Apple HK Workout"
* #workoutActivity "Apple HK WorkoutActivity"
* #other


ValueSet: AppleHealthKitQuantityTypeValueSet
Title: "Apple Health Kit Quantity Type Value Set"
Id: apple-health-kit-quantity-type-value-set
Description: "Possible values for AppleHealthKitSample.quantityType"
* include codes from system AppleHealthKitQuantityTypeCodeSystem

CodeSystem: AppleHealthKitQuantityTypeCodeSystem
Title: "Apple Health Kit Quantity Type Code System"
Id: apple-health-kit-quantity-type-code-system
Description: "Code System required for defining quantityType ValueSet"
* #bodyMassIndex
* #bodyFatPercentage "Scalar(Percent, 0.0 - 1.0), Discrete"
* #height "Length, Discrete"
* #bodyMass "Mass, Discrete"
* #leanBodyMass "Mass, Discrete"
* #waistCircumference "Length, Discrete"

// Fitness
* #stepCount "Scalar(Count), Cumulative"
* #distanceWalkingRunning "Length, Cumulative"
* #distanceCycling "Length, Cumulative"
* #distanceWheelchair "Length, Cumulative"
* #basalEnergyBurned "Energy, Cumulative"
* #activeEnergyBurned "Energy, Cumulative"
* #flightsClimbed "Scalar(Count), Cumulative"
* #nikeFuel "Scalar(Count), Cumulative"
* #appleExerciseTime "Time Cumulative"
* #pushCount "Scalar(Count), Cumulative"
* #distanceSwimming "Length, Cumulative"
* #swimmingStrokeCount "Scalar(Count), Cumulative"
* #vo2Max "ml/(kg*min) Discrete"
* #distanceDownhillSnowSports "Length, Cumulative"

// Vitals
* #heartRate "Scalar(Count)/Time, Discrete"
* #bodyTemperature "Temperature, Discrete"
* #basalBodyTemperature "Basal Body Temperature, Discrete"
* #bloodPressureSystolic "Pressure, Discrete"
* #bloodPressureDiastolic "Pressure, Discrete"
* #respiratoryRate "Scalar(Count)/Time, Discrete"

// Beats per minute estimate of a user's lowest heart rate while at rest
* #restingHeartRate "Scalar(Count)/Time, Discrete"

// Average heartbeats per minute captured by an Apple Watch while a user is walking    
* #walkingHeartRateAverage "Scalar(Count)/Time, Discrete"

// The standard deviation of heart beat-to-beat intevals (Standard Deviation of Normal to Normal)
* #heartRateVariabilitySDNN "Time (ms), Discrete"

// Results
* #oxygenSaturation "Scalar (Percent, 0.0 - 1.0), Discrete"
* #peripheralPerfusionIndex "Scalar(Percent, 0.0 - 1.0), Discrete"
* #bloodGlucose "Mass/Volume, Discrete"
* #numberOfTimesFallen "Scalar(Count), Cumulative"
* #electrodermalActivity "Conductance, Discrete"
* #inhalerUsage "Scalar(Count), Cumulative"
* #insulinDelivery "Pharmacology (IU) Cumulative"
* #bloodAlcoholContent "Scalar(Percent, 0.0 - 1.0), Discrete"
* #forcedVitalCapacity "Volume, Discrete"
* #forcedExpiratoryVolume1 "Volume, Discrete"
* #peakExpiratoryFlowRate "Volume/Time, Discrete"

// Nutrition    
* #dietaryFatTotal "Mass, Cumulative"
* #dietaryFatPolyunsaturated "Mass, Cumulative"
* #dietaryFatMonounsaturated "Mass, Cumulative"
* #dietaryFatSaturated "Mass, Cumulative"
* #dietaryCholesterol "Mass, Cumulative"
* #dietarySodium "Mass, Cumulative"
* #dietaryCarbohydrates "Mass, Cumulative"
* #dietaryFiber "Mass, Cumulative"
* #dietarySugar "Mass, Cumulative"
* #dietaryEnergyConsumed "Energy, Cumulative"
* #dietaryProtein "Mass, Cumulative"
* #dietaryVitaminA "Mass, Cumulative"
* #dietaryVitaminB6 "Mass, Cumulative"
* #dietaryVitaminB12 "Mass, Cumulative"
* #dietaryVitaminC "Mass, Cumulative"
* #dietaryVitaminD "Mass, Cumulative"
* #dietaryVitaminE "Mass, Cumulative"
* #dietaryVitaminK "Mass, Cumulative"
* #dietaryCalcium "Mass, Cumulative"
* #dietaryIron "Mass, Cumulative"
* #dietaryThiamin "Mass, Cumulative"
* #dietaryRiboflavin "Mass, Cumulative"
* #dietaryNiacin "Mass, Cumulative"
* #dietaryFolate "Mass, Cumulative"
* #dietaryBiotin "Mass, Cumulative"
* #dietaryPantothenicAcid "Mass, Cumulative"
* #dietaryPhosphorus "Mass, Cumulative"
* #dietaryIodine "Mass, Cumulative"
* #dietaryMagnesium "Mass, Cumulative"
* #dietaryZinc "Mass, Cumulative"
* #dietarySelenium "Mass, Cumulative"
* #dietaryCopper "Mass, Cumulative"
* #dietaryManganese "Mass, Cumulative"
* #dietaryChromium "Mass, Cumulative"
* #dietaryMolybdenum "Mass, Cumulative"
* #dietaryChloride "Mass, Cumulative"
* #dietaryPotassium "Mass, Cumulative"
* #dietaryCaffeine "Mass, Cumulative"
* #dietaryWater "Volume, Cumulative"
* #uvExposure "Scalar (Count), Discrete"


ValueSet: AppleHealthKitCategoryTypeValueSet
Title: "Apple Health Kit Category Type Value Set"
Id: apple-health-kit-category-type-value-set
Description: "Possible values for AppleHealthKitSample.categoryType"
* include codes from system AppleHealthKitCategoryTypeCodeSystem

CodeSystem: AppleHealthKitCategoryTypeCodeSystem
Title: "Apple Health Kit Category Type Code System"
Id: apple-health-kit-category-type-code-system
Description: "Code System required for defining categoryType ValueSet"
* #sleepAnalysis
* #appleStandHour "HKCategoryValueAppleStandHour"
* #cervicalMucusQuality "HKCategoryValueCervicalMucusQuality"
* #ovulationTestResult "HKCategoryValueOvulationTestResult"
* #menstrualFlow "HKCategoryValueMenstrualFlow"
* #intermenstrualBleeding "(Spotting) HKCategoryValue"
* #sexualActivity "HKCategoryValue"
* #mindfulSession "HKCategoryValue"


ValueSet: AppleHealthKitCorrelationTypeValueSet
Title: "Apple Health Kit Correlation Type Value Set"
Id: apple-health-kit-correlation-type-value-set
Description: "Possible values for AppleHealthKitSample.correlationType"
* include codes from system AppleHealthKitCorrelationTypeCodeSystem

CodeSystem: AppleHealthKitCorrelationTypeCodeSystem
Title: "Apple Health Kit Correlation Type Code System"
Id: apple-health-kit-correlation-type-code-system
Description: "Code System required for defining correlationType ValueSet"
* #bloodPressure
* #food


ValueSet: AppleHealthKitWorkoutActivityTypeValueSet
Title: "Apple Health Kit Workout Activity Type Value Set"
Id: apple-health-kit-workout-activity-type-value-set
Description: "Possible values for AppleHealthLitSample.workoutActivityType"
* include codes from system AppleHEalthKitWorkoutActivityTypeCodeSystem

CodeSystem: AppleHEalthKitWorkoutActivityTypeCodeSystem
Title: "Apple Health Kit Workout Activity Type Code System"
Id: apple-health-kit-workout-activity-type-code-system
Description: "Code System required for defining workoutActivityType ValueSet"
* #archery
* #bowling
* #fencing
* #gymnastics
* #trackAndField
* #americanFootball
* #australianFootball
* #baseball
* #basketball
* #cricket
* #discSports
* #handball
* #hockey
* #lacrosse
* #rugby
* #soccer
* #softball
* #volleyball
* #preparationAndRecovery
* #flexibility
* #cooldown
* #walking
* #running
* #wheelchairWalkPace
* #wheelchairRunPace
* #cycling
* #handCycling
* #coreTraining
* #elliptical
* #functionalStrengthTraining
* #traditionalStrengthTraining
* #crossTraining
* #mixedCardio
* #highIntensityIntervalTraining
* #jumpRope
* #stairClimbing
* #stairs
* #stepTraining
* #fitnessGaming
* #barre
* #cardioDance
* #socialDance
* #yoga
* #mindAndBody
* #pilates
* #badminton
* #pickleball
* #racquetball
* #squash
* #tableTennis
* #tennis
* #climbing
* #equestrianSports
* #fishing
* #golf
* #hiking
* #hunting
* #play
* #crossCountrySkiing
* #curling
* #downhillSkiing
* #snowSports
* #snowboarding
* #skatingSports
* #paddleSports
* #rowing
* #sailing
* #surfingSports
* #swimming
* #waterFitness
* #waterPolo
* #waterSports
* #boxing
* #kickboxing
* #martialArts
* #taiChi
* #wrestling
* #other
* #dance "depreciated"
* #danceInspiredTraining "depreciated"
* #mixedMetabolicCardioTraining "depreciated"
* #swimBikeRun
* #transition



ValueSet: AppleHealthKitWorkoutEventTypeValueSet
Title: "Apple Health Kit Workout Event Type Value Set"
Id: apple-health-kit-workout-event-type-value-set
Description: "Possible values for AppleHealthKitWorkoutEvent.type"
* include codes from system AppleHealthKitWorkoutEventTypeCodeSystem

CodeSystem: AppleHealthKitWorkoutEventTypeCodeSystem
Title: "Apple Health Kit Workout Event Type Code System"
Id: apple-health-kit-workout-event-type-code-system
Description: "Code System required for defining workout event type ValueSet"
* #pause "A constant indicating that the workout has paused."
* #resume "A constant indicating that the workout has resumed."
* #motionPaused "A constant indicating that the system has automatically paused a workout session."
* #motionResumed "A constant indicating that the system has automatically resumed a workout session."
* #pauseOrResumeRequest "A constant indicating that the user has requested a pause or resume."
* #lap "A constant indicating a lap."
* #segment "A constant indicating a period of time of interest during a workout."
* #marker "A constant indicating a point of interest during a workout session."



ValueSet: AppleHealthKitCharacteristicTypeValueSet
Title: "Apple Health Kit Charactersitic Type Value Set"
Id: apple-health-kit-characteristic-type-value-set
Description: "Possible values for AppleHealthKitCharacteristic.characteristicType"
* include codes from system AppleHealthKitCharacteristicTypeCodeSystem

CodeSystem: AppleHealthKitCharacteristicTypeCodeSystem
Title: "Apple Health Kit Characteristic Type Code System"
Id: apple-health-kit-characteristic-type-code-system
Description: "Code System required for defining characteristic type ValueSet"
* #biologicalSex
//* #bloodType
* #dateOfBirth
//* #fitzpatrickSkinType:
//* #wheelchairUse


ValueSet: AppleHealthKitBiologicalSexValueSet
Title: "Apple Health Kit Biological Sex Value Set"
Id: apple-health-kit-biological-sex-value-set
Description: "Possible values for AppleHealthKitCharacteristic.biologicalSex"
* include codes from system AppleHealthKitBiologicalSexCodeSystem

CodeSystem: AppleHealthKitBiologicalSexCodeSystem
Title: "Apple Health Kit Biological Sex Code System"
Id: apple-health-kit-biological-sex-code-system
Description: "Code System required for defining biologicalSex"
* #notSet "A constant indicating that either the user's biological sex characteristic type is not set, or the user has not granted your app permission to read that characteristic type."
* #female "A constant indicating that the user is female."
* #male "A constant indicating that the user is male."
* #other "A constant indicating that the user is otherwise not categorized as either male or female."
