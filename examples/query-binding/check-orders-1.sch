<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3"> 
  <pattern>
    <rule context="ordered-item">
      <let name="item-id" value="@id-ref"/>
      <assert test="exists(/*/item[@id eq $item-id])">
        The referenced item <value-of select="$item-id"/> does not exist
      </assert>
    </rule>
  </pattern>
</schema>
