<?xml version="1.0" encoding="UTF-8"?>
<!-- 1 - Define the XSLT namespace on the root element: -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt3">

  <!-- 2 - Define a namespace for the functions as an <ns> element: -->
  <ns uri="#functions" prefix="f"/>

  <!-- 3 - Define your function using XSLT: -->
  <xsl:function name="f:get-price" as="xs:double">
    <xsl:param name="type" as="xs:string"/>
    <xsl:variable name="prices-document" as="document-node()"
      select="doc('type-codes-and-prices.xml')"/>
    <xsl:variable name="data-element-for-type" as="element(data)?"
      select="$prices-document//data[@type eq $type]"/>
    <xsl:choose>
      <xsl:when test="exists($data-element-for-type)">
        <xsl:sequence select="xs:double($data-element-for-type/@price)"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:sequence 
          select="xs:double($prices-document/type-codes-and-prices/@default-price)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

  <pattern>
    <rule context="thing">
      <!-- 4 - Use the defined function to get the price: -->
      <let name="expected-price" value="f:get-price(@type)"/>
      <assert test="$expected-price eq xs:double(@price)">
        The price for <value-of select="@name"/> should be 
        <value-of select="$expected-price"/>
      </assert>
    </rule>
  </pattern>

</schema>
