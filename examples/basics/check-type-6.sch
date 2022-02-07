<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="thing">
      <let name="thing-type" value="@type"/>
      <assert test="($thing-type eq 'normal') or ($thing-type eq 'special')">
        Invalid type on <value-of select="@name"/>: <value-of select="$thing-type"/>
      </assert>
    </rule>
  </pattern>
</schema>
