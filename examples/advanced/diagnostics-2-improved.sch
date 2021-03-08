<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <let name="thing-types" value="('normal', 'special', 'deprecated')"/>
  <let name="artifact-types" value="('zork', 'martian', 'unknown')"/>
  
  <pattern>
    <rule context="thing">
      <assert test="@type = $thing-types" 
        diagnostics="type-message thing-explanation"/>
    </rule>
  </pattern>
  <pattern>
    <rule context="artifact">
      <assert test="@type = $artifact-types" 
        diagnostics="type-message artifact-explanation"/>
    </rule>
  </pattern>
  
  <diagnostics>
    <diagnostic id="type-message">
      Invalid type on <value-of select="@name"/>: <value-of select="@type"/>.
    </diagnostic>
    <diagnostic id="thing-explanation">
      Allowed types for a thing: 
      <value-of select="string-join($thing-types, ', ')"/>.
    </diagnostic>
    <diagnostic id="artifact-explanation">
      Allowed types for an artifact: 
      <value-of select="string-join($artifact-types, ', ')"/>.
    </diagnostic>
  </diagnostics>
  
</schema>
