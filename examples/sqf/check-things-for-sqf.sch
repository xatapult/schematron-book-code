<?xml version="1.0" encoding="UTF-8"?>
<!-- 1 - Define the QuickFix namespace: -->
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3"
  xmlns:sqf="http://www.schematron-quickfix.com/validator/process">

  <pattern>
    <rule context="thing">

      <!-- 2 - Check that things have a correct type: -->
      <assert test="@type eq 'normal' or @type eq 'special'" 
        sqf:fix="change-type delete-thing">
        Type must be normal or special
      </assert>

      <!-- 3 - Check that things have a name: -->
      <assert test="@name" sqf:fix="add-name delete-thing">
        A thing must have a name
      </assert>

      <!-- 4 - Define a QuickFix to delete a thing:-->
      <sqf:fix id="delete-thing">
        <sqf:description>
          <sqf:title>Remove thing</sqf:title>
          <sqf:p>Remove this thing from the list</sqf:p>
        </sqf:description>
        <sqf:delete/>
      </sqf:fix>

      <!-- 5 - Define a QuickFix to change the type of a thing: -->
      <sqf:fix id="change-type" use-for-each="('normal', 'special')">
        <sqf:description>
          <sqf:title>
            Set the thing's type to <value-of select="$sqf:current"/>
          </sqf:title>
        </sqf:description>
        <sqf:replace match="@type" node-type="attribute" target="type" 
          select="$sqf:current"/>
      </sqf:fix>

      <!-- 6 - Define a QuickFix to add a name: -->
      <sqf:fix id="add-name">
        <sqf:description>
          <sqf:title>Add a name</sqf:title>
        </sqf:description>
        <sqf:user-entry name="newname">
          <sqf:description>
            <sqf:title>What is the name of the thing?</sqf:title>
          </sqf:description>
        </sqf:user-entry>
        <sqf:add node-type="attribute" target="name" select="$newname"/>
      </sqf:fix>

    </rule>
  </pattern>

</schema>
