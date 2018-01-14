<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Features of Counties in Houhan Shu</title>
            </head>
            <body>
                <table>
                    <tr>
                        <th>County</th>
                    </tr>
                    <xsl:apply-templates select="//quote/name"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="name">
        <tr>
            <td><xsl:value-of select="."/></td>
            <td><xsl:value-of select="ancestor::county/name"/></td>
            <td><xsl:value-of select="ancestor::county/@ref"/></td>
            <td><xsl:value-of select="@type"/></td>
            <td><xsl:value-of select="ancestor::pref/name"/></td>
            <td><xsl:value-of select="ancestor::pref/@ref"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>