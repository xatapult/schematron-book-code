<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <pattern>
    <rule context="article">
      <assert test="starts-with(@code, /inventory-list/@depcode)">
        The article code (<value-of select="@code"/>) must start with the right 
        prefix (<value-of select="/inventory-list/@depcode"/>) 
        for <value-of select="name"/>
      </assert>
    </rule>
  </pattern>
  
</schema>
