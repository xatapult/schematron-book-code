<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <let name="department-code" value="/inventory-list/@depcode"/>
  
  <pattern>
    <rule context="article">
      
      <let name="article-code" value="@code"/>
      
      <assert test="starts-with(@code, $department-code)">
        The article code (<value-of select="$article-code"/>) must start with the right 
        prefix (<value-of select="$department-code"/>) 
        for <value-of select="name"/>
      </assert>
    </rule>
  </pattern>
  
</schema>
