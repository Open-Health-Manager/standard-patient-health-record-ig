Once an encrypted Personal Health Record is generated, that has been cryptographically signed, patients, clinicians, and others may have an interest in correcting, amending, or annotating the record, without breaking the cryptographic signature.  The SPHR standard offers the Annotation functionality for such cases.

## Patient Use cases

### Who holds the health record?

Some patient summary distribution systems are focusing on retaining the document so that 
the patient doesn't keep their own copy, while other systems are focused on getting the 
IPS to the patient directly, either by push or pull. 

If a patient doesn't actually get their health record or patient summary, and instead receive only a token to it such as a QR code or URL, what exactly do they get?

If would be good to have a consistent workflow around IPS handling whether the document 
is held directly by the patient or not.

### Managing the health record

Patients will need software support for managing their patient summaries. The 
software will have concerns around:

* recognising which incoming attachments/documents are PHR files (inclusive of IPS documents)
* showing them to the user correctly (how to describe them in a list)
* Patients might wish to password protect their summary 

### Correcting the health record

Furthermore, consultation with patients brings forward a very clear requirement indeed: 
if we're going to pass the summary on, we need to be able to comment on it, or correct it. 
Most clinical records contain inaccuracies, or information that a patient wishes to 
clarify or extend because the summary is too brief or too clinical. A patient may (should)
hesitate to pass on a patient summary containing information. For this reason, the 
IPS infrastructure needs to make allowance for patient corrections to the summary.

## Provider use cases

On the other hand, not all patient corrections will be correct or appropriate, or even
well-meaning. It is of critical importance for clinical practice to know whether the 
information that a clinician is presented is patient sourced, or from a clinician, and if so, who,
and whether it is reliable. 

It's easy to sign documents such that it's digitally provable that the document has 
not been changed since it was created, but equally, integrating information between 
different information contexts requires transformation of coded values, record
identity, and even language translation, and none of those are compatible with 
digital signatures (it's for this reason that digital signatures are associated 
with *past* information). 

One of the key challenges IPS adoption faces is how the transformation requirements that 
interoperability imposes with the integrity requirements clinicians identity, while allowing
patients to manage information that they believe is wrong or unclear in context.

## Intent

This specification describes a wrapper format for an IPS document that treats
the IPS as a series of versions of the same document, each of which is able to be 
digitally signed, and a mix of human and algorithmic approaches can ensure integrity
from beginning to end.

## Specification 

An PHR annotation is a .zip file that contains the SPHR file, along with a file manifest.json 
that describes the contents of the package. The package may contain more than one 
version of the IPS, along with associated supporting collateral - attachments, 
stylesheets and branding information. In addition the document may be signed or encrypted.

The file manifest.json always contains two properties:

* ```format``` : a fixed string that specifies the version of the wrapper. Current value: ```ips-wrapper/1```
* ```description``` : A short label that describes the content that may be used when describing the document in a user interface. This should not include any patient specific information. A typical value would be "Patient Summary from Good Health Hospital". Note that not all institutions should be named e.g. specialist clinical services such as reproductive or mental health should not be named

The manifest file may contain a combination of three additional properties:

* ```encrypted```: a JSON Web encrypted string that contains the actual IPS, keyed to a user provided pass-phrase. When successfully decrypted, it contains another PHR Annotation.
* ```versions```: A list of JSON objects describing the versions of the IPS contained in the wrapper. Note that all the IPS documents are different versions of the same IPS
* ```attachments```: A list JSON objects describing attachments to the IPS

The mainfest will contain either ```encrypted``` or ```versions```, but not both. The encrypted wrapper may 
contain unencrypted attachments; these are combined with the encrypted attachments.

The PHR annotation SHALL not contain any files not described in the manifest.

### Encrypted String

When encrypted, the content is contained as a JWE encrypted string. 
Encryption is performed using JOSE JWE compact serialization with "alg": "dir" and "enc": "A256GCM", as is done for SHLinks.
The key for decryption is generated from a patient provided passphrase using the following procedure:

* *todo*

### Versions

Each version of the IPS represented in the manifest is a JSON object with the following properties:

* ```source``` (required): a url that references the source of this version of the IPS. The reference may be relative, in which case it is a reference to a file contained in the PHR annotation, or it might an absolute URL that references the location of the IPS in some storage service. The following URL protocols are allowed: https or shlink:. Authentication may be required; if so, it should be conformant with the IPA specification (https) or conform to the Smart Health Links Specification
* ```date``` (required): Epoch seconds at the time at which this version was created
* ```kind``` (required): what kind of version of the IPS this is. Allowed values:
  * ```original```: The originally produced IPS from the source clinical system
  * ```transform```: A post-production algorithm transform of the IPS. (see below for transform details)
  * ```annotation```: The same IPS, but with additional annotations added (usually by a patient, but it doesn't have to be)
* ```agent``` (required): A human readable label for the agency (organization) that produced the document e.g. "Good Health Clinic System",
* ```signature``` (optional): A SHC based verifiable credential, but where the fhirBundle is not provided, it is assumed to be whatever is in ```source```
* ```transform``` (depends): If kind=transform or annotation, required details about the transform. The transform property is a JSON object with two properties:
  * ```source``` (optional) : A url that references the source of this transform. If present, it SHALL be equal to the source value of one of the other versions in the wrapper
  * "action" (required) : An array of the kinds of actions that were taken by the transform. One or more of the following values:
    * ```recode``` - original codes (e.g. clinical codes - problems, medications) were changed to internationally conformant codes
    * ```re-id``` - the resource identities were changed (to align to a secondary data repository)
    * ```translate``` - the language was translated (where possible/appropriate)
    * ```shrink``` - attachments were reduced in size (usually by reducing their resolution)
    * ```annotate``` - An annotation section was added at the top of the document

Annotation: if kind = annotation, then this is a claim that an agent (usually a human, most often the patient) added 
a correction/clarification section at the start of the IPS where the patient (usually), clarifies or corrects information 
found in the rest of the document (see above). Authoring software SHALL not allow the patient to correct information 
found in the other sections, and the document should be identical with regard to other sections (this can be verified 
by removal of the top-most (first) annotation section; the document should be identical, to the point of maintaining 
digital signature)

The default version to display is the most recent, though displaying software should display the kind clearly along 
with the document, and may let users choose other versions.

### Attachments

Each attachment represented in the manifest is a JSON object with the following properties:

* ```source``` (required): A url that references the attachment. The reference may be relative, in which case it is a reference to a file contained in the PHR annotation, or it might an absolute URL that references the location of the attachment in some storage service. The following protocols are allowed: https, http. Authentication SHALL not be required to access the attachment
* ```contentType``` (required): the mime type of the attachment
* ```kind``` (required): the purpose of the attachment. One of the following values:
  * ```icon```: an image of size 32x32 or 64x64 that is recommended to use when displaying this IPS in a list of known IPS documents
  * ```brand```: a FHIR bundle that represents the brand of the source (as defined by smart-app-launch)
  * ```attachment```: a file that is referred to from the narrative or data of the IPS. Typically, an image, video, or pdf
  * ```stylesheet```: A CSS stylesheet that *may* be used when rendering the IPS 
  * ```author-image```: a plain text representation or image of the content that the original author saw and signed (for legal non-repudiation reasons)

when an IPS encryption wrapper contains an attachment, and the unecryption of it contains an attachment with the same name, the encrpyted attachment takes precedence

## Use with PDFs

A valid way to send an IPS is as a PDF (signed or not) that contains a file attachment named 'patient-summary.ips.zip'.
This way, any device that supports PDF (almost all of them) can display the PDF, and the data attachment may be accessed by IPS aware software