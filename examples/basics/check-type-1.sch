<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="@type">
      <assert test="(. eq 'normal') or (. eq 'special')">Invalid type!</assert>
    </rule>
  </pattern>
</schema>
