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
                        <th>Prefecture</th>
                        <th>Quantity of Walled Settlements</th>
                        <th>Quantity of Family</th>
                        <th>Quantity of Population</th>
                    </tr>
                    <xsl:apply-templates select="//pref"/>
                </table>
                <table>
                    <tr>
                        <th>Feature</th>
                        <th>County</th>
                        <th>Cnty ID</th>
                        <th>Type</th>
                        <th>Prefecture</th>
                        <th>Pref ID</th>
                    </tr>
                    <xsl:apply-templates select="//quote"/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="pref">
        <xsl:for-each select=".">
            <tr><td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="meta/@walled"/></td>
                <td><xsl:value-of select="meta/@family"/></td>
                <td><xsl:value-of select="meta/@pop"/></td>
            </tr>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="quote">
        <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="ancestor::county/name"/></td>
            <td><xsl:value-of select="ancestor::county/@ref"/></td>
            <td><xsl:value-of select="@type"/></td>
            <td><xsl:value-of select="ancestor::pref/name"/></td>
            <td><xsl:value-of select="ancestor::pref/@ref"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>