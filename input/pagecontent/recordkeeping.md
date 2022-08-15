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

#### Security  

Files containing patient health information should be signed with a password, and compressed with a utility such as Zip or gzip if preferred.  

If supported on your operating system, a preferred method of encrypting and decrypting files is with PGP/GPG utilities, which support asymmetric cryptography algorithms such as X.509.  

Therefore, when exporting data from the Personal Health Record:

Write the contents of a collection into either a FHIR Bundle with a .json extension, or a NDJSON file with a .ndjson extension.  After writing the contents to the filesystem, compress the data if desired.  Then convert the relevant X509 certificate into GPG format.  Once done, encrypt the file.

Using GPG-Zip to password protect a NDJSON file using an X509 certificate is the level of security people should be striving for when developing SPHR enabled apps.  

#### Media Files & Raw Documents

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.

#### Bulk Data Exports

Should use [NDJSON format](http://ndjson.org/) and save to a password encrypted zip file.  Please see [Bulk Data Access IG](https://hl7.org/fhir/uv/bulkdata/) more additional design guidance.

#### Conformance Testing

For conformance testing with this IG, the primary success critieria is that systems MUST have the ability to import/export the `.sphr` filetype. This entails storing FHIR records in a new-line delimited file (including a cover composition resource, a document manifest, and provenance records as needed), compressing the file with DEFLATE algorithm (as needed), and then signing with an X.509 security certificate (i.e. DNS certificate). 

#### API Endpoints

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


#### Implementation Guidance  

![./SPHR-ImplementationGuidance.png](./SPHR-ImplementationGuidance.png){:width="100%"}  

#### References  

[Convert a X.509 (PKI) certificate to GPG](https://www.pengdows.com/2020/06/27/convert-a-x-509-pki-certificate-to-gpg/)
[GPG Encryption/Decryption in Node.js](https://www.npmjs.com/package/gpg)






