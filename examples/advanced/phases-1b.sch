<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <!-- 1 - Define a phase that only checks the title length -->
  <phase id="titles-only">
    <active pattern="check-title-length"/>
  </phase>
  
  <!-- 2 - Define a phase that checks the title length and the number of paragraphs -->
  <phase id="titles-and-paragraphs">
    <active pattern="check-title-length"/>
    <active pattern="check-para-count"/>
  </phase>

  <!-- 3 - The actual patterns: -->
  <pattern id="check-title-length">
    <rule context="title">
      <assert test="string-length(.) le 45">The title is longer than 45 characters</assert>
    </rule>
  </pattern>
  
  <pattern id="check-para-count">
    <rule context="/*">
      <assert test="count(//para) ge 3">There must be at least 3 paragraphs</assert>
    </rule>
  </pattern>

  <pattern id="check-footnote-references">
    <rule context="footnote-reference">
      <let name="footnote-id" value="@idref"/>
      <assert test="exists(//footnote[@id eq $footnote-id])">
        Footnote id <value-of select="$footnote-id"/> not found.</assert>
    </rule>
  </pattern>
  
</schema>
