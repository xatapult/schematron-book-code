<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="ID">
      <assert test="string-length(.) eq 9">
        An ID must be 9 characters long!
      </assert>
      <report test="starts-with(., 'X')">
        Special identifier found!
      </report>
    </rule>
  </pattern>
</schema>
