<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">

  <pattern>
    <rule context="row" >
      <assert test="count(entry) le 2" subject="entry[3]">Start of superfluous column(s)</assert>
    </rule>
  </pattern>

</schema>
