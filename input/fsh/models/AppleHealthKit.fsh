
/*--------------------------------------------------------------*
/*                        Logical Models                        * 
/*--------------------------------------------------------------*/
Logical:        AppleHealthKitObject
Id:             apple-health-kit-object
Title:          "Apple HealthKit Object Logical Model"
Description:    "Data elements for the Apple HealthKit HKObject."
* ^abstract = true
* ^status = #draft
* uuid 1..1 string "The universally unique identifier (UUID) for this HealthKit object."
* metadata 0..* BackboneElement "The metadata for this HealthKit object."
* metadata.key 1..1 string "Constants used to add metadata to objects stored in HealthKit."
* metadata.value[x] 1..1 string or dateTime or integer or decimal or boolean or positiveInt or unsignedInt "The metadata dictionary value."
* device 0..1 BackboneElement "The device that generated the data for this object."
* device.udiDeviceIdentifier 0..1 string "The device identifier portion of the US Food and Drug Administration’s Unique Device Identifier (UDI)."
* device.firmwareVersion 0..1 string "An arbitrary string representing the current version of the firmware running on the device."
* device.hardwareVersion 0..1 string "An arbitrary string representing the hardware version of the device."
* device.localIdentifier 0..1 string "An identifier that uniquely identifies the device object on the hardware running this code."
* device.manufacturer 0..1 string "A string representing the device’s manufacturer."
* device.model 0..1 string "A string representing the device’s model."
* device.name 0..1 string "The user-facing name for the device."
* device.softwareVersion 0..1 string "An arbitrary string representing the version of the software running on the device."
* sourceRevision 1..1 BackboneElement "The app or device that created this object."
* sourceRevision.source 1..1 BackboneElement "The source for a sample."
* sourceRevision.source.bundleIdentifier 1..1 string "The source’s bundle identifier."
* sourceRevision.source.name 1..1 string "The source’s name."
* sourceRevision.version 0..1 string "A string that identifies a particular version of the source."
* sourceRevision.operatingSystemVersion 1..1 BackboneElement "A string that identifies the operating system used to save a sample."
* sourceRevision.operatingSystemVersion.majorVersion 1..1 integer "The major release number, such as 10 in version 10.9.3."
* sourceRevision.operatingSystemVersion.minorVersion 1..1 integer "The minor release number, such as 9 in version 10.9.3."
* sourceRevision.operatingSystemVersion.patchVersion 1..1 integer "The update release number, such as 3 in version 10.9.3."
* sourceRevision.productType 0..1 string "A string that identifies the device used to save a sample."


Logical:        AppleHealthKitSample
Id:             apple-health-kit-sample
Title:          "Apple HealthKit Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKSample."
Parent:         AppleHealthKitObject
* ^abstract = true
* ^status = #draft
* startDate 0..1 dateTime "The sample's start date."
* endDate 0..1 dateTime "The sample's end date."
* hasUndeterminedDuration 0..1 boolean "Indicates whether the sample has an unknown duration."
* sampleType 1..1 code "The sample type." "The sample type."
* sampleType from AppleHealthKitSampleTypeValueSet (extensible)


Logical:        AppleHealthKitCategorySample
Id:             apple-health-kit-category-sample
Title:          "Apple HealthKit Category Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKCategorySample."
Parent:         AppleHealthKitSample
* ^status = #draft
* categoryType 1..1 code "The category type for this sample."
* categoryType from AppleHealthKitCategoryTypeValueSet (extensible)
* value 1..1 integer "The category value for this sample."


Logical:        AppleHealthKitQuantitySample
Id:             apple-health-kit-quantity-sample
Title:          "Apple HealthKit Quantity Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKQuantitySample."
Parent:         AppleHealthKitSample
* ^status = #draft
* quantity 1..1 BackboneElement "The quantity for this sample."
* quantity.unit 0..1 string "The unit string."
* quantity.doubleValue 0..1 decimal "Returns the quantity’s value in the provided unit."
* count 0..1 integer "The number of quantities contained in this sample."
* quantityType 1..1 code "The quantity type for this sample."
* quantityType from AppleHealthKitQuantityTypeValueSet (extensible)


Logical:        AppleHealthKitCorrelationSample
Id:             apple-health-kit-correlation-sample
Title:          "Apple HealthKit Correlation Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKCorrelation."
Parent:         AppleHealthKitSample
* ^status = #draft
* correlationType 1..1 code "The type for this correlation."
* correlationType from AppleHealthKitCorrelationTypeValueSet (extensible)
* objects 1..* Resource "The set of sample objects that make up the correlation."


Logical:        AppleHealthKitWorkoutSample
Id:             apple-health-kit-workout-sample
Title:          "Apple HealthKit Workout Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKWorkout."
Parent:         AppleHealthKitSample
* ^status = #draft
* duration 0..1 decimal "The workout duration in number of seconds."
* workoutActivityType 0..1 code "The sample's workout activity type." "When HKSample is an HKWorkoutActivity, the corresponding workoutActivityType."
* workoutActivityType from AppleHealthKitWorkoutActivityTypeValueSet (extensible)
* workoutActivities 0..* Reference(AppleHealthKitWorkoutActivity) "The sample's workout activities." "The sample's workout activities."
* workoutEvents 0..* Reference(AppleHealthKitWorkoutEvent) "The sample's workout events." "The sample's workout events, in agreement with workoutActivities."


Logical:        AppleHealthKitWorkoutActivity
Id:             apple-health-kit-workout-activity
Title:          "Apple HealthKit Workout Activity Logical Model"
Description:    "Data elements for the Apple HealthKit HKWorkoutActivity."
Parent:         AppleHealthKitObject
* ^status = #draft
* startDate 0..1 dateTime "The Workout Activity start datetime." "The Workout Activity start datetime."
* endDate 0..1 dateTime "Workout Activity end datetime." "The Workout Activity end datetime."
* duration 0..1 period "Workout Activity duration" "Workout Activity duration may be derived from endDate - startDate."
// map allStatistics [ HKQuantity:HKStatistics ]
* workoutEvents 0..* Reference(AppleHealthKitWorkoutEvent) "Associated Workout Events." "Associated Workout Events."

Logical:        AppleHealthKitWorkoutEvent
Id:             apple-health-kit-workout-event
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


Logical:        AppleHealthKitHealthStoreCharacteristic
Id:             apple-health-kit-healthstore-characteristic
Title:          "Apple HealthKit HealthStore Characteristic Logical Model"
Description:    "Relevant Data elements that correspond to the CharacteristicType stored in Apple HealthStore."
* ^status = #draft
* characteristicType 1..1 code "The characteristic type."
* characteristicType from AppleHealthKitCharacteristicTypeValueSet (extensible)
* biologicalSex 0..1 code "The biological sex."
* biologicalSex from AppleHealthKitBiologicalSexValueSet (extensible)
* dateOfBirth 0..1 date "The date of birth."

 

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
Title: "Apple HealthKit Sample Type Value Set"
Id: apple-health-kit-sample-type-value-set
Description: "Possible values for AppleHealthKitSample.sampleType"
* include codes from system AppleHealthKitSampleTypeCodeSystem

CodeSystem: AppleHealthKitSampleTypeCodeSystem
Title: "Apple HealthKit Sample Type Code System"
Id: apple-health-kit-sample-type-code-system
Description: "Code System required for defining sampleType ValueSet"
* #category "Apple HK CategorySample"
* #quantity "Apple HK QuantitySample"
* #correlation "Apple HK CorrelationSample"
* #workout "Apple HK Workout"
* #workoutActivity "Apple HK WorkoutActivity"
* #other


ValueSet: AppleHealthKitQuantityTypeValueSet
Title: "Apple HealthKit Quantity Type Value Set"
Id: apple-health-kit-quantity-type-value-set
Description: "Possible values for AppleHealthKitSample.quantityType"
* include codes from system AppleHealthKitQuantityTypeCodeSystem

CodeSystem: AppleHealthKitQuantityTypeCodeSystem
Title: "Apple HealthKit Quantity Type Code System"
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
Title: "Apple HealthKit Category Type Value Set"
Id: apple-health-kit-category-type-value-set
Description: "A type that identifies samples that contain a value from a small set of possible values."
* include codes from system AppleHealthKitCategoryTypeCodeSystem

CodeSystem: AppleHealthKitCategoryTypeCodeSystem
Title: "Apple HealthKit Category Type Code System"
Id: apple-health-kit-category-type-code-system
Description: "HKCategoryTypeIdentifier - Identifiers for creating category types."

// activity
* #appleStandHour
* #lowCardioFitnessEvent

// reproductive health
* #menstrualFlow
* #intermenstrualBleeding
* #infrequentMenstrualCycles
* #irregularMenstrualCycles
* #persistentIntermenstrualBleeding
* #prolongedMenstrualPeriods
* #cervicalMucusQuality
* #ovulationTestResult
* #sexualActivity
* #contraceptive
* #pregnancy
* #pregnancyTestResult
* #lactation

// hearing
* #environmentalAudioExposureEvent
* #headphoneAudioExposureEvent
* #audioExposureEvent

// vital signs
* #lowHeartRateEvent
* #highHeartRateEvent
* #irregularHeartRhythmEvent

// mobility
* #appleWalkingSteadinessEvent

// symptoms - Abdominal and Gastrointestinal
* #abdominalCramps
* #bloating
* #constipation
* #diarrhea
* #heartburn
* #nausea
* #vomiting

// symptoms - Constitutional
* #appetiteChanges
* #chills
* #dizziness
* #fainting
* #fatigue
* #fever
* #generalizedBodyAche
* #hotFlashes

// symptoms - Heart and Lung
* #chestTightnessOrPain
* #coughing
* #rapidPoundingOrFlutteringHeartbeat
* #shortnessOfBreath
* #skippedHeartbeat
* #wheezing

// symptoms - Musculoskeletal
* #lowerBackPain

// symptoms - Neurological
* #headache
* #memoryLapse
* #moodChanges

// symptoms - Nose and Throat
* #lossOfSmell
* #lossOfTaste
* #runnyNose
* #soreThroat
* #sinusCongestion

// symptoms - Reproduction
* #breastPain
* #pelvicPain
* #vaginalDryness

// symptoms - Skin and Hair
* #acne
* #drySkin
* #hairLoss

// symptoms - Sleep
* #nightSweats
* #sleepChanges

// symptoms - Urinary
* #bladderIncontinence

// mindfulness and sleep
* #sleepAnalysis
* #mindfulSession

// self care
* #toothbrushingEvent
* #handwashingEvent

ValueSet: AppleHealthKitCorrelationTypeValueSet
Title: "Apple HealthKit Correlation Type Value Set"
Id: apple-health-kit-correlation-type-value-set
Description: "Possible values for AppleHealthKitSample.correlationType"
* include codes from system AppleHealthKitCorrelationTypeCodeSystem

CodeSystem: AppleHealthKitCorrelationTypeCodeSystem
Title: "Apple HealthKit Correlation Type Code System"
Id: apple-health-kit-correlation-type-code-system
Description: "Code System required for defining correlationType ValueSet"
* #bloodPressure
* #food


ValueSet: AppleHealthKitWorkoutActivityTypeValueSet
Title: "Apple HealthKit Workout Activity Type Value Set"
Id: apple-health-kit-workout-activity-type-value-set
Description: "Possible values for AppleHealthLitSample.workoutActivityType"
* include codes from system AppleHEalthKitWorkoutActivityTypeCodeSystem

CodeSystem: AppleHEalthKitWorkoutActivityTypeCodeSystem
Title: "Apple HealthKit Workout Activity Type Code System"
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
Title: "Apple HealthKit Workout Event Type Value Set"
Id: apple-health-kit-workout-event-type-value-set
Description: "Possible values for AppleHealthKitWorkoutEvent.type"
* include codes from system AppleHealthKitWorkoutEventTypeCodeSystem

CodeSystem: AppleHealthKitWorkoutEventTypeCodeSystem
Title: "Apple HealthKit Workout Event Type Code System"
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
Title: "Apple HealthKit Charactersitic Type Value Set"
Id: apple-health-kit-characteristic-type-value-set
Description: "Apple HealthKit Charactersitic Type Value Set"
* include codes from system AppleHealthKitCharacteristicTypeCodeSystem

CodeSystem: AppleHealthKitCharacteristicTypeCodeSystem
Title: "Apple HealthKit Characteristic Type Code System"
Id: apple-health-kit-characteristic-type-code-system
Description: "The identifiers that create characteristic type objects."
* #biologicalSex
//* #bloodType
* #dateOfBirth
//* #fitzpatrickSkinType:
//* #wheelchairUse


ValueSet: AppleHealthKitBiologicalSexValueSet
Title: "Apple HealthKit Biological Sex Value Set"
Id: apple-health-kit-biological-sex-value-set
Description: "Apple HealthKit Biological Sex Value Set"
* include codes from system AppleHealthKitBiologicalSexCodeSystem

CodeSystem: AppleHealthKitBiologicalSexCodeSystem
Title: "Apple HealthKit Biological Sex Code System"
Id: apple-health-kit-biological-sex-code-system
Description: "Constants indicating the user’s sex."
* #notSet "A constant indicating that either the user's biological sex characteristic type is not set, or the user has not granted your app permission to read that characteristic type."
* #female "A constant indicating that the user is female."
* #male "A constant indicating that the user is male."
* #other "A constant indicating that the user is otherwise not categorized as either male or female."
