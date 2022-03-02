<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <ns prefix="db" uri="http://docbook.org/ns/docbook"/>
  
  <pattern>
    <rule context="db:sect1">
      <assert test="count(db:para) ge 3">
        This section must contain at least three paragraphs of text
      </assert>
    </rule>
  </pattern>
</schema>
