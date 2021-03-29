<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
    <rule context="title">
      <assert test="string-length(.) le 45">The title is longer than 45 characters</assert>
    </rule>
  </pattern>
  
  <pattern>
    <rule context="/*">
      <assert test="count(//para) ge 3">There must be at least 3 paragraphs</assert>
    </rule>
  </pattern>

  <pattern>
    <rule context="footnote-reference">
      <let name="footnote-id" value="@idref"/>
      <assert test="exists(//footnote[@id eq $footnote-id])">
        Footnote id <value-of select="$footnote-id"/> not found</assert>
    </rule>
  </pattern>
  
</schema>
