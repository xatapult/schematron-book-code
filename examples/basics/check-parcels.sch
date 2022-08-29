<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <!-- 1 - Define the number of days a parcel's date must be before the 
    delivery date and turn this into a duration: -->
  <let name="delivery-day-limit" value="10"/>
  <let name="delivery-day-limit-as-duration" 
    value="xs:dayTimeDuration('P' || $delivery-day-limit || 'D')"/>
  
  <!-- 2 - Grab important values from the root element and make sure they 
    have the right data type: -->
  <let name="max-weight" value="xs:double(/*/@max-weight)"/>
  <let name="delivery-date" value="xs:date(/*/@delivery-date)"/>
  
  <pattern>
    <rule context="/*">
      <!-- 3 - Compute the total parcels weight, store this in a variable
        and use this in the assert's test and in the message: -->
      <let name="total-parcels-weight" value="sum(parcel/@weight)"/>
      <assert test="$total-parcels-weight le $max-weight">
        The total weight (<value-of select="$total-parcels-weight"/>) is 
        more than the allowed maximum (<value-of select="$max-weight"/>)
      </assert>
    </rule>
  </pattern> 
  
  <pattern>
    <rule context="parcel">
      <!-- 4 - Get the parcel's date and make sure it has the right 
        data type: -->
      <let name="parcel-date" value="xs:date(@date)"/>
      <assert 
        test="($delivery-date - $parcel-date) gt 
        $delivery-day-limit-as-duration">
          The parcel's date (<value-of select="$parcel-date"/>) must be 
          more than <value-of select="$delivery-day-limit"/> days 
          before the delivery date (<value-of select="$delivery-date"/>)
      </assert>
    </rule>
  </pattern>
  
</schema>
