<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <!-- This schema validates an invoice list. -->

  <pattern>
    <!-- Checking whether the total attribute is ok: -->
    <rule context="/invoices">
      <assert test="xs:double(@total) eq sum(invoice/@total)">
        Total <value-of select="@total"/> not correct
      </assert>
    </rule>
  </pattern>

  <pattern>
    <!-- Checking whether invoice ids are unique: -->
    <rule context="invoice">
      <let name="id" value="@id"></let>
      <assert test="count(../invoice[@id eq $id]) eq 1">
        Id <value-of select="@id"/> not unique
      </assert>
    </rule>
  </pattern>

</schema>
