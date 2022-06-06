<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MolecularSequence
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>MolecularSequence</sch:title>
    <sch:rule context="f:MolecularSequence">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources (inherited)</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/f:id/@value return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label (inherited)</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management (inherited)</sch:assert>
      <sch:assert test="count(f:coordinateSystem[@value=0 and @value=1]) = 1">Only 0 and 1 are valid for coordinateSystem (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.meta</sch:title>
    <sch:rule context="f:MolecularSequence/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.implicitRules</sch:title>
    <sch:rule context="f:MolecularSequence/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.language</sch:title>
    <sch:rule context="f:MolecularSequence/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.text</sch:title>
    <sch:rule context="f:MolecularSequence/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.extension</sch:title>
    <sch:rule context="f:MolecularSequence/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.modifierExtension</sch:title>
    <sch:rule context="f:MolecularSequence/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.identifier</sch:title>
    <sch:rule context="f:MolecularSequence/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.type</sch:title>
    <sch:rule context="f:MolecularSequence/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.coordinateSystem</sch:title>
    <sch:rule context="f:MolecularSequence/f:coordinateSystem">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.patient</sch:title>
    <sch:rule context="f:MolecularSequence/f:patient">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.specimen</sch:title>
    <sch:rule context="f:MolecularSequence/f:specimen">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.device</sch:title>
    <sch:rule context="f:MolecularSequence/f:device">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.performer</sch:title>
    <sch:rule context="f:MolecularSequence/f:performer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quantity</sch:title>
    <sch:rule context="f:MolecularSequence/f:quantity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="(exists(f:chromosome) and exists(f:genomeBuild)) or (not(exists(f:chromosome)) and not(exists(f:genomeBuild)))">GenomeBuild and chromosome must be both contained if either one of them is contained (inherited)</sch:assert>
      <sch:assert test="count(f:genomeBuild)+count(f:referenceSeqId)+count(f:referenceSeqPointer)+count(f:referenceSeqString)=1">Have and only have one of the following elements in referenceSeq : 1. genomeBuild ; 2 referenceSeqId; 3. referenceSeqPointer;  4. referenceSeqString; (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.extension</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.modifierExtension</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.chromosome</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:chromosome">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.genomeBuild</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:genomeBuild">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.orientation</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:orientation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.referenceSeqId</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:referenceSeqId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.referenceSeqPointer</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:referenceSeqPointer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.referenceSeqString</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:referenceSeqString">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.strand</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:strand">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.windowStart</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:windowStart">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.referenceSeq.windowEnd</sch:title>
    <sch:rule context="f:MolecularSequence/f:referenceSeq/f:windowEnd">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.variant</sch:title>
    <sch:rule context="f:MolecularSequence/f:variant">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.variant.extension</sch:title>
    <sch:rule context="f:MolecularSequence/f:variant/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.variant.modifierExtension</sch:title>
    <sch:rule context="f:MolecularSequence/f:variant/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.variant.start</sch:title>
    <sch:rule context="f:MolecularSequence/f:variant/f:start">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.variant.end</sch:title>
    <sch:rule context="f:MolecularSequence/f:variant/f:end">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.variant.observedAllele</sch:title>
    <sch:rule context="f:MolecularSequence/f:variant/f:observedAllele">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.variant.referenceAllele</sch:title>
    <sch:rule context="f:MolecularSequence/f:variant/f:referenceAllele">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.variant.cigar</sch:title>
    <sch:rule context="f:MolecularSequence/f:variant/f:cigar">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.variant.variantPointer</sch:title>
    <sch:rule context="f:MolecularSequence/f:variant/f:variantPointer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.observedSeq</sch:title>
    <sch:rule context="f:MolecularSequence/f:observedSeq">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.extension</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.modifierExtension</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.type</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.standardSequence</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:standardSequence">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.start</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:start">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.end</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:end">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.score</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:score">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.method</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:method">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.truthTP</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:truthTP">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.queryTP</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:queryTP">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.truthFN</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:truthFN">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.queryFP</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:queryFP">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.gtFP</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:gtFP">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.precision</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:precision">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.recall</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:recall">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.fScore</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:fScore">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.roc</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:roc">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.roc.extension</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:roc/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.roc.modifierExtension</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:roc/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.roc.score</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:roc/f:score">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.roc.numTP</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:roc/f:numTP">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.roc.numFP</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:roc/f:numFP">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.roc.numFN</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:roc/f:numFN">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.roc.precision</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:roc/f:precision">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.roc.sensitivity</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:roc/f:sensitivity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.quality.roc.fMeasure</sch:title>
    <sch:rule context="f:MolecularSequence/f:quality/f:roc/f:fMeasure">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.readCoverage</sch:title>
    <sch:rule context="f:MolecularSequence/f:readCoverage">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.repository</sch:title>
    <sch:rule context="f:MolecularSequence/f:repository">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.repository.extension</sch:title>
    <sch:rule context="f:MolecularSequence/f:repository/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.repository.modifierExtension</sch:title>
    <sch:rule context="f:MolecularSequence/f:repository/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.repository.type</sch:title>
    <sch:rule context="f:MolecularSequence/f:repository/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.repository.url</sch:title>
    <sch:rule context="f:MolecularSequence/f:repository/f:url">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.repository.name</sch:title>
    <sch:rule context="f:MolecularSequence/f:repository/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.repository.datasetId</sch:title>
    <sch:rule context="f:MolecularSequence/f:repository/f:datasetId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.repository.variantsetId</sch:title>
    <sch:rule context="f:MolecularSequence/f:repository/f:variantsetId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.repository.readsetId</sch:title>
    <sch:rule context="f:MolecularSequence/f:repository/f:readsetId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.pointer</sch:title>
    <sch:rule context="f:MolecularSequence/f:pointer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.extension</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.modifierExtension</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.variantType</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:variantType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.exact</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:exact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.length</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:length">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.outer</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:outer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.outer.extension</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:outer/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.outer.modifierExtension</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:outer/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.outer.start</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:outer/f:start">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.outer.end</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:outer/f:end">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.inner</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:inner">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.inner.extension</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:inner/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.inner.modifierExtension</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:inner/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.inner.start</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:inner/f:start">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MolecularSequence.structureVariant.inner.end</sch:title>
    <sch:rule context="f:MolecularSequence/f:structureVariant/f:inner/f:end">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
