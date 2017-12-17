<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <chapter name="郡国志">
            <xsl:for-each select='//span[@class="fanye"]'>
                <p><xsl:value-of select="."/></p>
            </xsl:for-each>
        </chapter>
    </xsl:template>
    
</xsl:stylesheet>