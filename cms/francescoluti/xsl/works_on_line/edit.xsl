<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="table" />
	
	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/TABLE">
		<form action="EditContent" method="post">

			<input type="hidden" name="table_to_insert" value="{$table}"/>
			<input type="hidden" name="old_id" value="{ROW/COLUMN[@NAME='id']/@VALUE}" />
			
			<table>
				<tr>
					<td>Titulo:</td>
					<td>
						<textarea name="titulo" id="titulo" rows="5" cols="80">
							<xsl:value-of select="ROW/COLUMN[@NAME='titulo']/@VALUE" />
						</textarea>
					</td>
				</tr>
				<tr>
					<td>Idioma:</td>
					<td>
						<xsl:variable name="idioma" select="ROW/COLUMN[@NAME='idioma']/@VALUE" />
						<select name="idioma">
							<option selected="true" value="{$idioma}">ACTUAL</option>
							<option value="img/flag/flag-es.gif">Español</option>
							<option value="img/flag/flag-it.gif">Italiano</option>
							<option value="img/flag/flag-pt.gif">Portugues</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Formato:</td>
					<td>
						<xsl:variable name="formato" select="ROW/COLUMN[@NAME='formato']/@VALUE" />
						<select name="formato">
							<option selected="true" value="{$formato}">ACTUAL</option>
							<option value="">Web</option>
							<option value="img/flag/word.jpg">Word</option>
							<option value="img/flag/pdf.jpg">Pdf</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>Link</td>
					<td>
						<xsl:variable name="link" select="ROW/COLUMN[@NAME='link']/@VALUE" />
						<input name="link" id="link" size="60" value="{$link}" />
						<a href="javascript:writeConsole('uploadFile.jsp?table={$table}&amp;inputName=link');">Upload</a>
					</td>
				</tr>
			</table>
			<input type="submit" value="envia"/>
		</form>
	</xsl:template>
		
</xsl:stylesheet>
