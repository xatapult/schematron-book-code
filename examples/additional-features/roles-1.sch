<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
   <rule context="/*">
     <assert test="false()" role="info">This is informational</assert>
     <assert test="false()" role="warning">This is a warning</assert>
     <assert test="false()" role="error">This is an error</assert>
     <assert test="false()" role="fatal">This is a fatal error</assert>
   </rule>
  </pattern>
</schema>
