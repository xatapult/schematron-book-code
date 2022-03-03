<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <!-- Validation check 5 and 6: -->
  <pattern>
    <rule context="/data/thing">
      <assert test="exists(@thingid)">
        A thing must have a thingid attribute
      </assert>
      <assert test="empty(@thingid) or @thingid castable as xs:integer">
        A thingid must be a valid integer
      </assert>
      <assert test="empty(@* except @thingid)">
        Only the thingid attribute is allowed on the thing element
      </assert>
    </rule>
  </pattern>

</schema>
