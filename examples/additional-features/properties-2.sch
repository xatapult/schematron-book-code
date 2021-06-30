<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
 
  <properties>
    <property id="programmer-alert">Programmers, watch out!</property>
    <property id="check-rounding-error">Please check for rounding errors!</property>
    <property id="check-subsystem">Did subsystem XYZ fail again?</property>
  </properties>
 
  <pattern>
    <rule context="/invoices">
      <assert test="xs:double(@total) eq sum(invoice/@total)" 
          properties="programmer-alert check-rounding-error">
        Total <value-of select="@total"/> not correct
      </assert>
    </rule>
  </pattern>

  <pattern>
    <rule context="invoice">
      <let name="id" value="@id"></let>
      <assert test="count(../invoice[@id eq $id]) eq 1" 
          properties="programmer-alert check-subsystem">
        Id <value-of select="@id"/> not unique
      </assert>
    </rule>
  </pattern>

</schema>
