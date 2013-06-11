<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="table" />
	
	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/TABLE">

		<table>
			<xsl:for-each select="ROW">
				<xsl:for-each select="@*">
					<tr>
						<td><xsl:value-of select="name()" /></td>
						<td><xsl:value-of select="." /></td>
					</tr>
				</xsl:for-each>
			</xsl:for-each>
		</table>

	</xsl:template>
		
</xsl:stylesheet>
