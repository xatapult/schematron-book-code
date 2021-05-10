<?xml version="1.0" encoding="UTF-8"?>
<!-- 1 - Define the XSLT namespace: -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt3"> 
  <!-- 2 - Define a key using the XSLT key instruction: -->
  <xsl:key name="item-ids" match="/*/item" use="@id"/>
  <pattern>
    <rule context="ordered-item">
      <!-- 3 - Reference the key using the key() function: -->
      <assert test="exists(key('item-ids', @id-ref))">
        The referenced item <value-of select="@id-ref"/> does not exist
      </assert>
    </rule>
  </pattern>
</schema>
