<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <!-- Validation check 1: -->
  <pattern>
    <rule context="/">
      <assert test="exists(data)">
        The root element must be data
      </assert>
    </rule>
  </pattern>
  
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
  
  <!-- Validation check 8: -->
  <pattern>
    <rule context="/data/object">
      <assert test="empty(@* except @remark)">
        Only the remark attribute is allowed on the object element
      </assert>
    </rule>
  </pattern>
  
</schema>
