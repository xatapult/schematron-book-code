<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <pattern>
    <!-- 1 - Trigger on all elements we want to check: -->
    <rule context="i|u|b">
      <!-- 2 - Store the name element that triggered this rule in a variable: -->
      <let name="current-element-name" value="local-name(.)"/>
      <!-- 3 - Use this variable to check whether there are any ancestors with the 
        same name: -->
      <assert test="not(ancestor::*[local-name() eq $current-element-name])">
        You cannot have doubled <value-of select="$current-element-name"/> elements
      </assert>      
    </rule>
  </pattern>
  
</schema>