<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Questionnaire
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Questionnaire</sch:title>
    <sch:rule context="f:Questionnaire">
      <sch:assert test="count(f:implicitRules) &lt;= 0">implicitRules: maximum cardinality of 'implicitRules' is 0</sch:assert>
      <sch:assert test="count(f:language) &lt;= 0">language: maximum cardinality of 'language' is 0</sch:assert>
      <sch:assert test="count(f:contained) &lt;= 0">contained: maximum cardinality of 'contained' is 0</sch:assert>
      <sch:assert test="count(f:url) &lt;= 0">url: maximum cardinality of 'url' is 0</sch:assert>
      <sch:assert test="count(f:experimental) &lt;= 0">experimental: maximum cardinality of 'experimental' is 0</sch:assert>
      <sch:assert test="count(f:publisher) &lt;= 0">publisher: maximum cardinality of 'publisher' is 0</sch:assert>
      <sch:assert test="count(f:contact) &lt;= 0">contact: maximum cardinality of 'contact' is 0</sch:assert>
      <sch:assert test="count(f:description) &lt;= 0">description: maximum cardinality of 'description' is 0</sch:assert>
      <sch:assert test="count(f:useContext) &lt;= 0">useContext: maximum cardinality of 'useContext' is 0</sch:assert>
      <sch:assert test="count(f:purpose) &lt;= 0">purpose: maximum cardinality of 'purpose' is 0</sch:assert>
      <sch:assert test="count(f:approvalDate) &lt;= 0">approvalDate: maximum cardinality of 'approvalDate' is 0</sch:assert>
      <sch:assert test="count(f:lastReviewDate) &lt;= 0">lastReviewDate: maximum cardinality of 'lastReviewDate' is 0</sch:assert>
      <sch:assert test="count(f:effectivePeriod) &lt;= 0">effectivePeriod: maximum cardinality of 'effectivePeriod' is 0</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire</sch:title>
    <sch:rule context="f:Questionnaire">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources (inherited)</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/f:id/@value return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label (inherited)</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management (inherited)</sch:assert>
      <sch:assert test="not(exists(f:name/@value)) or matches(f:name/@value, '[A-Z]([A-Za-z0-9_]){0,254}')">Name should be usable as an identifier for the module by machine processing applications such as code generation (inherited)</sch:assert>
      <sch:assert test="count(descendant::f:linkId/@value)=count(distinct-values(descendant::f:linkId/@value))">The link ids for groups and questions must be unique within the questionnaire (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.meta</sch:title>
    <sch:rule context="f:Questionnaire/f:meta">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.implicitRules</sch:title>
    <sch:rule context="f:Questionnaire/f:implicitRules">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.language</sch:title>
    <sch:rule context="f:Questionnaire/f:language">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:text</sch:title>
    <sch:rule context="f:Questionnaire/f:text">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:div) &gt;= 1">div: minimum cardinality of 'div' is 1</sch:assert>
      <sch:assert test="count(f:div) &lt;= 1">div: maximum cardinality of 'div' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.text</sch:title>
    <sch:rule context="f:Questionnaire/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.text.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:text/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.text.status</sch:title>
    <sch:rule context="f:Questionnaire/f:text/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.text.div</sch:title>
    <sch:rule context="f:Questionnaire/f:text/f:div">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="not(descendant-or-self::*[not(local-name(.)=('a', 'abbr', 'acronym', 'b', 'big', 'blockquote', 'br', 'caption', 'cite', 'code', 'col', 'colgroup', 'dd', 'dfn', 'div', 'dl', 'dt', 'em', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'hr', 'i', 'img', 'li', 'ol', 'p', 'pre', 'q', 'samp', 'small', 'span', 'strong', 'sub', 'sup', 'table', 'tbody', 'td', 'tfoot', 'th', 'thead', 'tr', 'tt', 'ul', 'var'))]) and not(descendant-or-self::*/@*[not(name(.)=('abbr', 'accesskey', 'align', 'alt', 'axis', 'bgcolor', 'border', 'cellhalign', 'cellpadding', 'cellspacing', 'cellvalign', 'char', 'charoff', 'charset', 'cite', 'class', 'colspan', 'compact', 'coords', 'dir', 'frame', 'headers', 'height', 'href', 'hreflang', 'hspace', 'id', 'lang', 'longdesc', 'name', 'nowrap', 'rel', 'rev', 'rowspan', 'rules', 'scope', 'shape', 'span', 'src', 'start', 'style', 'summary', 'tabindex', 'title', 'type', 'valign', 'value', 'vspace', 'width'))])">The narrative SHALL contain only the basic html formatting elements and attributes described in chapters 7-11 (except section 4 of chapter 9) and 15 of the HTML 4.0 standard, &lt;a&gt; elements (either name or href), images and internally contained style attributes (inherited)</sch:assert>
      <sch:assert test="descendant::text()[normalize-space(.)!=''] or descendant::h:img[@src]">The narrative SHALL have some non-whitespace content (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.url</sch:title>
    <sch:rule context="f:Questionnaire/f:url">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:identifier</sch:title>
    <sch:rule context="f:Questionnaire/f:identifier">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
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
    <sch:title>Questionnaire.identifier</sch:title>
    <sch:rule context="f:Questionnaire/f:identifier">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.identifier.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:identifier/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.identifier.use</sch:title>
    <sch:rule context="f:Questionnaire/f:identifier/f:use">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.identifier.type</sch:title>
    <sch:rule context="f:Questionnaire/f:identifier/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.identifier.system</sch:title>
    <sch:rule context="f:Questionnaire/f:identifier/f:system">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.identifier.value</sch:title>
    <sch:rule context="f:Questionnaire/f:identifier/f:value">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.identifier.period</sch:title>
    <sch:rule context="f:Questionnaire/f:identifier/f:period">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.identifier.assigner</sch:title>
    <sch:rule context="f:Questionnaire/f:identifier/f:assigner">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.version</sch:title>
    <sch:rule context="f:Questionnaire/f:version">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.name</sch:title>
    <sch:rule context="f:Questionnaire/f:name">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.title</sch:title>
    <sch:rule context="f:Questionnaire/f:title">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.derivedFrom</sch:title>
    <sch:rule context="f:Questionnaire/f:derivedFrom">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.status</sch:title>
    <sch:rule context="f:Questionnaire/f:status">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.experimental</sch:title>
    <sch:rule context="f:Questionnaire/f:experimental">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.subjectType</sch:title>
    <sch:rule context="f:Questionnaire/f:subjectType">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.date</sch:title>
    <sch:rule context="f:Questionnaire/f:date">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.publisher</sch:title>
    <sch:rule context="f:Questionnaire/f:publisher">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.contact</sch:title>
    <sch:rule context="f:Questionnaire/f:contact">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.description</sch:title>
    <sch:rule context="f:Questionnaire/f:description">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.useContext</sch:title>
    <sch:rule context="f:Questionnaire/f:useContext">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:jurisdiction</sch:title>
    <sch:rule context="f:Questionnaire/f:jurisdiction">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 0">coding: maximum cardinality of 'coding' is 0</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.jurisdiction</sch:title>
    <sch:rule context="f:Questionnaire/f:jurisdiction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.jurisdiction.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:jurisdiction/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.jurisdiction.coding</sch:title>
    <sch:rule context="f:Questionnaire/f:jurisdiction/f:coding">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.jurisdiction.text</sch:title>
    <sch:rule context="f:Questionnaire/f:jurisdiction/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.purpose</sch:title>
    <sch:rule context="f:Questionnaire/f:purpose">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.copyright</sch:title>
    <sch:rule context="f:Questionnaire/f:copyright">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.approvalDate</sch:title>
    <sch:rule context="f:Questionnaire/f:approvalDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.lastReviewDate</sch:title>
    <sch:rule context="f:Questionnaire/f:lastReviewDate">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.effectivePeriod</sch:title>
    <sch:rule context="f:Questionnaire/f:effectivePeriod">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.code</sch:title>
    <sch:rule context="f:Questionnaire/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item</sch:title>
    <sch:rule context="f:Questionnaire/f:item">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 0">definition: maximum cardinality of 'definition' is 0</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:prefix) &lt;= 0">prefix: maximum cardinality of 'prefix' is 0</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:enableBehavior) &lt;= 0">enableBehavior: maximum cardinality of 'enableBehavior' is 0</sch:assert>
      <sch:assert test="count(f:repeats) &lt;= 0">repeats: maximum cardinality of 'repeats' is 0</sch:assert>
      <sch:assert test="count(f:readOnly) &lt;= 0">readOnly: maximum cardinality of 'readOnly' is 0</sch:assert>
      <sch:assert test="count(f:maxLength) &lt;= 0">maxLength: maximum cardinality of 'maxLength' is 0</sch:assert>
      <sch:assert test="count(f:answerValueSet) &lt;= 0">answerValueSet: maximum cardinality of 'answerValueSet' is 0</sch:assert>
      <sch:assert test="count(f:initial) &lt;= 0">initial: maximum cardinality of 'initial' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item</sch:title>
    <sch:rule context="f:Questionnaire/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="not((f:type/@value='group' and not(f:item)) or (f:type/@value='display' and f:item))">Group items must have nested items, display items cannot have nested items (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value='display' and f:code)">Display items cannot have a &quot;code&quot; asserted (inherited)</sch:assert>
      <sch:assert test="not(f:answerValueSet and f:answerOption)">A question cannot have both answerOption and answerValueSet (inherited)</sch:assert>
      <sch:assert test="f:type/@value=('choice','open-choice','decimal','integer','date','dateTime','time','string','quantity',') or not(f:answerOption or f:answerValueSet)">Only 'choice' and 'open-choice' items can have answerValueSet (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value='display' and (f:required or f:repeats))">Required and repeat aren't permitted for display items (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value=('group', 'display') and f:*[starts-with(local-name(.), 'initial')])">Initial values can't be specified for groups or display items (inherited)</sch:assert>
      <sch:assert test="not(f:type/@value=('group', 'display') and f:*[starts-with(local-name(.), 'initial')])">Read-only can't be specified for &quot;display&quot; items (inherited)</sch:assert>
      <sch:assert test="f:type/@value=('boolean', 'decimal', 'integer', 'open-choice', 'string', 'text', 'url') or not(f:maxLength)">Maximum length can only be declared for simple question types (inherited)</sch:assert>
      <sch:assert test="not(f:answerOption) or not(count(f:*[starts-with(local-name(.), 'initial')]))">If one or more answerOption is present, initial[x] must be missing (inherited)</sch:assert>
      <sch:assert test="not(f:answerOption) or not(count(f:*[starts-with(local-name(.), 'initial')]))">If there are more than one enableWhen, enableBehavior must be specified (inherited)</sch:assert>
      <sch:assert test="f:repeats/@value='true' or count(f:initial)&lt;=1">Can only have multiple initial values for repeating items (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.linkId</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:linkId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.definition</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:definition">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.code</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.prefix</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:prefix">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.text</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.type</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="f:operator/@value != 'exists' or exists(f:answerBoolean)">If the operator is 'exists', the value must be a boolean (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen.question</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen/f:question">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen.operator</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen/f:operator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableWhen.answer[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableWhen/f:answer[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.enableBehavior</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:enableBehavior">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.required</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:required">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.repeats</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:repeats">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.readOnly</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:readOnly">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.maxLength</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:maxLength">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerValueSet</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerValueSet">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:answerOption</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:initialSelected) &lt;= 0">initialSelected: maximum cardinality of 'initialSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerOption</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerOption.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerOption.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerOption.value[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.answerOption.initialSelected</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:answerOption/f:initialSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.initial</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:initial">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.initial.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:initial/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.initial.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:initial/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.initial.value[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:initial/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:linkId) &gt;= 1">linkId: minimum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:linkId) &lt;= 1">linkId: maximum cardinality of 'linkId' is 1</sch:assert>
      <sch:assert test="count(f:definition) &lt;= 0">definition: maximum cardinality of 'definition' is 0</sch:assert>
      <sch:assert test="count(f:code) &lt;= 0">code: maximum cardinality of 'code' is 0</sch:assert>
      <sch:assert test="count(f:prefix) &lt;= 0">prefix: maximum cardinality of 'prefix' is 0</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:enableBehavior) &lt;= 0">enableBehavior: maximum cardinality of 'enableBehavior' is 0</sch:assert>
      <sch:assert test="count(f:required) &lt;= 1">required: maximum cardinality of 'required' is 1</sch:assert>
      <sch:assert test="count(f:repeats) &lt;= 0">repeats: maximum cardinality of 'repeats' is 0</sch:assert>
      <sch:assert test="count(f:readOnly) &lt;= 0">readOnly: maximum cardinality of 'readOnly' is 0</sch:assert>
      <sch:assert test="count(f:maxLength) &lt;= 0">maxLength: maximum cardinality of 'maxLength' is 0</sch:assert>
      <sch:assert test="count(f:answerValueSet) &lt;= 0">answerValueSet: maximum cardinality of 'answerValueSet' is 0</sch:assert>
      <sch:assert test="count(f:initial) &lt;= 0">initial: maximum cardinality of 'initial' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.linkId</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:linkId">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.definition</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:definition">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.code</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:code">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.prefix</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:prefix">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.text</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:text">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.type</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:type">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item/f:enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:question) &gt;= 1">question: minimum cardinality of 'question' is 1</sch:assert>
      <sch:assert test="count(f:question) &lt;= 1">question: maximum cardinality of 'question' is 1</sch:assert>
      <sch:assert test="count(f:operator) &gt;= 1">operator: minimum cardinality of 'operator' is 1</sch:assert>
      <sch:assert test="count(f:operator) &lt;= 1">operator: maximum cardinality of 'operator' is 1</sch:assert>
      <sch:assert test="count(f:answer[x]) &gt;= 1">answer[x]: minimum cardinality of 'answer[x]' is 1</sch:assert>
      <sch:assert test="count(f:answer[x]) &lt;= 1">answer[x]: maximum cardinality of 'answer[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="f:operator/@value != 'exists' or exists(f:answerBoolean)">If the operator is 'exists', the value must be a boolean (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen.question</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen/f:question">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen.operator</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen/f:operator">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableWhen.answer[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableWhen/f:answer[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.enableBehavior</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:enableBehavior">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.required</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:required">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.repeats</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:repeats">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.readOnly</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:readOnly">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.maxLength</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:maxLength">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerValueSet</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerValueSet">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item/f:answerOption</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption">
      <sch:assert test="count(f:id) &lt;= 0">id: maximum cardinality of 'id' is 0</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:initialSelected) &lt;= 0">initialSelected: maximum cardinality of 'initialSelected' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerOption</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerOption.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerOption.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerOption.value[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.answerOption.initialSelected</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:answerOption/f:initialSelected">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Questionnaire/f:item/f:item/f:initial</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:initial">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.initial</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:initial">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.initial.extension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:initial/f:extension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.initial.modifierExtension</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:initial/f:modifierExtension">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="exists(f:extension)!=exists(f:*[starts-with(local-name(.), &quot;value&quot;)])">Must have either extensions or value[x], not both (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.initial.value[x] 1</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:initial/f:value[x]">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Questionnaire.item.item.item</sch:title>
    <sch:rule context="f:Questionnaire/f:item/f:item/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
