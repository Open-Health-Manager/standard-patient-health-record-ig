Instance: undefined
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[0].fullUrl = "/Composition/qE2cKcaPMtqGata3p"
* entry[=].resource = Composition1
* entry[+].fullUrl = "/Goal/7afmbB8HYhcNt2R4e"
* entry[=].resource = Goal2
* entry[+].fullUrl = "/Goal/cFiofX3mEeq9sCDpq"
* entry[=].resource = cFiofX3mEeq9sCDpq
* entry[+].fullUrl = "/Goal/4LzDoMCNzPhw6xncJ"
* entry[=].resource = Goal3
* entry[+].fullUrl = "/Goal/uLYQAaSNcyA353HtH"
* entry[=].resource = uLYQAaSNcyA353HtH
* entry[+].fullUrl = "/Goal/QMp5ew6uTSbu5pQ4C"
* entry[=].resource = QMp5ew6uTSbu5pQ4C
* entry[+].fullUrl = "/Goal/Z8bznDhkG7g9dZ29Y"
* entry[=].resource = Z8bznDhkG7g9dZ29Y
* entry[+].fullUrl = "/Goal/zHDYtrFC5drLRnMEm"
* entry[=].resource = zHDYtrFC5drLRnMEm

Instance: Composition1
InstanceOf: Composition
Description: "John Doe - Composition - Continuity of Care Document"
Usage: #inline
* status = #preliminary
* subject = Reference(gkneWsGuDW5vE8Ryi) "Allison Camron"
* date = "2022-01-01"
* author = Reference(gkneWsGuDW5vE8Ryi) "Allison Camron"
* title = "Continuity of Care Document"
* subject.display = "John Doe"
* subject.reference = "Patient/JohnDoe"
* confidentiality = #0
* type.coding[0].system = "http://loinc.org"
* type.coding[0].display = "Physician Discharge summary"
* type.coding[0].code = #11490-0
// * section[0].reference = "/Goal/7afmbB8HYhcNt2R4e"
// * section[+].reference = "/Goal/cFiofX3mEeq9sCDpq"
// * section[+].reference = "/Goal/4LzDoMCNzPhw6xncJ"
// * section[+].reference = "/Goal/uLYQAaSNcyA353HtH"
// * section[+].reference = "/Goal/QMp5ew6uTSbu5pQ4C"
// * section[+].reference = "/Goal/Z8bznDhkG7g9dZ29Y"
// * section[+].reference = "/Goal/zHDYtrFC5drLRnMEm"

Instance: Goal2
InstanceOf: Goal
Description: "John Doe - Goal - Blood glucose control"
Usage: #inline
* description.text = "Achieve blood glucose control – aiming at fasting blood glucose level below 108 mg/dl; HbA1c below 7%"
* priority.text = "medium"
* id = "7afmbB8HYhcNt2R4e"
* subject.display = "John Doe"
* subject.reference = "Patient/JohnDoe"
* lifecycleStatus = #active

Instance: cFiofX3mEeq9sCDpq
InstanceOf: Goal
Description: "John Doe - Goal - Fasting glucose control"
Usage: #inline
* description.text = "Fasting blood glucose level below 108 mg/dl"
* priority.text = "medium"
* subject.display = "John Doe"
* subject.reference = "Patient/JohnDoe"
* lifecycleStatus = #active

Instance: Goal3
InstanceOf: Goal
Description: "John Doe - Goal - Diabetic diet"
Usage: #inline
* description.text = "Conformance to optimized diabetic diet"
* priority.text = "medium"
* id = "4LzDoMCNzPhw6xncJ"
* subject.display = "John Doe"
* subject.reference = "Patient/JohnDoe"
* lifecycleStatus = #active

Instance: uLYQAaSNcyA353HtH
InstanceOf: Goal
Description: "John Doe - Goal - Body weight"
Usage: #inline
* description.text = "Achieve 0.5% body weight reduction (on current weight of 204 lb) per week to 160-175lb (BMI 24-25))"
* priority.text = "medium"
* subject.display = "John Doe"
* subject.reference = "Patient/JohnDoe"
* lifecycleStatus = #active

Instance: QMp5ew6uTSbu5pQ4C
InstanceOf: Goal
Description: "John Doe - Goal - Foot health"
Usage: #inline
* description.text = "Improve and maintenance of optimal foot health; Prevention of diabetic foot ulcer, gangrene"
* priority.text = "medium"
* subject.display = "John Doe"
* subject.reference = "Patient/JohnDoe"
* lifecycleStatus = #active

Instance: Z8bznDhkG7g9dZ29Y
InstanceOf: Goal
Description: "John Doe - Goal - Blood pressure control"
Usage: #inline
* description.text = "Maintain blood pressure control with blood pressure readings below 140/90 mm Hg"
* priority.text = "medium"
* subject.display = "John Doe"
* subject.reference = "Patient/JohnDoe"
* lifecycleStatus = #active

Instance: zHDYtrFC5drLRnMEm
InstanceOf: Goal
Description: "John Doe - Goal - Diabetic self-care"
Usage: #inline
* description.text = "Address patient knowledge deficit on diabetic self-care."  
* priority.text = "medium"
* subject.display = "John Doe"
* subject.reference = "Patient/JohnDoe"
* lifecycleStatus = #active