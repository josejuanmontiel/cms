<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="table" />
	
	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/TABLE">
		<head>
		<xsl:text disable-output-escaping="yes">
			<![CDATA[<script type="text/javascript">
						function writeConsole(content) {
						 top.consoleRef=window.open(content,'myconsole',
						  'width=350,height=250'
						   +',menubar=0'
						   +',toolbar=1'
						   +',status=0'
						   +',scrollbars=1'
						   +',resizable=1')
//						 top.consoleRef.document.writeln(
//						  '&lt;html&gt;&lt;head&gt;&lt;title&gt;Console&lt;/title&gt;&lt;/head&gt;'
//						   +'&lt;body bgcolor="white" onLoad="self.focus()"&gt;'
//						   +content
//						   +'&lt;/body&gt;&lt;/html&gt;'
//						 )
//						 top.consoleRef.document.close()

						}
					</script>]]>
			</xsl:text>
		</head>
	
		<form action="EditContent" method="post">

			<input type="hidden" name="table_to_insert" value="{$table}"/>
			<table>
				<xsl:for-each select="ROW/COLUMN">
					<tr>
						<xsl:choose>
							<xsl:when test="@NAME!='id'">
								<xsl:choose>
									<xsl:when test="@NAME='columna'">
										<td>Columna:</td>
										<td>
											<select name="columna">
												<option selected="true" value="{@VALUE}">Posicion actual: <xsl:value-of select="@VALUE"/></option>
												<option value="izq">Izquierda</option>
												<option value="drch">Derecha</option>
											</select>
										</td>
									</xsl:when>
							        <xsl:otherwise>
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
									    <td>
									    	<xsl:if test="@NAME='img'"><a href="javascript:writeConsole('uploadFile.jsp?table={$table}&amp;inputName={@NAME}');">Upload</a></xsl:if>
									    </td>
							        </xsl:otherwise>
								</xsl:choose>
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
