<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="@type">
      <report test="(. eq 'normal') or (. eq 'special')">Type OK!</report>
    </rule>
  </pattern>
</schema>
