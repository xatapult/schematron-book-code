<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
  
    <rule context="crate[@material eq 'wood']">
      <extends href="volume-check.sch"/>
      <assert test=". eq 'books'">
        A wooden crate may only contain books. This one contains 
        <value-of select="."/>
      </assert>
    </rule>

    <rule context="crate[@material eq 'metal']">
      <extends href="volume-check.sch"/>
    </rule>

  </pattern>

</schema>
