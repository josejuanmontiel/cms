<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="table" />
	<xsl:param name="titulo" />
	
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
				<table>
					<tr>
						<td>Titulo:</td>
						<td>
							<textarea name="titulo" id="titulo" rows="5" cols="80">
								<xsl:value-of select="$titulo" />							
							</textarea>
						</td>
					</tr>
					<tr>
						<td>Idioma:</td>
						<td>
							<select name="idioma">
								<option value="img/flag/flag-es.gif">Español</option>
								<option value="img/flag/flag-it.gif">Italiano</option>
								<option value="img/flag/flag-pt.gif">Portugues</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Formato:</td>
						<td>
							<select name="formato">
								<option value="">Web</option>
								<option value="img/flag/word.jpg">Word</option>
								<option value="img/flag/pdf.jpg">Pdf</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>Link</td>
						<td>
							<input name="link" id="link" size="60" />
							<a href="javascript:writeConsole('uploadFile.jsp?table={$table}&amp;inputName=link');">Upload</a>
						</td>
					</tr>
				</table>
				<input type="submit" value="envia"/>
			</form>
		
		</body>		
		
	</xsl:template>
		
</xsl:stylesheet>
