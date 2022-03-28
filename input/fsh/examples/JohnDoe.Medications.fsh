Instance: Medication-Metformin
InstanceOf: Bundle
Description: "John Doe - Bundle - Medication Reconciliation Bundle"
Usage: #example
* type = #collection
* entry.fullUrl = "/Medication/68382-185"
* entry.resource = Medication-1

Instance: Medication-1
InstanceOf: Medication
Description: "John Doe - Medication - Metformin"
Usage: #inline
* code = http://hl7.org/fhir/sid/ndc#68382-185 "Glipizide and Metformin Hydrochloride"
* manufacturer.display = "Zydus Pharmaceuticals (USA) Inc."
// * product.form.coding.system = "http://hl7.org/fhir/sid/ndc"
// * product.form.coding.code = ""
// * product.form.coding.display = "TABLET, FILM COATED"
// * product.ingredient.item.display = "GLIPIZIDE; METFORMIN HYDROCHLORIDE"
// * package.container.text = "bottle"
// * package.content.amount.value = "5 mg/1, 500 mg/1"
// * package.content.amount.unit = "tablet"