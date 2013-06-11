<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="table" />
	
	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/TABLE">
		<form action="EditContent" method="post">

			<input type="hidden" name="table_to_insert" value="{$table}"/>
			<table>
				<xsl:for-each select="ROW/COLUMN">
					<tr>
						<xsl:choose>
							<xsl:when test="@NAME!='id'">
								<td><xsl:value-of select="@NAME"/>:</td>
								<td>
									<xsl:if test="@LENGTH &lt;= 20">
										<input type="text" name="{@NAME}" value="{@VALUE}" />
									</xsl:if>
									<xsl:if test="@LENGTH > 20 and @LENGTH &lt; 1200">
										<textarea name="{@NAME}" id="{@NAME}" rows="{(@LENGTH div 120)}" cols="120">
											<xsl:value-of select="@VALUE"/>
										</textarea>
									</xsl:if>
									<xsl:if test="@LENGTH > 1200">
										<textarea name="{@NAME}" id="{@NAME}" rows="10" cols="120">
											<xsl:value-of select="@VALUE"/>
										</textarea>
									</xsl:if>
								</td>
					        </xsl:when>
					        <xsl:otherwise>
								<td></td>
								<td>
									<input type="hidden" name="{@NAME}" value="{@VALUE}" />
									<input type="hidden" name="old_{@NAME}" value="{@VALUE}" />
								</td>

					        </xsl:otherwise>
						</xsl:choose>
					</tr>
				</xsl:for-each>	
			</table>
			<input type="submit" value="envia"/>
		</form>
	</xsl:template>
		
</xsl:stylesheet>
