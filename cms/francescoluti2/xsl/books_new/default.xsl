<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="table" />
	
	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/TABLE">
	
		<xsl:choose>
			<xsl:when test='/TABLE/VTABLE'>
				<xsl:for-each select="/TABLE/VTABLE">
					<xsl:value-of select="@VNAME"/><br/>
					<xsl:for-each select="ROWS">
						<xsl:for-each select="ROW">
							<xsl:value-of select="@NAME" />:<xsl:value-of select="@VALUE" /><BR/>
						</xsl:for-each>
					</xsl:for-each>
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<table border="1">
				<thead>
					<tr>
						<xsl:for-each select="COLUMNS">
							<xsl:for-each select="COLUMN">
								<td><xsl:value-of select="." /></td>
							</xsl:for-each>
						</xsl:for-each>
					</tr>
				</thead>
				<tbody>
					<xsl:for-each select="ROW">
						<tr>
							<xsl:for-each select="@*">
								<td><xsl:value-of select="." /></td>
							</xsl:for-each>
						</tr>
					</xsl:for-each>
				</tbody>
				</table>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
		
</xsl:stylesheet>
