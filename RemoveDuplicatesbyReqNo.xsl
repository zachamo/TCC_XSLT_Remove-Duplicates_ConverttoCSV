<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xpath-default-namespace="http://www.taleo.com/ws/integration/toolkit/2005/07">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
 <xsl:template match="/*">
<Content xmlns="http://www.taleo.com/ws/integration/toolkit/2005/07">
  <ExportXML>
       <xsl:for-each-group select="//record" group-by="field[@name='RequisitionNumber']">
         <xsl:sequence select="."/>
       </xsl:for-each-group>
  </ExportXML>
</Content>
 </xsl:template>
</xsl:stylesheet>
