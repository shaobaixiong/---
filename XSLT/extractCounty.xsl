<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output indent="yes" method="xml"/>
    <xsl:template match="/">
        <counties>
            <xsl:for-each select="//county/name">
                <county>
                    <county_han>
                        <xsl:value-of select="."/>
                        <xsl:if test="not(ancestor::county/@note)">
                            <xsl:text>县</xsl:text>
                        </xsl:if>
                        <xsl:if test="ancestor::county/@note = '侯国'">
                            <xsl:text>侯国</xsl:text>
                        </xsl:if>
                    </county_han>
                    <county_xin>
                        <xsl:choose>
                            <xsl:when test="following-sibling::wname">

                                <xsl:value-of select="following-sibling::wname"/>
                                <xsl:text>县</xsl:text>

                            </xsl:when>
                            <xsl:when test="not(wname)">
                                <xsl:value-of select="."/>
                                <xsl:text>县</xsl:text>
                            </xsl:when>
                        </xsl:choose>
                    </county_xin>
                    <name_type>
                        <xsl:choose>
                            <xsl:when test="following-sibling::wname"><xsl:value-of select="following-sibling::wname/@type"/></xsl:when>
                            <xsl:when test="not(following-sibling::wname)"><xsl:text>不改</xsl:text></xsl:when>
                        </xsl:choose>
                    </name_type>
                    <ID>
                        <xsl:text>304</xsl:text>
                        <xsl:number value="position()" format="01"/>
                    </ID>
                </county>
            </xsl:for-each>
        </counties>
    </xsl:template>

</xsl:stylesheet>
