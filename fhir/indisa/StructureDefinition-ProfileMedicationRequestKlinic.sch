<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationRequest</sch:title>
    <sch:rule context="f:MedicationRequest">
      <sch:assert test="count(f:implicitRules) &lt;= 0">implicitRules: maximum cardinality of 'implicitRules' is 0</sch:assert>
      <sch:assert test="count(f:language) &lt;= 0">language: maximum cardinality of 'language' is 0</sch:assert>
      <sch:assert test="count(f:contained) &lt;= 0">contained: maximum cardinality of 'contained' is 0</sch:assert>
      <sch:assert test="count(f:doNotPerform) &lt;= 0">doNotPerform: maximum cardinality of 'doNotPerform' is 0</sch:assert>
      <sch:assert test="count(f:supportingInformation) &lt;= 0">supportingInformation: maximum cardinality of 'supportingInformation' is 0</sch:assert>
      <sch:assert test="count(f:performer) &lt;= 0">performer: maximum cardinality of 'performer' is 0</sch:assert>
      <sch:assert test="count(f:performerType) &lt;= 0">performerType: maximum cardinality of 'performerType' is 0</sch:assert>
      <sch:assert test="count(f:recorder) &lt;= 0">recorder: maximum cardinality of 'recorder' is 0</sch:assert>
      <sch:assert test="count(f:instantiatesCanonical) &lt;= 0">instantiatesCanonical: maximum cardinality of 'instantiatesCanonical' is 0</sch:assert>
      <sch:assert test="count(f:instantiatesUri) &lt;= 0">instantiatesUri: maximum cardinality of 'instantiatesUri' is 0</sch:assert>
      <sch:assert test="count(f:detectedIssue) &lt;= 0">detectedIssue: maximum cardinality of 'detectedIssue' is 0</sch:assert>
      <sch:assert test="count(f:eventHistory) &lt;= 0">eventHistory: maximum cardinality of 'eventHistory' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest</sch:title>
    <sch:rule context="f:MedicationRequest">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources (inherited)</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/f:id/@value return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label (inherited)</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.meta</sch:title>
    <sch:rule context="f:MedicationRequest/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.implicitRules</sch:title>
    <sch:rule context="f:MedicationRequest/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.language</sch:title>
    <sch:rule context="f:MedicationRequest/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.text</sch:title>
    <sch:rule context="f:MedicationRequest/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.modifierExtension</sch:title>
    <sch:rule context="f:MedicationRequest/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 0">assigner: maximum cardinality of 'assigner' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.identifier.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.identifier.use</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier/f:use">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.identifier.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.identifier.system</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.identifier.value</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.identifier.period</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.identifier.assigner</sch:title>
    <sch:rule context="f:MedicationRequest/f:identifier/f:assigner">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.status</sch:title>
    <sch:rule context="f:MedicationRequest/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:statusReason</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:statusReason/f:coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason/f:coding">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &gt;= 1">display: minimum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason.coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason.coding.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason.coding.system</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason.coding.version</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason.coding.code</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason.coding.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason.coding.userSelected</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.statusReason.text</sch:title>
    <sch:rule context="f:MedicationRequest/f:statusReason/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.intent</sch:title>
    <sch:rule context="f:MedicationRequest/f:intent">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:category</sch:title>
    <sch:rule context="f:MedicationRequest/f:category">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category</sch:title>
    <sch:rule context="f:MedicationRequest/f:category">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:category/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:category/f:coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:category/f:coding">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &gt;= 1">display: minimum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category.coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:category/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category.coding.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:category/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category.coding.system</sch:title>
    <sch:rule context="f:MedicationRequest/f:category/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category.coding.version</sch:title>
    <sch:rule context="f:MedicationRequest/f:category/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category.coding.code</sch:title>
    <sch:rule context="f:MedicationRequest/f:category/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category.coding.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:category/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category.coding.userSelected</sch:title>
    <sch:rule context="f:MedicationRequest/f:category/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.category.text</sch:title>
    <sch:rule context="f:MedicationRequest/f:category/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.priority</sch:title>
    <sch:rule context="f:MedicationRequest/f:priority">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.doNotPerform</sch:title>
    <sch:rule context="f:MedicationRequest/f:doNotPerform">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:reported[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:reported[x]">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reported[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:reported[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reported[x].extension 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:reported[x]/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.medication[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:medication[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:subject</sch:title>
    <sch:rule context="f:MedicationRequest/f:subject">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.subject</sch:title>
    <sch:rule context="f:MedicationRequest/f:subject">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.subject.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:subject/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.subject.reference</sch:title>
    <sch:rule context="f:MedicationRequest/f:subject/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.subject.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:subject/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.subject.identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:subject/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.subject.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:subject/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:encounter</sch:title>
    <sch:rule context="f:MedicationRequest/f:encounter">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.encounter</sch:title>
    <sch:rule context="f:MedicationRequest/f:encounter">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.encounter.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:encounter/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.encounter.reference</sch:title>
    <sch:rule context="f:MedicationRequest/f:encounter/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.encounter.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:encounter/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.encounter.identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:encounter/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.encounter.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:encounter/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.supportingInformation</sch:title>
    <sch:rule context="f:MedicationRequest/f:supportingInformation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.authoredOn</sch:title>
    <sch:rule context="f:MedicationRequest/f:authoredOn">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:requester</sch:title>
    <sch:rule context="f:MedicationRequest/f:requester">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.requester</sch:title>
    <sch:rule context="f:MedicationRequest/f:requester">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.requester.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:requester/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.requester.reference</sch:title>
    <sch:rule context="f:MedicationRequest/f:requester/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.requester.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:requester/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.requester.identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:requester/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.requester.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:requester/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.performer</sch:title>
    <sch:rule context="f:MedicationRequest/f:performer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.performerType</sch:title>
    <sch:rule context="f:MedicationRequest/f:performerType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.recorder</sch:title>
    <sch:rule context="f:MedicationRequest/f:recorder">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:reasonCode</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:reasonCode/f:coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode/f:coding">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &gt;= 1">display: minimum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode.coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode.coding.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode.coding.system</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode.coding.version</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode.coding.code</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode.coding.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode.coding.userSelected</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonCode.text</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonCode/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:reasonReference</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonReference">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonReference</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonReference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonReference.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonReference/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonReference.reference</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonReference/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonReference.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonReference/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonReference.identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonReference/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.reasonReference.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:reasonReference/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.instantiatesCanonical</sch:title>
    <sch:rule context="f:MedicationRequest/f:instantiatesCanonical">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.instantiatesUri</sch:title>
    <sch:rule context="f:MedicationRequest/f:instantiatesUri">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:basedOn</sch:title>
    <sch:rule context="f:MedicationRequest/f:basedOn">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.basedOn</sch:title>
    <sch:rule context="f:MedicationRequest/f:basedOn">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.basedOn.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:basedOn/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.basedOn.reference</sch:title>
    <sch:rule context="f:MedicationRequest/f:basedOn/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.basedOn.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:basedOn/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.basedOn.identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:basedOn/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.basedOn.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:basedOn/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:groupIdentifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:groupIdentifier">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 0">period: maximum cardinality of 'period' is 0</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 0">assigner: maximum cardinality of 'assigner' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.groupIdentifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:groupIdentifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.groupIdentifier.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:groupIdentifier/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.groupIdentifier.use</sch:title>
    <sch:rule context="f:MedicationRequest/f:groupIdentifier/f:use">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.groupIdentifier.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:groupIdentifier/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.groupIdentifier.system</sch:title>
    <sch:rule context="f:MedicationRequest/f:groupIdentifier/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.groupIdentifier.value</sch:title>
    <sch:rule context="f:MedicationRequest/f:groupIdentifier/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.groupIdentifier.period</sch:title>
    <sch:rule context="f:MedicationRequest/f:groupIdentifier/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.groupIdentifier.assigner</sch:title>
    <sch:rule context="f:MedicationRequest/f:groupIdentifier/f:assigner">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:courseOfTherapyType</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:courseOfTherapyType/f:coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType/f:coding">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &gt;= 1">display: minimum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType.coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType.coding.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType.coding.system</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType.coding.version</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType.coding.code</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType.coding.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType.coding.userSelected</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.courseOfTherapyType.text</sch:title>
    <sch:rule context="f:MedicationRequest/f:courseOfTherapyType/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:insurance</sch:title>
    <sch:rule context="f:MedicationRequest/f:insurance">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.insurance</sch:title>
    <sch:rule context="f:MedicationRequest/f:insurance">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.insurance.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:insurance/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.insurance.reference</sch:title>
    <sch:rule context="f:MedicationRequest/f:insurance/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.insurance.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:insurance/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.insurance.identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:insurance/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.insurance.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:insurance/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:note</sch:title>
    <sch:rule context="f:MedicationRequest/f:note">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:author[x]) &lt;= 0">author[x]: maximum cardinality of 'author[x]' is 0</sch:assert>
      <sch:assert test="count(f:time) &lt;= 0">time: maximum cardinality of 'time' is 0</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.note</sch:title>
    <sch:rule context="f:MedicationRequest/f:note">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.note.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:note/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.note.author[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:note/f:author[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.note.time</sch:title>
    <sch:rule context="f:MedicationRequest/f:note/f:time">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.note.text</sch:title>
    <sch:rule context="f:MedicationRequest/f:note/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dosageInstruction</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:sequence) &lt;= 0">sequence: maximum cardinality of 'sequence' is 0</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:additionalInstruction) &lt;= 0">additionalInstruction: maximum cardinality of 'additionalInstruction' is 0</sch:assert>
      <sch:assert test="count(f:patientInstruction) &lt;= 0">patientInstruction: maximum cardinality of 'patientInstruction' is 0</sch:assert>
      <sch:assert test="count(f:timing) &lt;= 0">timing: maximum cardinality of 'timing' is 0</sch:assert>
      <sch:assert test="count(f:asNeeded[x]) &lt;= 0">asNeeded[x]: maximum cardinality of 'asNeeded[x]' is 0</sch:assert>
      <sch:assert test="count(f:site) &lt;= 0">site: maximum cardinality of 'site' is 0</sch:assert>
      <sch:assert test="count(f:route) &lt;= 0">route: maximum cardinality of 'route' is 0</sch:assert>
      <sch:assert test="count(f:method) &lt;= 0">method: maximum cardinality of 'method' is 0</sch:assert>
      <sch:assert test="count(f:doseAndRate) &lt;= 0">doseAndRate: maximum cardinality of 'doseAndRate' is 0</sch:assert>
      <sch:assert test="count(f:maxDosePerPeriod) &lt;= 0">maxDosePerPeriod: maximum cardinality of 'maxDosePerPeriod' is 0</sch:assert>
      <sch:assert test="count(f:maxDosePerAdministration) &lt;= 0">maxDosePerAdministration: maximum cardinality of 'maxDosePerAdministration' is 0</sch:assert>
      <sch:assert test="count(f:maxDosePerLifetime) &lt;= 0">maxDosePerLifetime: maximum cardinality of 'maxDosePerLifetime' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.modifierExtension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.sequence</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:sequence">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.text</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.additionalInstruction</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:additionalInstruction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.patientInstruction</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:patientInstruction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.timing</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:timing">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.asNeeded[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:asNeeded[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.site</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:site">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.route</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:route">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.method</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:method">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dosageInstruction/f:doseAndRate</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:doseAndRate">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:dose[x]) &lt;= 1">dose[x]: maximum cardinality of 'dose[x]' is 1</sch:assert>
      <sch:assert test="count(f:rate[x]) &lt;= 1">rate[x]: maximum cardinality of 'rate[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.doseAndRate</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:doseAndRate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.doseAndRate.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:doseAndRate/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.doseAndRate.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:doseAndRate/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.doseAndRate.dose[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:doseAndRate/f:dose[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.doseAndRate.rate[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:doseAndRate/f:rate[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.maxDosePerPeriod</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:maxDosePerPeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.maxDosePerAdministration</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:maxDosePerAdministration">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dosageInstruction.maxDosePerLifetime</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction/f:maxDosePerLifetime">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dispenseRequest</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:initialFill) &lt;= 0">initialFill: maximum cardinality of 'initialFill' is 0</sch:assert>
      <sch:assert test="count(f:dispenseInterval) &lt;= 0">dispenseInterval: maximum cardinality of 'dispenseInterval' is 0</sch:assert>
      <sch:assert test="count(f:numberOfRepeatsAllowed) &lt;= 0">numberOfRepeatsAllowed: maximum cardinality of 'numberOfRepeatsAllowed' is 0</sch:assert>
      <sch:assert test="count(f:quantity) &lt;= 0">quantity: maximum cardinality of 'quantity' is 0</sch:assert>
      <sch:assert test="count(f:expectedSupplyDuration) &lt;= 0">expectedSupplyDuration: maximum cardinality of 'expectedSupplyDuration' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.modifierExtension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.initialFill</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:initialFill">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.initialFill.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:initialFill/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.initialFill.modifierExtension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:initialFill/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.initialFill.quantity</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:initialFill/f:quantity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.initialFill.duration</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:initialFill/f:duration">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.dispenseInterval</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:dispenseInterval">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dispenseRequest/f:validityPeriod</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:validityPeriod">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.validityPeriod</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:validityPeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.validityPeriod.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:validityPeriod/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.validityPeriod.start</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:validityPeriod/f:start">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.validityPeriod.end</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:validityPeriod/f:end">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.numberOfRepeatsAllowed</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:numberOfRepeatsAllowed">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.quantity</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:quantity">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.expectedSupplyDuration</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:expectedSupplyDuration">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dispenseRequest/f:performer</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:performer">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.performer</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:performer">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.performer.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:performer/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.performer.reference</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:performer/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.performer.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:performer/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.performer.identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:performer/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest.performer.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest/f:performer/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:substitution</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reason) &lt;= 0">reason: maximum cardinality of 'reason' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.modifierExtension</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.allowed[x] 1</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:allowed[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:substitution/f:reason</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:substitution/f:reason/f:coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason/f:coding">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 0">version: maximum cardinality of 'version' is 0</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 0">userSelected: maximum cardinality of 'userSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason.coding</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason.coding.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason/f:coding/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason.coding.system</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason/f:coding/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason.coding.version</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason/f:coding/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason.coding.code</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason/f:coding/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason.coding.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason/f:coding/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason.coding.userSelected</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason/f:coding/f:userSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution.reason.text</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution/f:reason/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:priorPrescription</sch:title>
    <sch:rule context="f:MedicationRequest/f:priorPrescription">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:reference) &gt;= 1">reference: minimum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:display) &lt;= 0">display: maximum cardinality of 'display' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.priorPrescription</sch:title>
    <sch:rule context="f:MedicationRequest/f:priorPrescription">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.priorPrescription.extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:priorPrescription/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.priorPrescription.reference</sch:title>
    <sch:rule context="f:MedicationRequest/f:priorPrescription/f:reference">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.priorPrescription.type</sch:title>
    <sch:rule context="f:MedicationRequest/f:priorPrescription/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.priorPrescription.identifier</sch:title>
    <sch:rule context="f:MedicationRequest/f:priorPrescription/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.priorPrescription.display</sch:title>
    <sch:rule context="f:MedicationRequest/f:priorPrescription/f:display">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.detectedIssue</sch:title>
    <sch:rule context="f:MedicationRequest/f:detectedIssue">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.eventHistory</sch:title>
    <sch:rule context="f:MedicationRequest/f:eventHistory">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
