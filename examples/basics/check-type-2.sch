<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="@type">
      <report test="not((. eq 'normal') or (. eq 'special'))">
        The type must be normal or special
      </report>
    </rule>
  </pattern>
</schema>
