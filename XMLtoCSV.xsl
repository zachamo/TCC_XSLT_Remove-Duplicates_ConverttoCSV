<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xpath-default-namespace="http://www.taleo.com/ws/integration/toolkit/2005/07">
    <xsl:output omit-xml-declaration="yes" indent="no" encoding="UTF8"/>
<xsl:output method="text"/>
 <xsl:param name="pPat">"</xsl:param>
 <xsl:param name="pRep">""</xsl:param>
    <xsl:template match="/*">
<xsl:text>&lt;Content xmlns="http://www.taleo.com/ws/integration/toolkit/2005/07"&gt;&lt;ExportCSV&gt;&lt;data&gt;&lt;![CDATA[</xsl:text>
    <xsl:value-of separator="|"  select=
    "ExportXML/record[1]/field/@name" /><xsl:text>&#xa;</xsl:text>
    <xsl:for-each select="//record">"<xsl:for-each select=".//field" ><xsl:sequence select="replace(.,$pPat, $pRep)"/><xsl:choose><xsl:when test="position() != last()">"|"</xsl:when></xsl:choose></xsl:for-each>
    <xsl:text>"&#xD;&#xa;</xsl:text></xsl:for-each>
<xsl:text>]]&gt;&lt;/data&gt;&lt;/ExportCSV&gt;&lt;/Content&gt;</xsl:text>
  </xsl:template>
</xsl:stylesheet>
