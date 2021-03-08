<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
    <rule context="thing">
      <assert test="@type = ('normal', 'special', 'deprecated')" 
        diagnostics="type-message thing-explanation"/>
    </rule>
  </pattern>
  <pattern>
    <rule context="artifact">
      <assert test="@type = ('zork', 'martian', 'unknown')" 
        diagnostics="type-message artifact-explanation"/>
    </rule>
  </pattern>
  
  <diagnostics>
    <diagnostic id="type-message">
      Invalid type on <value-of select="@name"/>: <value-of select="@type"/>.
    </diagnostic>
    <diagnostic id="thing-explanation">
      Allowed types for a thing: normal, special, deprecated.
    </diagnostic>
    <diagnostic id="artifact-explanation">
      Allowed types for an artifact: zork, martian, unknown.
    </diagnostic>
  </diagnostics>
  
</schema>
