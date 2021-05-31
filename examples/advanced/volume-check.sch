<rule xmlns="http://purl.oclc.org/dsdl/schematron">
  <assert test="(@length * @height * @width) le 1">
    The crate with <value-of select="."/> is too big 
  </assert>
</rule>