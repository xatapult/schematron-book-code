<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
    <rule context="thing">
      <assert test="@type = ('normal', 'special', 'deprecated')" 
        diagnostics="type-message-en type-message-nl"/>
    </rule>
  </pattern>
  
  <include href="separate-diagnostics.sch"/>
  
</schema>
