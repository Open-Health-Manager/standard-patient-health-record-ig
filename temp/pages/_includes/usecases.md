When designing a personal health record, be careful about the assumptions made about how laptop computers and smartphones are used.  Think in terms of human behaviors and haptics and how patients will want to interact with their system.  These may not always align with what is available via consumer goods.  Classic examples are deaf and blind users, who may need screen readers or voice dictation systems.  Other examples might include patients confined to bed or wheelchairs, or with limited cognitive function.  


### Smart Materials & Haptics

If you've not seen the Day of Glass videos, take a moment to look through the vision road map for Corning Inc, published in 2011.  The field of material science and smart glass has long been telling us that they have the capability to embed smart interfaces in any number of architectural structures and appliances.  Take this vision seriously, and let it inform how a health record may be designed.  

[Corning Day Made of Glass](https://www.youtube.com/watch?v=6Cf7IL_eZ38)      

With an understanding that there isn't necessarily a 'here' and 'there' as in the traditional server/client EMR model.  Rather, there is 'here', where the patient is with their smart phone.  And the surrounding environment comes to life with the help of digital health assistants and software agents.

### Bedside Computing
![./Design-DayMadeOfGlass-BedsideComputing.png](./Design-DayMadeOfGlass-BedsideComputing.png){:width="100%"}
> Architectural display glass in the bedroom, acting as alarm clock and digital software assistant.   Day Made of Glass.  Copyright Corning.

Patients will often wish to access their personal health records from the comfort and security of their own bed or bedroom.  Assuming the presence of a mouse or VR headset or other input devices may not be realistic.  However, technologies like Bluetooth can allow software to connect to nearby speakers, microphones, home automation hubs, and voice activated home assistants.  


### Water Closet
![./Design-DayMadeOfGlass-WaterCloset.png](./Design-DayMadeOfGlass-WaterCloset.png){:width="100%"}
> Medical home water closet using architectural glass.   Day Made of Glass.  Copyright Corning.

Healthcare can be wet and messy with bodily fluids, and a significant amount of personal hygiene and healthcare may happen in a water closet or bathroom.  Think about how user interfaces may be integrated into wet rooms, such as bluetooth enabled weight scales or video screens integrated into medical cabinet mirrors.  


### Kitchen & Pantry
![./Design-DayMadeOfGlass-Kitchen.png](./Design-DayMadeOfGlass-Kitchen.png){:width="100%"}
> Nutrition intake tracking in a smart kitchen.  Day Made of Glass.  Copyright Corning.

Modern medicine (and pharmacies) trace their pedigree back to the Worshipful Company of Grocers in England, and patients to this day spend a disproportianate amount of their healthcare efforts in managing dietary needs and restrictions.  Whether it be foods to avoid due to allergies, or diet regimines to manage obesity or autoimmune conditions, or meeting caloric intake needs for sports competitions, much of healthcare is centered around the kitchen and people's eating (and voiding) habits.  Design of PHRs should anticipate continued development of smart refridgerators, food delivery services, and a calorie economy.

### Travel
![./Design-DayMadeOfGlass-PathRouting.png](./Design-DayMadeOfGlass-PathRouting.png){:width="100%"}
> AI assisted path planning.   Day Made of Glass.  Copyright Corning.

Since the Covid19 pandemic, concerns around quarantines and social mobility have been brought to the public conscious through vaccine passports.  While vaccine passports have been around for nearly 100 years, and are commonly used as a baseline criteria for international travel and registration in public schools, many citizens have expressed anxiety over this technology being misused to restrict travel of otherwise healthy individuals.  Design of PHRs should anticipate their use in non-healthcare settings, and how they might be used while traveling or when encountering security and border services.  

### Data Intake/Transfer
![./Design-DayMadeOfGlass-DataImportExport.png](./Design-DayMadeOfGlass-DataImportExport.png){:width="100%"}
> Import/export of a personal smartphone using near field communications and architectural surface glass.  Day Made of Glass.  Copyright Corning.

 Many architects and developers consider making data available 'over the wire' via RESTful interfaces to be sufficient for all of their data transfer needs.  The thinking being that remote data fetch of personal health information (PHI) from an EHR solves the majority of use cases around missing or inaccessible data.  This thinking relies on a number of ableist assumptions, however, such as the patient being awake and cogent (i.e. not unconscious in the emergency room).  Or that the patient is old enough to have a smartphone (i.e. not an infant or toddler).  Or that the patient isn't senile or have other cognitive difficults (i.e. not having a stroke).  As such, it's critically important that PHR designers think about how data is transferred into/out of the PHR, especially in "Break the Glass" scenarios used by Emergency Responders and during Intake Procedures.  Technologies like Bluetooth, NFC tags, QR codes (SMART Cards), and related technologies offer many design opportunities for streamlining the transfer of data at the point of care, without having to go to a computer terminal and search for URLs and juggle usernames and passwords.  

### Proximity Awareness & Near Field Communications
![./Design-DayMadeOfGlass-ProximityDataTransfer.png](./Design-DayMadeOfGlass-ProximityDataTransfer.png){:width="100%"}
> Proximity data transfer using near field communications.   Day Made of Glass.  Copyright Corning.

The holy grail of clinical informatics is 'getting the right patient data to the right people at the right time'.  While not a perfect heuristic, there's a case to be made that healthcare is local, that healthcare data fundamentally exists in a geospatial context, and therefore is subject to the cartography Rule of Proximity that geospatially proximal objects are more related than distant objects.  To this end, there is an argument that modern PHRs should be geospatially aware and have some awareness of proximity detection to other PHRs and clinical systems so that data can be fluidly transferred to other devices.  The rational being that clinicians who are in physical proximity to patients are  likely to be caregivers, and therefore likely to need access to patient data.  

### References  

[Corning Day Made of Glass](https://www.youtube.com/watch?v=6Cf7IL_eZ38)      

