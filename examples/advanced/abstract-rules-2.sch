<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>

    <!-- 1 - Define the volume check rule as abstract -->
    <rule abstract="true" id="volume-check">
      <assert test="(@length * @height * @width) le 1">
        The crate with <value-of select="."/> is too big 
      </assert>
    </rule>

    <rule context="crate[@material eq 'wood']">
      <!-- 2 - Use the abstract rule for the volume check for wooden crates -->
      <extends rule="volume-check"/>
      <assert test=". eq 'books'">
        A wooden crate may only contain books. This one contains 
        <value-of select="."/>
      </assert>
    </rule>

    <rule context="crate[@material eq 'metal']">
      <!-- 3 - Use the abstract rule for the volume check for metal crates -->
      <extends rule="volume-check"/>
    </rule>

  </pattern>

</schema>
