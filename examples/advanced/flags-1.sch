<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="…">
      <assert test="…" flag="serious-error">This is bad</assert>
      <assert test="…">This is not so bad</assert>
    </rule>
  </pattern>
  <pattern>
    <rule context="…">
      <assert test="…" flag="serious-error">This is also bad</assert>
    </rule>
  </pattern>
</schema>
