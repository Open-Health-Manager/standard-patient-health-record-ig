A complete longitudinal patient health record may feasibly span 100 years or more.  This presents numerous challenges, espcially considering that the earliest EMR systems were only first written in the early 1970s.  Statue of limitations require that healthcare practitioners keep pediatric records until an 18th birthday, but even an 18 year storage requirement by providers falls well short of a 76yr life expectancy.  Anybody over 30 years of age is therefore almost guaranteed to have some records on hardcopy paper, compact disk, USB drive, floppy drive, or other storage medium.  

As such, this implementation guide concerns itself with this specific data storage challenge that is unique to patients, and does not immediately assume availability of B2B over-the-wire data interfaces.  This guide differs from guides produced by other working groups, in that it is less concerned with over-the-wire workflows, and more concerned with the notion of a patient asking for a copy of their complete medical history, and how that would work with compact disks, digital video disks, thumbdrive, and other storage devices for bulk data; and how that would be imported into the another system.  

> Note: The only portion of this Implementation Guide that is required for conformance testing is the ability to import/export the .sphr filetype.  All other parts of this implementation guide are optional, and are provided to assist the implementor in modeling patient histories in FHIR format. 

### FHIR Storage 

A useful way to think of data storage is in terms of slow-motion data transfer.  The earliest electronic data storage devices were actually cathode ray tubes, the same devices used in computer monitors for decades.  As such, there isn't as much difference as one may think between the devices that store bits and the devices that transmit data to a person's eyes or transmits data over the wire.  These things are actually quite similar, if one considers the storage device as similar to an actor on the wire that can send or receive data.  In this sense, storage is just like any other data transfer - but with the ability to press a `pause` button indefinately mid-transfer.  

As such, this implementation guide recommends that implementors treat storage in much the same way as over-the-wire data transfers.  

- Systems MUST use FHIR data schemas to claim to be compliant with this IG.  
- Systems SHOULD use the same MIME types when possible.
- Systems MAY treat directories as Bundle entries or NDJSON lines by default.

![./SphrFileType.jpg](./SphrFileType.jpg){:width="40%"}  

#### File Extensions

- Files contain patient health information using Fast Healthcare Interoperability Resources SHOULD be saved with a `.sphr` extension.  Such files may include multiple FHIR resources, as is typical in a Bundle resource.
- Files that contain only a single record (or single type of record) MAY be saved with a file extension of the resource type.  For example:  `.Observation.fhir` 

#### Meta Data

The `.sphr ` container should contain two meta data files.  One of these files is a Composition record, which acts like the 'cover page' of the bundle.  This record records ownership, versioning, and various other data elements necessary for parsing the record.  The second file is a DocumentManifest file, which acts as a manifest and table of contents of the container.


#### Compression  

Files containing patient health information MAY be zipped, with either a `.fhir.zip` or `.fhir.gz` extension. When using compression, systems SHOULD use the [DEFLATE](https://en.wikipedia.org/wiki/Deflate) algorithm.  DEFLATE is supported by both ZIP and GZIP compression utilities.  

#### Media Files & Raw Documents

TBD

#### Bulk Data Exports

Should use [NDJSON format](http://ndjson.org/) and save to a password encrypted zip file.  Please see [Bulk Data Access IG](https://hl7.org/fhir/uv/bulkdata/) more additional design guidance.

### Data provenance and security

Here we describe the asymmetric cryptography algorithms to support both signing and encryption of PHR files.

#### Signing
Signing allows the source system of the PHR file to attest to the contents of that file and the recipient to verify authenticity and identity of the data source. If the full file is used as the message digest of a digital signature, it can allow the recipient to also verify data integrity and provides mechanism for non-repudiation.

##### Attestation
The source system MAY provide a FHIR Signature on the PhrBundle resource or individual PhrProvenance resources. The signature SHALL be a detached signature on the canonical form of the resource in compliance with the [FHIR Signature](http://hl7.org/fhir/R4/datatypes.html#Signature) guidance.

##### Data integrity
The source system MAY sign a hash of the full and optionally compressed or encrypted PHR file and provide a JWS as a separate file to the recipient to allow the recipient to both identify the source of data and verify data integrity. The source system should use the SHA-256 hash algorithm to create a message digest of the SPHR file for signing. As with FHIR Signatures, the JWS should be a detached signature without a payload. 

The recipient MAY verify the integrity of the SPHR file by verifying the signature of the provided JWS against the SHA-256 hash of the SPHR file. Note that there may be significant performance limitations in creating the hash based on size of the file.

##### Trust and key distribution
While a verifiable signature may provide some context as to the identity of the data source, it does not ensure that that data source is a reliable actor. The recipient who wishes to verify a digital signature MAY also verify that the signer is a trusted entity as defined by participation in a mutual trust network. The recipient SHOULD assure that any trust network in which they choose to participate enforces policies and provides adequate governance to prevent unreliable data sources from entering the network.

Retrieving the source system's public keys may depend on the key formats and distribution methods inherent to the trust networks in which a recipient chooses to participate.

In an X.509 based PKI, the recipient MAY receive the source system's public key from a trusted certificate authority. If the certificate is distributed out of band, the recipient MAY verify that the root of the chain of trust is a trusted certificate authority and that the certificate is not revoked. 

#### Encryption
Files containing patient health information should be encrypted to protect the data in case of unauthorized interception.

##### Public key encryption
If the PHR file is being generated for a known intended recipient, then the file MAY be encrypted using the discoverable public key of that recipient. Key distribution for the recipients public key would follow the same guidance as in "Trust and key distribution". Encryption SHOULD use the ES256 algorithm. The intended recipient would use their equivalent private key and the same algorithm to decrypt the file.

##### Passphrase-based encryption
If the intended recipient is not known at time of file generation, the source system SHOULD use a unique secret key or passphrase to encrypt the file. This passphrase can be shared out of band by the patient with any recipient of their choosing.

Public key encryption and secret key may be combined in a PGP solution.

A SMART Health Links based solution will distribute the encryption key within a shareable QR which the patient can display to recipients of an SPHR file for scanning. The recipient would decrypt the linked file using the A256GCM algorithm.

### API Endpoints

Systems MAY wish to implement standard APIs for generating a `.phr` or `.sphr` file.  Standard API queries that have been used in other systems are listed below.

```bash
# export everything from a single-user system as a FHIR Bundle
GET /Bundle/$export

# export everything from a single-user system as an NDJSON Bulkd Data file
GET /Bundle/$export?outputFormat=ndjson

# export everything from a single-user system as a PHR file
GET /Bundle/$export?outputFormat=phr

# export everything from a single-user system as a SPHR file with security
GET /Bundle/$export?outputFormat=sphr

# export everything from a specific date to current from a single-user system
GET /Bundle/$export?start=2010

# export everything in a specific date range from a single-user system
GET /Bundle/$export?start=2010&end=2020-06

# export everything for a specific patient in a multi-user system
GET /Bundle/$export?patient=Patient/12345

# post a record to another system to be imported (NDJSON format)
POST /Bundle/$import
```

Systems MUST post the API endpoints they use in the system's CapabilityStatement.  

### Conformance Testing

For conformance testing with this IG, the primary success critieria is that systems MUST have the ability to import/export the `.sphr` filetype. This entails storing FHIR records in a new-line delimited file (including a cover composition resource, a document manifest, and provenance records as needed), compressing the file with DEFLATE algorithm (as needed), and then signing with an X.509 security certificate. 

#### Creating a Standard Personal Health Record    

The process flows below is based on encrypting files with PGP/GPG utilities, which support asymmetric cryptography algorithms and X.509 certificates.

- Gather the data you want to include.
- Convert or encode the data as FHIR resources.
- Ensure there is at least 1 Patient resource.
- Add US realm extensions to resources to comply with US Core (if needed).
- If less than 16MB, add resources to a Bundle and save as .json
- If over 16MB, use Bulk Data format and save as nd-json.
- Add international patient summary (if needed).
- Add problem oriented health record components (if needed).
- Add provenance resources and optionally sign then with a FHIR Signature.
- Add media and supporting documents.
- Optionally add a FHIR Signature to a PhrBundle instance.
- Rename the .ndjson file with .phr extension.
- Compress the file (or directory) with zip and DEFLATE algorithms.
- Encrypt the file with a passphrase or the public key in the intended recipient's X.509 certificate.
- Rename the .phr file with .sphr extension.
- Optionally hash the file and produce a JWS signature using your discoverable X.509 certificate.

#### Importing a Standard Personal Health Record 

- Configure operating sytem to open the .sphr with the application of your choice.
- If .sphr not registered, rename to .zip
- Optionally validate the associated JWS signature using the source system's X.509 certificate.
- Decompress the file (or directory) with zip and DEFLATE algorithms.
- Decrypt using a provided passphrase or the private key associated with your discoverable X.509 certificate.
- If a directory, scan for media and supporting documents such as PDF.
- Scan the contents of the directory for a .phr or .ndjson file.
- Scan the .phr file for the Composition resource.
- Scan the .phr file for the Document Manifest resource.
- Scan the .phr file for the primary Patient resource.
- Scan the .phr file for provenance resources.
- If found, decode each provenance signature and extract payload contents.
- Scan for an international patient summary, and supporting resources.
- Scan for a problems list, and supporting resources.
- Scan the remaining resources, and operate on them as if a PUT or POST message.

### References  

- [Convert a X.509 (PKI) certificate to GPG](https://www.pengdows.com/2020/06/27/convert-a-x-509-pki-certificate-to-gpg/)
- [GPG Encryption/Decryption in Node.js](https://www.npmjs.com/package/gpg)

#### Configuring Operating Systems to Recognize .phr and .sphr Filetypes

- [How to set default apps on Mac](https://www.imore.com/how-set-mac-app-default-when-opening-file)
- [How to properly register a file extension on mac so it will also work by running open from the command line? ](https://apple.stackexchange.com/questions/94954/how-to-properly-register-a-file-extension-on-mac-so-it-will-also-work-by-running)
- [Adding or registering a file type so it can be associated with an application](https://superuser.com/questions/1080453/adding-or-registering-a-file-type-so-it-can-be-associated-with-an-application)
- [Set default app for .file type file](https://answers.microsoft.com/en-us/windows/forum/all/set-default-app-for-file-type-file/c449afd5-2eff-4f3b-8faf-8ce7ced50f30)
- [File extension associations and default apps in Windows 10, how to handle this using commandline](https://social.technet.microsoft.com/Forums/en-US/9f4e8e66-b1f4-47a4-931f-862fb8ac3ab3/file-extension-associations-and-default-apps-in-windows-10-how-to-handle-this-using-commandline)







