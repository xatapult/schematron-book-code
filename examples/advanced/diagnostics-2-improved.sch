<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <let name="thing-types" value="('normal', 'special')"/>
  <let name="artifact-types" value="('zork', 'martian')"/>
  
  <pattern>
    <rule context="thing">
      <assert test="@type = $thing-types" 
        diagnostics="message-1 thing-explanation"/>
    </rule>
  </pattern>
  <pattern>
    <rule context="artifact">
      <assert test="@type = $artifact-types" 
        diagnostics="message-1 artifact-explanation"/>
    </rule>
  </pattern>
  
  <diagnostics>
    <diagnostic id="message-1">
      Invalid type on <value-of select="@name"/>: 
      <value-of select="@type"/>.
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
