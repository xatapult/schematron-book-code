<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <!-- Validation check 4 and 7: -->
  <pattern>
    <rule context="/data">
      <assert test="count(thing) ge 1 and count(thing) le 3">
        There must be between 1 and 3 thing elements
      </assert>
      <assert test="empty(* except (thing, object))">
        Only thing and object elements are allowed as children of the root element
      </assert>
    </rule>
  </pattern>

</schema>
