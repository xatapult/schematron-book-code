<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="@role-ref[. ne '#all']">
      <assert test="every $ref in tokenize(., '\s+')[.] satisfies
          exists(/DramaText/Roles/(Role|RoleGroup)[@role-id eq $ref])">
        Role reference(s) in "<value-of select="."/>" not found
      </assert>
    </rule>
  </pattern>
</schema>
