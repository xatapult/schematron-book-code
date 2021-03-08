<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
    <rule context="thing">
      <!-- 1 - Refer to a message in a <diagnostics> section with the diagnostics attribute. -->
      <assert test="@type = ('normal', 'special', 'deprecated')" diagnostics="type-message"/>
    </rule>
  </pattern>
  
  <!-- 2 - A <diagnostics> section contains centralized definitions of messages.-->
  <diagnostics>
    <!-- 3 - A <diagnostic> element contains a single message. It is referenced by id. -->
    <diagnostic id="type-message">
      Invalid type on <value-of select="@name"/>: <value-of select="@type"/>.
    </diagnostic>
  </diagnostics>
  
</schema>
