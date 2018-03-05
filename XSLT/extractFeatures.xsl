<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <xsl:for-each select="//feature">
            <county>
                <name><xsl:value-of select="ancestor::county/name"/><xsl:text>县</xsl:text></name>
                <feature>
                    <xsl:value-of select="."/>
                </feature>
                <feature_type>
                    <xsl:value-of select="@type"/>
                </feature_type>
            </county>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>