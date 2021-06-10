<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <pattern>
    <rule context="table">
      <assert test="tr">
        The element <value-of select="local-name()"/> is a table structure. 
        Tables must contain the correct row elements.
      </assert>
    </rule>
    <rule context="table/tr">
      <assert test="td">
        The element <value-of select="local-name()"/> is a table row. 
        Rows must contain the correct cell elements.
      </assert>
    </rule>
  </pattern>  
  
  <pattern>
    <rule context="year">
      <assert test="week">
        The element <value-of select="local-name()"/> is a table structure. 
        Tables must contain the correct row elements.
      </assert>
    </rule>
    <rule context="year/week">
      <assert test="day">
        The element <value-of select="local-name()"/> is a table row. 
        Rows must contain the correct cell elements.
      </assert>
    </rule>
  </pattern>  
  
</schema>