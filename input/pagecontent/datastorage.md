A complete longitudinal patient health record may feasibly span 100 years or more.  This presents numerous challenges, espcially considering that the earliest EMR systems were only first written in the early 1970s.  Statue of limitations require that healthcare practitioners keep pediatric records until an 18th birthday, but even an 18 year storage requirement by providers falls well short of a 76yr life expectancy.  Anybody over 30 years of age is therefore almost guaranteed to have some records on hardcopy paper, compact disk, USB drive, floppy drive, or other storage medium.  

### FHIR Storage 

A useful way to think of data storage is in terms of slow-motion data transfer.  The earliest electronic data storage devices were actually cathode ray tubes, the same devices used in computer monitors for decades.  As such, there isn't as much difference as one may think between the devices that store bits and the devices that transmit data to a person's eyes or transmits data over the wire.  These things are actually quite similar, if one considers the storage device as similar to an actor on the wire that can send or receive data.  In this sense, storage is just like any other data transfer - but with the ability to press a `pause` button indefinately mid-transfer.  

As such, this implementation guide recommends that implementors treat storage in much the same way as over-the-wire data transfers.  

- Systems MUST use FHIR data schemas to claim to be compliant with this IG.  
- Systems SHOULD use the same MIME types when possible.
- Systems MAY treat directories as a Bundle by default.

#### File Extensions

- Files contain patient health information using Fast Healthcare Interoperability Resources SHOULD be saved with a `.fhir` extension.  Such files may include multiple FHIR resources, as is typical in a Bundle resource.
- Files that contain only a single record (or single type of record) MAY be saved with a file extension of the resource type.  For example:  `.Observation.fhir` 

#### Compression  

Files contianing patient health information MAY be zipped, with either a `.fhir.zip` or `.fhir.gz` extension. When using compression, systems SHOULD use the [DEFLATE](https://en.wikipedia.org/wiki/Deflate) algorithm.  DEFLATE is supported by both ZIP and GZIP compression utilities.  

#### Security  

Files contianing patient health information SHOULD be signed with a password.

### Database Storage

#### Document Oriented Databases

- MongoDB
- CouchDB
- Azure Cosmos DB
- Document DB

#### Graph Databases

- Neo4J

### Mobile Device Storage

#### Apple Health Records (iOS)
Apple provides a protected storage area for health records on iOS devices.  Implementors SHOULD use Apple Health when developing on iOS devices.

#### CommonHealth (Android OS)
CommonHealth provides a similar protected storage environment for Android devices.  Implementors SHOULD use CommonHealth when developing on Android devices.  

### Database Storage