
Please find below documentation on implementing FHIR software in various operating systems.

### MAC OS
- [How can I make OS X recognize new file extensions?](https://apple.stackexchange.com/questions/47319/how-can-i-make-os-x-recognize-new-file-extensions)  
- [Create new extension association and icon in SnowLeopard](https://superuser.com/questions/246476/create-new-extension-association-and-icon-in-snowleopard/246493#246493)  

#### UTIs and Launch Services  

> Where is the list of “known” file types stored? 

The official term for "file types" is [Uniform Type Identifiers (UTIs)](https://developer.apple.com/library/archive/documentation/FileManagement/Conceptual/understanding_utis/understand_utis_conc/understand_utis_conc.html), and the database of UTIs is maintained by [Launch Services](https://developer.apple.com/library/archive/documentation/Carbon/Conceptual/LaunchServicesConcepts/LSCConcepts/LSCConcepts.html).  Using the Terminal, you can view the contents of the Launch Services database using the lsregister tool, which is stored at:

```bash
# the lsregister utility
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister 

# the raw file extention table
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -dump
```

#### Declaring the PHR Uniform Type Identifier

> Is there a way to make OS X recognize new file types? 

This Apple article, ["Declaring New Uniform Type Identifiers"](https://developer.apple.com/library/archive/documentation/FileManagement/Conceptual/understanding_utis/understand_utis_declare/understand_utis_declare.html), provides useful information on how to do this. Here's the complete process:

##### 1. Create a dummy application
Create a dummy application to register with Launch Services:

- Open [AppleScript Editor](https://en.wikipedia.org/wiki/AppleScript_Editor) (located in OS X's Utilities folder).  
- Save a new empty script somewhere (eg: on your Desktop), setting its File Format to Application.  

##### 2. Open its Info.plist file
- Locate your new dummy application in the Finder.  
- Right-click on it, and select Show Package Contents from the popup menu.  
- Open its Contents folder.  
- Open the Info.plist file in a text editor (eg: TextEdit).  

##### 3. Add your new UTI
There's a choice of two keys:

- `UTExportedTypeDeclarations` – for your own custom filename extensions.  
- `UTImportedTypeDeclarations` – for filename extensions which already exist but aren't recognised by OS X.  

Choose the key which is most appropriate for your needs.

Then in the _Info.plist_ file, before the final two lines (</dict></plist>), add this code:

```xml
<key>UTImportedTypeDeclarations</key>
<array>
    <dict>
        <key>UTTypeIdentifier</key>
        <string>org.hl7.fhir.phr</string>
        <key>UTTypeTagSpecification</key>
        <dict>
            <key>public.filename-extension</key>
            <array>
                <string>phr</string>
            </array>
        </dict>
        <key>UTTypeConformsTo</key>
        <array>
            <string>public.data</string>
        </array>
        <key>UTTypeDescription</key>
        <string>Personal Health Record</string>
        <key>UTTypeIconFile</key>
        <string>FhirPHR.icns</string>
        <key>UTTypeReferenceURL</key>
        <string>https://build.fhir.org/ig/HL7/personal-health-record-format-ig/</string>
    </dict>
</array>
```


##### 4. Register your new UTI with Launch Services

Run this command in the Terminal:

```
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister <PATH_TO_APP>
```

replacing <PATH_TO_APP> with the path to your dummy application, eg:

```
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister ~/Desktop/SampleFhirApp.app 
```

If you now create a file with your new filename extension, and then select it in the Finder and hit Enter, the Finder should automatically select only the filename part, not the extension.

If you view the contents of the Launch Services database:

```
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -dump
```

you should find your new UTI listed:

```
type    id:            50364
        bindableKey:   12608
        generation:    1
        uti:           com.idsoftware.wad
        description:   Doom WAD file
        flags:         imported  active  apple-internal  untrusted
        icon:          DoomWAD.icns
        conforms to:   public.data
        tags:          .wad
```

If you later want to unregister your new UTI, pass the -u option to lsregister:

```
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -u ~/Desktop/SampleFhirApp.app 
```

### iOS
- [HealthKit on FHIR](https://github.com/StanfordBDHG/HealthKitOnFHIR)



### Flutter  
- [Flutter documentation](https://docs.flutter.dev/)
- [Flutter for Android](https://docs.flutter.dev/get-started/flutter-for/android-devs)  
- [Supporting the new Android plugins APIs](https://docs.flutter.dev/development/platform-integration/android/plugin-api-migration)
- [flutter_secure_storage](https://flutterappworld.com/a-flutter-plugin-to-store-data-in-secure-storage/)
- [android_storage](https://pub.dev/packages/android_storage)
- [icloud_storage](https://pub.dev/packages/icloud_storage)

### ECMAScript (Node.js, Javascript)

Library           | Vendor        | Description 
----------------- | ------------- | -------------
[fhirclient](https://www.npmjs.com/package/fhirclient) | smarthealthit | The official SMART on FHIR javascript client  
[fhir-kit-client](https://www.npmjs.com/package/fhir-kit-client) | Vermonster | Modern FHIR client with ES6, SMART, cross-version support, etc   
[fhir-starter](https://www.npmjs.com/package/fhir-starter) | symptomatic  | FhirUtilities, FhirDehydrator, and template FHIR UI components.
[fhir-react](https://www.npmjs.com/package/fhir-react) | 1uphealth | Multi use react component
[json-schema-resource-validation](https://www.npmjs.com/package/json-schema-resource-validation) | VictorGus | FHIR validator for R4  
[sof-scope-checker](https://www.npmjs.com/package/@asymmetrik/sof-scope-checker) | Asymmetrik | Utility to check SMART on FHIR scope access  
[fhirpath](https://www.npmjs.com/package/fhirpath) | HL7 | The official FHIRPath parser  
[is-fhir-date](https://www.npmjs.com/package/is-fhir-date) | HenrikJoreteg | Checks if a date is FHIR compliant
[ts-fhir-types](https://www.npmjs.com/package/@ahryman40k/ts-fhir-types) | Ahryman40k | Typescript definitions   
[fhir-list-addresses](https://www.npmjs.com/package/fhir-list-addresses) | careMESH | Utility function for extracting addresses  
[hl7v2](https://www.npmjs.com/package/hl7v2) | panates | HL7 v2 parser, serializer, validator and TCP client/server.
[redox-hl7-v2](https://www.npmjs.com/package/@redoxengine/redox-hl7-v2) | Redox | This is Redox's battle-tested in-house HL7v2 parser/generator.  
