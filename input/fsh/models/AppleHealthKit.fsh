Logical:        AppleHealthKitObject
Title:          "Apple HealthKit Object Logical Model"
Description:    "Data elements for the Apple HealthKit HKObject."

* ^abstract = true
* ^status = #draft

* uuid 1..1 string "UUID" "The universally unique identifier (UUID) for this HealthKit object."
* device 0..1 link(Device) "Device" "The device that generated the data for this HealthKit object."
* sourceRevision 1..1 "Source Version" "The version of the app or device that generated the data for this HealthKit object."

## TODO: consider HK ObjectType

Logical:        AppleHealthKitSample
Id:             apple-healthkit-sample
Parent:         AppleHealthKitObject
Title:          "Apple HealthKit Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKSample."

* ^abstract = true
* ^status = #draft

* startDate 0..1 date "The sample's start date." "The sample's start date."
* endDate 0..1 date "The sample's end date." "The sample's end date."

## from HK Sample
# var startDate: Date
# The sample start date.
# var endDate: Date
# The sample end date.
# var hasUndeterminedDuration: Bool
# Indicates whether the sample has an unknown duration.
# var sampleType: HKSampleType
# The sample type.
# Specifying Sort Identifiers
# let HKSampleSortIdentifierStartDate: String
# A constant for sorting samples based on their start date.
# let HKSampleSortIdentifierEndDate: String
# A constant for sorting samples based on their end date.
# Specifying Predicate Key Paths
# let HKPredicateKeyPathStartDate: String
# The key path for accessing the sample start date.
# let HKPredicateKeyPathEndDate: String
# The key path for accessing the sample end date.

## from HK SampleType
# var isMinimumDurationRestricted: Bool
# A Boolean value that indicates whether samples of this type have a minimum time interval between the start and end dates.
# var minimumAllowedDuration: TimeInterval
# The minimum duration if the sample type has a restricted duration.
# var isMaximumDurationRestricted: Bool
# A Boolean value that indicates whether samples of this type have a maximum time interval between the start and end dates.
# var maximumAllowedDuration: TimeInterval
# The maximum duration if the sample type has a restricted duration.
# Checking on Recalibrating Estimates
# var allowsRecalibrationForEstimates: Bool
# A Boolean value that indicates whether HealthKit supports recalibrating the prediction algorithm used to produce estimates for this sample type.
