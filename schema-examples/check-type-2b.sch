<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="@type">
      <report test=". = ('normal', 'special', 'deprecated')">Type OK!</report>
    </rule>
  </pattern>
</schema>
