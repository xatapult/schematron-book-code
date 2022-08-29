<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
    
    <rule context="crate[@material eq 'wood']">
      <assert test="(@length * @height * @width) le 1">
        The crate with <value-of select="."/> is too big
      </assert>
      <assert test=". eq 'books'">
        A wooden crate may only contain books. This one contains 
        <value-of select="."/>
      </assert>
    </rule>
    
    <rule context="crate[@material eq 'metal']">
      <assert test="(@length * @height * @width) le 1">
        The crate with <value-of select="."/> is too big
      </assert>
    </rule>
    
  </pattern>
  
</schema>
