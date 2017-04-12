<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<table align="center" style="text-align:center;">
		<xsl:for-each select="list/product">
				<th>

				<img class="img-prod-thumbnail">	
					<xsl:attribute name="src"><xsl:value-of select="gamepic"/></xsl:attribute>
					<xsl:attribute name="class">img_game</xsl:attribute> 
				</img>
				
				<h3><xsl:value-of select="gametitle"/></h3>

				<ul>
					<li><xsl:value-of select="discount"/>% Discount</li>
					<li class="price">RM <xsl:value-of select="gameprice"/></li>
				
				</ul>
				</th>
		</xsl:for-each>
	</table>
	</xsl:template>
</xsl:stylesheet>