
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
* metadata 0..1 BackboneElement "The metadata for this HealthKit object."
* device 0..1 BackboneElement "The device that generated the data for this object."
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
* startDate 0..1 dateTime "The sample's start date." "The sample's start date."
* endDate 0..1 dateTime "The sample's end date." "The sample's end date."
* hasUndeterminedDuration 0..1 boolean "Indicates whether the sample has an unknown duration." "Indicates whether the sample has an unknown duration."
* sampleType 1..1 code "The sample type." "The sample type."
* sampleType from AppleHealthKitSampleTypeValueSet (extensible)


Logical:        AppleHealthKitCategorySample
Id:             apple-health-kit-category-sample
Title:          "Apple HealthKit Category Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKCategorySample."
Parent:         AppleHealthKitSample
* ^status = #draft
* categoryType 1..1 code "The sample's category type." "The HKCategorySampleType."
* categoryType from AppleHealthKitCategoryTypeValueSet (extensible)
* value 1..1 integer "The sample's category value." "The HKCategorySample.value value."


Logical:        AppleHealthKitQuantitySample
Id:             apple-health-kit-quantity-sample
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
Id:             apple-health-kit-correlation-sample
Title:          "Apple HealthKit Correlation Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKCorrelation."
Parent:         AppleHealthKitSample
* ^status = #draft
* correlationType 1..1 code "The sample's correlation type." "HKCorrelation.correlationType from corresponding ValueSet"
* correlationType from AppleHealthKitCorrelationTypeValueSet (extensible)
* objects 1..* Reference(AppleHealthKitSample) "The set of sample objects that make up the correlation." "HKCorrelation.objects (Set<HKSample>)"


Logical:        AppleHealthKitWorkoutSample
Id:             apple-health-kit-workout-sample
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


Logical:        AppleHealthKitCharacteristic
Id:             apple-health-kit-characteristic
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

// activity
* #appleStandHour "HKCategoryValueAppleStandHour"
* #lowCardioFitnessEvent "Event indicating user's VO2 max values consistently fall below a particular aerobic fitness threshold"

// reproductive health
* #menstrualFlow "HKCategoryValueMenstrualFlow"
* #intermenstrualBleeding "(Spotting) HKCategoryValue"
* #infrequentMenstrualCycles
* #irregularMenstrualCycles
* #persistentIntermenstrualBleeding
* #prolongedMenstrualPeriods
* #cervicalMucusQuality "HKCategoryValueCervicalMucusQuality"
* #ovulationTestResult "HKCategoryValueOvulationTestResult"
* #sexualActivity "HKCategoryValue"
* #contraceptive
* #pregnancy
* #pregnancyTestResult
* #lactation

// hearing
* #environmentalAudioExposureEvent "A category sample type that records exposure to potentially amaging sounds from the environment."
* #headphoneAudioExposureEvent "A category sample type that records exposure to potentially amaging sounds from headphones."
* #audioExposureEvent "A category sample type for audio exposure events."

// vital signs
* #lowHeartRateEvent
* #highHeartRateEvent
* #irregularHeartRhythmEvent

// mobility
* #appleWalkingSteadinessEvent

// symptoms - Abdominal and Gastrointestinal
* #abdominalCramps "A category type that records abdominal cramps as a symptom."
* #bloating "A category type that records bloating as a symptom."
* #constipation "A category type that records constipation as a symptom."
* #diarrhea "A category type that records diarrhea as a symptom."
* #heartburn "A category type that records heartburn as a symptom."
* #nausea "A category type that records nausea as a symptom."
* #vomiting "A category type that records vomiting as a symptom."

// symptoms - Constitutional
* #appetiteChanges "A category type that records changes in appetite as a symptom."
* #chills "A category type that records chills as a symptom."
* #dizziness "A category type that records dizziness as a symptom."
* #fainting "A category type that records fainting as a symptom."
* #fatigue "A category type that records fatigue as a symptom."
* #fever "A category type that records fever as a symptom."
* #generalizedBodyAche "A category type that records body ache as a symptom."
* #hotFlashes "A category type that records hot flashes as a symptom."

// symptoms - Heart and Lung
* #chestTightnessOrPain "A category type that records chest tightness or pain as a symptom."
* #coughing "A category type that records coughing as a symptom."
* #rapidPoundingOrFlutteringHeartbeat "A category type that records a rapid, pounding, or fluttering heartbeat as a symptom."
* #shortnessOfBreath "A category type that records shortness of breath as a symptom."
* #skippedHeartbeat "A category type that records skipped heartbeat as a symptom."
* #wheezing "A category type that records wheezing as a symptom."

// symptoms - Musculoskeletal
* #lowerBackPain "A category type that records lower back pain as a symptom."

// symptoms - Neurological
* #headache "A category type that records headache as a symptom."
* #memoryLapse "A category type that records memory lapse as a symptom."
* #moodChanges "A category type that records mood changes as a symptom."

// symptoms - Nose and Throat
* #lossOfSmell "A category type that records loss of smell as a symptom."
* #lossOfTaste "A category type that records loss of taste as a symptom."
* #runnyNose "A category type that records runny nose as a symptom."
* #soreThroat "A category type that records sore throat as a symptom."
* #sinusCongestion "A category type that records sinus congestion as a symptom."

// symptoms - Reproduction
* #breastPain "A category type that records breast pain as a symptom."
* #pelvicPain "A category type that records pelvic pain as a symptom."
* #vaginalDryness "A category type that records vaginal dryness as a symptom."

// symptoms - Skin and Hair
* #acne "A category type that records acne as a symptom."
* #drySkin "A category type that records dry skin as a symptom."
* #hairLoss "A category type that records hair loss as a symptom."

// symptoms - Sleep
* #nightSweats "A category type that records night sweats as a symptom. "
* #sleepChanges "A category type that records sleep changes as a symptom."

// symptoms - Urinary
* #bladderIncontinence "A category type that records bladder incontinence as a symptom."

// mindfulness and sleep
* #sleepAnalysis
* #mindfulSession "HKCategoryValue"

// self care
* #toothbrushingEvent
* #handwashingEvent

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
