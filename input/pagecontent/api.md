

Systems MAY wish to implement standard APIs for generating a `.phr` or `.sphr` file.  Standard API queries that have been used in other systems are listed below.

```bash
# export everything from a single-user system as a FHIR Bundle
GET /Bundle/$phr-export

# export everything from a single-user system as an NDJSON Bulkd Data file
GET /Bundle/$phr-export?outputFormat=ndjson

# export everything from a single-user system as a PHR file
GET /Bundle/$phr-export?outputFormat=phr

# export everything from a single-user system as a SPHR file with security
GET /Bundle/$phr-export?outputFormat=sphr

# export everything from a specific date to current from a single-user system
GET /Bundle/$phr-export?start=2010

# export everything in a specific date range from a single-user system
GET /Bundle/$phr-export?start=2010&end=2020-06

# export everything for a specific patient in a multi-user system
GET /Bundle/$phr-export?patient=Patient/12345

# post a record to another system to be imported (NDJSON format)
POST /Bundle/$import
```

Systems MUST post the API endpoints they use in the system's CapabilityStatement.  
