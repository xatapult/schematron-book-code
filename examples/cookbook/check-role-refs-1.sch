<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:key name="role-ids" match="/*/Roles/*" use="@role-id"/>  
  
  <pattern>
    <rule context="@role-ref">
      <assert test="exists(key('role-ids', .))">
        The referenced role id <value-of select="."/> does not exist
      </assert>
    </rule>
  </pattern>
</schema>
