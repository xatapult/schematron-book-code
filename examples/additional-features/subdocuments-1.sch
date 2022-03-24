<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
 
  <ns prefix="xi" uri="http://www.w3.org/2001/XInclude"/>
  
  <pattern documents="/*/xi:include/@href">
    <rule context="p">
      <assert test="@class ne 'brightred'">
        The class <value-of select="@class"/> is forbidden (<value-of select="base-uri(.)"/>)!
      </assert>
    </rule>
  </pattern>
  
</schema>
