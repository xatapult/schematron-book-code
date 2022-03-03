<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <!-- Validation check 1: -->
  <pattern>
    <rule context="/">
      <assert test="exists(data)">
        The root element must be data
      </assert>
    </rule>
  </pattern>
  
</schema>
