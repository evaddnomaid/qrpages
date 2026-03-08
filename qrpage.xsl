<?xml version="1.0"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:svg="http://www.w3.org/2000/svg"
	version="1.0">
	<xsl:output standalone="yes"/>
	<xsl:variable name="hori_skip_text">142</xsl:variable>
	<xsl:variable name="vert_skip_text_1">120</xsl:variable>
	<xsl:variable name="vert_skip_text_2">40</xsl:variable>
	<xsl:variable name="hori_skip_code"><xsl:value-of select="$hori_skip_text div 4"/></xsl:variable>
	<xsl:variable name="vert_skip_code_1"><xsl:value-of select="$vert_skip_text_1 div 4"/></xsl:variable>
	<xsl:variable name="vert_skip_code_2"><xsl:value-of select="$vert_skip_text_2 div 4"/></xsl:variable>
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
				<xsl:attribute name="x"><xsl:value-of select="
40
+ ((position() - 1) mod 9) * $vert_skip_text_1
+ floor(((position() - 1) mod 9) div 3) * $vert_skip_text_2
"/></xsl:attribute>
				<xsl:attribute name="y"><xsl:value-of select="136 + floor(((position() - 1) div 9 )) * $hori_skip_text"/></xsl:attribute>
				<xsl:attribute name="text-anchor">middle</xsl:attribute>
				<xsl:attribute name="transform">scale(<xsl:value-of select="$textscale"/>)</xsl:attribute>
				<xsl:value-of select="@pagenumber"/>
			</xsl:element>
			<xsl:text>
</xsl:text>
			<xsl:element name="svg:g">
				<xsl:attribute name="transform">
					<xsl:text>translate(</xsl:text>
					<xsl:value-of select="
0
+ ((position() - 1) mod 9) * $vert_skip_code_1
+ floor(((position() - 1) mod 9) div 3) * $vert_skip_code_2
"/>
					<xsl:text>,</xsl:text>
					<xsl:value-of select="6 + floor(((position() - 1) div 9)) * $hori_skip_code "/>
					<xsl:text>)</xsl:text>
				</xsl:attribute>
				<!-- <xsl:call-template name="sample_qr"/> -->
				<xsl:for-each select="svg:svg/svg:g/svg:g/svg:rect">
					<xsl:copy-of select="."/>
				</xsl:for-each>
			</xsl:element>
		</xsl:element>
		<xsl:text>
</xsl:text>
	</xsl:template>

<xsl:template match="rect">
	<xsl:comment>COMMENT COMMENT</xsl:comment>
</xsl:template>

<xsl:template name="sample_qr">
	<svg:rect x="0" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="1" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="5" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="12" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="15" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="16" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="19" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="0" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="1" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="1" width="1" height="1" fill="#000000"/>
	<svg:rect x="12" y="1" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="1" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="1" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="16" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="2" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="12" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="16" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="3" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="11" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="12" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="16" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="4" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="5" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="5" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="5" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="5" width="1" height="1" fill="#000000"/>
	<svg:rect x="11" y="5" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="5" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="5" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="1" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="5" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="12" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="15" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="16" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="19" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="6" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="7" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="7" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="1" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="5" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="7" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="12" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="13" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="8" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="1" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="11" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="13" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="15" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="19" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="9" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="5" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="7" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="11" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="13" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="15" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="10" width="1" height="1" fill="#000000"/>
	<svg:rect x="1" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="11" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="12" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="13" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="15" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="16" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="19" y="11" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="12" width="1" height="1" fill="#000000"/>
	<svg:rect x="7" y="12" width="1" height="1" fill="#000000"/>
	<svg:rect x="11" y="12" width="1" height="1" fill="#000000"/>
	<svg:rect x="13" y="12" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="12" width="1" height="1" fill="#000000"/>
	<svg:rect x="15" y="12" width="1" height="1" fill="#000000"/>
	<svg:rect x="19" y="12" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="13" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="13" width="1" height="1" fill="#000000"/>
	<svg:rect x="19" y="13" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="1" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="5" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="12" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="16" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="19" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="14" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="15" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="15" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="15" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="15" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="15" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="15" width="1" height="1" fill="#000000"/>
	<svg:rect x="19" y="15" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="15" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="12" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="16" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="16" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="11" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="13" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="15" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="19" y="17" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="11" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="13" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="15" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="18" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="19" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="19" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="19" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="19" width="1" height="1" fill="#000000"/>
	<svg:rect x="11" y="19" width="1" height="1" fill="#000000"/>
	<svg:rect x="12" y="19" width="1" height="1" fill="#000000"/>
	<svg:rect x="13" y="19" width="1" height="1" fill="#000000"/>
	<svg:rect x="15" y="19" width="1" height="1" fill="#000000"/>
	<svg:rect x="16" y="19" width="1" height="1" fill="#000000"/>
	<svg:rect x="17" y="19" width="1" height="1" fill="#000000"/>
	<svg:rect x="0" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="1" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="2" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="3" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="4" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="5" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="6" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="8" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="9" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="10" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="11" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="13" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="14" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="15" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="18" y="20" width="1" height="1" fill="#000000"/>
	<svg:rect x="20" y="20" width="1" height="1" fill="#000000"/>
</xsl:template>

</xsl:stylesheet>

