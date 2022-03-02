<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt3">
  
  <pattern>
    <rule context="/">
      <!-- Check for pi called process that is *followed* by an element. 
        Since we're on the document-node, this can only be the root element. 
        For a pi that is located after the root element this will fail. -->
      <assert test="processing-instruction(process)[following-sibling::*]">
        There must be a leading process pi present
      </assert>
      <!-- Check there's only a *single* process pi: -->
      <assert test="count(processing-instruction(process)) eq 1">
        There must only be a single process pi
      </assert>
    </rule>
  </pattern>
  
  <pattern>
    <rule context="/processing-instruction(process)">
      <assert test="contains(., 'type=&quot;full&quot;')">
        The process pi must contain type="full"
      </assert>
    </rule>
  </pattern>
  
  <pattern>
    <rule context="/*">
      <!-- The following test expression works like this: 
        * Take all nodes (all types) underneath the root element: node().
        * Filter out the ones that contain only spaces using the predicate [normalize-space(.)].
          This is necessary because there is a whitespace-only text node between the root 
          element and the first comment (it contains a line break and spaces). 
          The normalize-space() function reduces whitespace only
          strings to an empty string. An empty string has the effective boolean value false, so
          this predicate removes all whitespace only nodes.
        * From what's left, take only the first one using the [1] predicate
        * Check that this node is a comment using the [self::comment()] predicate.
        * Check that it contains the expected string value.
      -->
      <assert test="node()[normalize-space(.)][1][self::comment()][contains(., 'ACMEDATA')]">
        There must be a comment mentioning ACMEDATA as first child of the root element
      </assert>
    </rule>
  </pattern>
  
</schema>
