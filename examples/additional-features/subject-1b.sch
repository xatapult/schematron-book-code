<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
    <rule context="entry">
      <assert test="count(preceding-sibling::entry) ne 2">Start of superfluous column(s)</assert>
    </rule>
  </pattern>

</schema>
