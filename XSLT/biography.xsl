<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <biography>
            <xsl:for-each select="//event">
                <year>
                    <xsl:value-of select="@time"/>
                </year>
                <event>
                    <xsl:value-of select="event_tag"/>
                </event>
            </xsl:for-each>
        </biography>/
    </xsl:template>
</xsl:stylesheet>