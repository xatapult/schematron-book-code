<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    
    <rule context="message">
      <assert test="string-length(.) lt 10">
        The message <value-of select="."/> is too long!
      </assert>
    </rule>
    
  </pattern>
</schema>
