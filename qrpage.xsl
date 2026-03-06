<?xml version="1.0"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:svg="http://www.w3.org/2000/svg"
	version="1.0">
	<xsl:output standalone="yes"/>
	<xsl:variable name="horizontalskip">100</xsl:variable>
	<xsl:variable name="vertskip1">85</xsl:variable>
	<xsl:variable name="vertskip2">95</xsl:variable>
	<xsl:variable name="textscale">0.25</xsl:variable>
	<xsl:variable name="cell_padding">5pt</xsl:variable>
	<xsl:variable name="body-font-size">10pt</xsl:variable>
	<xsl:variable name="header-font-size">16pt</xsl:variable>
	<xsl:variable name="border-end-width">0.2mm</xsl:variable>
	<xsl:variable name="end-indent-list">0.5mm</xsl:variable>
	<xsl:output method="xml" encoding="UTF-8"/>
	<xsl:template match="/qrcodes">
		<svg:svg width="8.5in" height="11in" preserveAspectRatio="both" version="1.1">
			<xsl:apply-templates select="number"/>
		</svg:svg>
	</xsl:template>

	<xsl:template match="number">
		<xsl:element name="svg:g">
			<xsl:attribute name="id"><xsl:value-of select="@pagenumber"/></xsl:attribute>
			<xsl:attribute name="transform">translate(32,42);scale(2.7)</xsl:attribute>
			<xsl:element name="svg:text">
				<xsl:attribute name="x"><xsl:value-of select="40 + ((position() - 1) mod 9) * $horizontalskip"/></xsl:attribute>
				<xsl:attribute name="y"><xsl:value-of select="120 + floor(((position() - 1) div 9 )) * $vertskip1"/></xsl:attribute>
				<xsl:attribute name="text-anchor">middle</xsl:attribute>
				<xsl:attribute name="transform">scale(<xsl:value-of select="$textscale"/>)</xsl:attribute>
				<xsl:value-of select="@pagenumber"/>
			</xsl:element>
		</xsl:element>
		<xsl:text>
</xsl:text>
	</xsl:template>
</xsl:stylesheet>

