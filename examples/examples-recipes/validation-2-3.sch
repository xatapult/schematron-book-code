<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <!-- Validation check 2 and 3: -->
  <pattern>
    <rule context="/data">
      <assert test="exists(@timestamp)">
        The root element must have a timestamp attribute
      </assert>
      <assert test="empty(@timestamp) or @timestamp castable as xs:dateTime">
        The timestamp attribute must hold a valid date/time
      </assert>
      <assert test="empty(@* except @timestamp)">
        Only the timestamp attribute is allowed on the root element
      </assert>
    </rule>
  </pattern>

</schema>
