<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <places>
            <xsl:apply-templates select="//county/wname"/>
        </places>
    </xsl:template>
    <xsl:template match="county/wname">
        <place>
            <xsl:attribute name="name">
                <xsl:value-of select="./preceding-sibling::name"/>
            </xsl:attribute>
            <xsl:attribute name="wname">
                <xsl:value-of select="."/>
            </xsl:attribute>
        </place>
    </xsl:template>
</xsl:stylesheet>