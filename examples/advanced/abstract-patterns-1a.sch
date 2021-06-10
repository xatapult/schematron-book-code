<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <!-- 1 - Define the abstract pattern -->
  <pattern abstract="true" id="table-pattern">
    <rule context="$table">
      <assert test="$row">
        The element <value-of select="local-name()"/> is a table structure. 
        Tables must contain the correct row elements.
      </assert>
    </rule>
    <rule context="$table/$row">
      <assert test="$entry">
        The element <value-of select="local-name()"/> is a table row. 
        Rows must contain the correct cell elements.
      </assert>
    </rule>
  </pattern>  
  
  <!-- 2 - Pattern for HTML tables: -->
  <pattern is-a="table-pattern" >
    <param name="table" value="table"/>
    <param name="row" value="tr"/>
    <param name="entry" value="td"/>
  </pattern>
  
  <!-- 3 - Pattern for a calendar table-like structure: -->
  <pattern is-a="table-pattern" >
    <param name="table" value="year"/>
    <param name="row" value="week"/>
    <param name="entry" value="day"/>
  </pattern>
  
</schema>