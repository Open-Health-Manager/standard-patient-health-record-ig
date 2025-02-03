## Patient Health Records

[Current Build (Public)](https://build.fhir.org/ig/HL7/personal-health-record-format-ig/)  
[Preview Branches](https://build.fhir.org/ig/HL7/personal-health-record-format-ig/branches/)  
[IG Proposal](https://confluence.hl7.org/display/FHIR/Personal+Health+Records)  
[Project Confluence Page](https://confluence.hl7.org/display/PE/Standard+Personal+Health+Record+FHIR+IG)  
[Project Scope Statement](https://jira.hl7.org/browse/PSS-2125) 

Project Insight Number:  1804

### Prerequisites 

```bash 
# install the sushi tool
git clone https://github.com/FHIR/sushi
npm install -g fsh-sushi
sushi --help
```


#### Getting the Documentation    

```shell
# get a copy of the source code
git clone https://github.com/HL7/personal-health-record-format-ig
cd fhir-directory-attestation
```



### Compiling Documentation  

```bash 
# update the publisher
./_updatePublisher.sh

# then compile the document
./_genonce.sh

# open the documentation (assuming Mac + Chrome)
cd output
open -a "Google Chrome" index.html
```


#### Contributing  

```shell
# check which branch you are on
git branch

# create a new branch
git checkout -b new-branch

# commit changes
git commit -a -m 'descriptive message'
git push origin new-branch
```

