<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:key name="role-ids" match="/*/Roles/*" use="@role-id"/>  
  
  <pattern>
    <rule context="@role-ref">
      <assert test="
        every $ref in tokenize(., '\s+')[.] 
          satisfies exists(key('role-ids', $ref))
      ">
        Role reference(s) in "<value-of select="."/>" not found
      </assert>
    </rule>
  </pattern>
</schema>
