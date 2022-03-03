<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <!-- Validation check 8: -->
  <pattern>
    <rule context="/data/object">
      <assert test="empty(@* except @remark)">
        Only the remark attribute is allowed on the object element
      </assert>
    </rule>
  </pattern>

</schema>
