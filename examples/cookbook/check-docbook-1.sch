<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="sect1">
      <assert test="count(para) ge 3">
        This section must contain at least three paragraphs of text
      </assert>
    </rule>
  </pattern>
</schema>
