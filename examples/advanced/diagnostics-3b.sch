<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
    <rule context="thing">
      <assert test="@type = ('normal', 'special', 'deprecated')" 
        diagnostics="type-message-en type-message-nl"/>
    </rule>
  </pattern>
  
  <diagnostics xml:lang="en">
    <diagnostic id="type-message-en" >
      Invalid type on <value-of select="@name"/>: <value-of select="@type"/>.
    </diagnostic>
    <!-- Other diagnostic messages in English… -->
  </diagnostics>
  
  <diagnostics xml:lang="nl"> 
    <diagnostic id="type-message-nl" >
      Ongeldig type voor <value-of select="@name"/>: <value-of select="@type"/>.
    </diagnostic>
    <!-- Other diagnostic messages in Dutch… -->
  </diagnostics>
  
</schema>
