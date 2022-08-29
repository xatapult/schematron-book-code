<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  <pattern>
    <rule context="/*">
      <assert test="sum(parcel/@weight) le xs:double(@max-weight)">
        The total weight is too high
      </assert>
    </rule>
  </pattern>
  <pattern>
    <rule context="parcel">
      <assert test="(xs:date(/*/@delivery-date) - xs:date(@date)) gt 
        xs:dayTimeDuration('P10D')">
        The parcel's date must be more than 10 days before the delivery date
      </assert>
    </rule>
  </pattern>
</schema>
