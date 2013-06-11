<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:param name="inputName" />
	<xsl:param name="table" />

	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template name="upload">
		<form name="thisform1" method="post" action="../../fileserver/servlet/upload/upload/{$table}" enctype="multipart/form-data">
			<input type="file" name="datafile" />
			<input type="hidden" name="inputName" value="{$inputName}" />
			<input type="hidden" name="redirect" value="../../../../admin/uploadOk.jsp" />
			<input type="checkbox" name="overwrite" value="true" />
			<input type="submit" name="Submit" value="Upload"/>
		</form>
	</xsl:template>

	<xsl:template match="/">
		<xsl:call-template name="upload" />
	</xsl:template>
	
</xsl:stylesheet>
