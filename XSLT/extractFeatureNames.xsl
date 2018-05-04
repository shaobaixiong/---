<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <counties><xsl:for-each select="//quote/name">
            <county>
                <name><xsl:value-of select="ancestor::county/name"/><xsl:text>县</xsl:text></name>
                <feature>
                    <xsl:value-of select="."/>
                </feature>
                <feature_type>
                    <xsl:value-of select="ancestor::quote/@type"/>
                </feature_type>
            </county>
        </xsl:for-each></counties>
    </xsl:template>
</xsl:stylesheet>