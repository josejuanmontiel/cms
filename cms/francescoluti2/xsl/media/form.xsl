<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="table" />
	<xsl:param name="menu" />
	<xsl:param name="submenu" />
	
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
		
		<body>
	
			<form action="InsertContent" method="post">
		
				<input type="hidden" name="table_to_insert" value="{$table}"/>
				<xsl:value-of select="$submenu"/><br/>
				<table>
					<xsl:for-each select="COLUMN">
						<tr>
							<xsl:if test="@NAME!='id'">
								<td><xsl:value-of select="@NAME"/>:</td>
								<td>
									<xsl:if test="@LENGTH &lt;= 20">
										<input name="{@NAME}" id="{@NAME}" />
									</xsl:if>
									<xsl:if test="@LENGTH &gt; 20">
										<xsl:choose>
									        <xsl:when test="@NAME='menu' and $menu!=''">
												<textarea name="{@NAME}" READONLY="true" id="{@NAME}" rows="{@LENGTH div 120}" cols="{@LENGTH div (@LENGTH div 120)}"><xsl:value-of select="$menu"/></textarea>
									        </xsl:when>
									        <xsl:when test="@NAME='submenu' and $submenu!=''">
												<textarea name="{@NAME}" READONLY="true" id="{@NAME}" rows="{@LENGTH div 120}" cols="{@LENGTH div (@LENGTH div 120)}"><xsl:value-of select="$submenu"/></textarea>
									        </xsl:when>
									        <xsl:otherwise>
												<textarea name="{@NAME}" id="{@NAME}" rows="5" cols="120" />
											</xsl:otherwise>
										</xsl:choose>
									</xsl:if>
									<a href="javascript:writeConsole('uploadFile.jsp?table={$table}&amp;inputName={@NAME}');">Upload</a>
								</td>
							</xsl:if>
						</tr>
					</xsl:for-each>	
				</table>
				<input type="submit" value="envia"/>
			</form>
		
		</body>		
		
	</xsl:template>
		
</xsl:stylesheet>
