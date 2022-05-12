<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="thing">
      <assert test="(@type eq 'normal') or (@type eq 'special')">
        The type of <value-of select="@name"/> must be normal or special, 
        not <value-of select="@type"/>
      </assert>
    </rule>
  </pattern>
</schema>
