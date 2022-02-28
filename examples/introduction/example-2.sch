<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <pattern>
    <rule context="article">
      <assert test="starts-with(@code, /inventory-list/@depcode)">
        Invalid article code for <value-of select="name"/>
      </assert>
    </rule>
  </pattern>
  
</schema>
