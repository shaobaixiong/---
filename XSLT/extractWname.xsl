<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <html>
            <head>
                新莽名、原名对照表
            </head>
            <body>
                <table>
                    <tr>
                        <th>新莽名</th>
                        <th>原名</th>
                    </tr>
                    <xsl:apply-templates select="//wname"/>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>