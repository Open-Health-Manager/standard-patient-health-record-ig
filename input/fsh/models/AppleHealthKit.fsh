Logical:        AppleHealthKitObject
Title:          "Apple HealthKit Object Logical Model"
Description:    "Data elements for the Apple HealthKit HKObject."

* ^abstract = true
* ^status = #draft

* uuid 1..1 string "UUID" "The universally unique identifier (UUID) for this HealthKit object."

Logical:        AppleHealthKitSample
Id:             apple-healthkit-sample
Parent:         AppleHealthKitObject
Title:          "Apple HealthKit Sample Logical Model"
Description:    "Data elements for the Apple HealthKit HKSample."

* ^abstract = true
* ^status = #draft

* startDate 0..1 date "The sample's start date." "The sample's start date."