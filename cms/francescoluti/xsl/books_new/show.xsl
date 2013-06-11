<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="table" />
	
	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/TABLE">
	
		<script>
			function edit(id) {
				var form = document.getElementById(id);
				form.action='editContent.jsp';
				form.submit();
			}
		</script>

		<table with="100%" border="1">
			<thead>
				<xsl:for-each select="COLUMNS/COLUMN">
					<td><xsl:value-of select="."/></td>
				</xsl:for-each>
				<td>OPCIONES</td>
			</thead>
			<tbody>
				<xsl:for-each select="ROW">
					<xsl:variable name='pos' select='position()' />
					<tr>
						<xsl:for-each select="@*">
							<td>
								<xsl:value-of select="."/><input type="hidden" name="{name()}" value="{.}"/>
							</td>
						</xsl:for-each>
						<td>
							<form action="DeleteContent" id="{$pos}" name="{$pos}" method="post">
								<xsl:for-each select="@*">
									<input type="hidden" name="{name()}" value="{.}"/>
								</xsl:for-each>
								<input type="hidden" name="table_to_insert" value="{$table}"/>
								<input type="submit" value="delete"/>
								<input type="button" value="edit" onclick="edit({$pos});"/>
							</form>
						</td>
					</tr>
				</xsl:for-each>	
			</tbody>
		</table>
		<a href="insertContent.jsp?table_to_insert={$table}">Insertar AQUI</a>
			
	</xsl:template>
		
</xsl:stylesheet>
