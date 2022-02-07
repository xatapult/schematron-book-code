<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="@type">
      <assert test="(. eq 'normal') or (. eq 'special')">
        <name path=".."/>: Invalid type on <value-of select="../@name"/>: <value-of select="."/>
      </assert>
    </rule>
  </pattern>
</schema>
