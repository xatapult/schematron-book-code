<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <let name="department-code" value="/inventory-list/@depcode"/>
  
  <pattern>
    <rule context="article">
      <assert test="starts-with(@code, $department-code)">
        Invalid article code for <value-of select="name"/>: <value-of select="@code"/> 
        (must start with <value-of select="$department-code"/>)
      </assert>
    </rule>
  </pattern>
  
</schema>
