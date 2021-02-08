<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="thing">
      <assert test="@type = ('normal', 'special', 'deprecated')">
        Invalid type on <value-of select="@name"/>: <value-of select="@type"/>
      </assert>
    </rule>
  </pattern>
</schema>
