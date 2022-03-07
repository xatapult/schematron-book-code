<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <!-- 1 - Test for a processing-instruction (pi) with the name 'process': -->
  <pattern>
    <rule context="/">
      <assert test="processing-instruction(process)">
        There must be a leading process pi present
      </assert>
    </rule>
  </pattern>
  
  <!-- 2 - Test the contents of this processing-instruction: -->
  <pattern>
    <rule context="/processing-instruction(process)">
      <assert test="contains(., 'type=&quot;full&quot;')">
        The process pi must contain type="full"
      </assert>
    </rule>
  </pattern>
  
  <!-- 3 - Check for a comment mentioning ACMEDATA: -->
  <pattern>
    <rule context="/*">
      <assert test="comment()[contains(., 'ACMEDATA')]">
        There must be a comment mentioning ACMEDATA underneath the root
      </assert>
    </rule>
  </pattern>
  
</schema>
