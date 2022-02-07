<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3"
  xmlns:sqf="http://www.schematron-quickfix.com/validator/process">

  <pattern>
    <rule context="thing">
      <assert test="@type eq 'normal' or @type eq 'special'" sqf:fix="change-type">Type must be
        normal or special</assert>
      <assert test="@name" sqf:fix="delete-name add-name">A thing must have a name</assert>

      <sqf:fix id="change-type" use-for-each="('normal', 'special')">
        <sqf:description>
          <sqf:title>Set the thing's type to <value-of select="$sqf:current"/></sqf:title>
        </sqf:description>
        <sqf:replace match="@type" node-type="attribute" target="type" select="$sqf:current"/>
      </sqf:fix>

      <sqf:fix id="delete-name">
        <sqf:description>
          <sqf:title>Remove thing</sqf:title>
          <sqf:p>Remove this thing from the list</sqf:p>
        </sqf:description>
        <sqf:delete/>
      </sqf:fix>

      <sqf:fix id="add-name">
        <sqf:description>
          <sqf:title>Add a name</sqf:title>
          <sqf:p>Remove this thing from the list</sqf:p>
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
