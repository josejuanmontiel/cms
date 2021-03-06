<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:import href="../menu-common.xsl" />

	<xsl:param name="table" />
	
	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/TABLE">

	<head>
	    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
		<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE" />

	    <title>Francesco Luti Web</title>

	    <link rel="Stylesheet" type="text/css" href="css/ploneNS4.css" />
	    <style type="text/css" media="screen">&#60;&#33;&#45;&#45; @import url(css/ploneColumns.css); &#45;&#45;&#62;</style>
	    <style type="text/css" media="screen">&#60;&#33;&#45;&#45; @import url(css/plone.css); &#45;&#45;&#62;</style>
	    <link rel="alternate stylesheet" type="text/css"
	          media="screen"
	          href="css/ploneTextSmall.css"
	          title="Small Text" />
	    <link rel="alternate stylesheet" type="text/css"
	          media="screen"
	          href="css/ploneTextLarge.css"
	          title="Large Text" />
	    <link rel="stylesheet" type="text/css" media="print"
	          href="css/plonePrint.css" />
	    <link rel="stylesheet" type="text/css"
	          media="projection"
	          href="css/plonePresentation.css" />
	    <style type="text/css" media="all">&#60;&#33;&#45;&#45; @import url(css/ploneCustom.css); &#45;&#45;&#62;</style>
	    <link rel="shortcut icon"
	          href="css/favicon.ico"
	          type="image/x-icon" />
	    <link rel="search" href="css/search_form"
	          title="Search this site" />
	    <link rel="up"
	          href="css/documentation/tutorial/plone-apache"
	          title="Up one level" />
	    <style type="text/css" media="all">@import url(css/helpcenter.css);</style>
	    <script type="text/javascript" src="js/plone_javascript_variables.js"></script>
	    <script type="text/javascript" src="js/plone_javascripts.js"></script>
	</head>

	<body class="section-documentation">
		<div id="visual-portal-wrapper">

	      		<div id="portal-top">

				<h1 id="portal-logo"><a href="http://plone.org">plone.org</a></h1>
				<div id="portal-skinswitcher"></div>

				<h5 class="hiddenStructure">Sections</h5>

				<ul id="portal-globalnav">
					<xsl:call-template name="menu_up_default" />
			   	</ul>

				<h5 class="hiddenStructure">Personal tools</h5>

				<ul id="portal-personaltools"><li class="portalNotLoggedIn">&amp;nbsp;</li></ul>

				<div id="portal-breadcrumbs">

	            		<span>&amp;nbsp;</span>

			    </div>
			</div>
		</div>

    <div class="visualClear"></div>

	<table id="portal-columns">
    	<tbody>
        	<tr>
				<td id="portal-column-one">
    	        	<div class="visualPadding">
    	        		<div class="portlet" id="portlet-navigation-tree">
    	        			<div>
    	        				<h5>Navigation</h5>
    	        				<div class="portletBody">
    	        					<div class="portletContent odd">
										<a class="navItem navRootItem" href="home.html"><span class="navItemText">Home</span></a>
										<xsl:call-template name="menu_left_default"/>
						            </div>
						        </div>
						    </div>
						</div>
					</div>
				</td>
				<td id="portal-column-content">
					<div id="content" class="">
						<div class="documentContent" id="region-content">
							<a name="documentContent"></a>

							<div>
								<h2 class="documentFirstHeading">Novels and short stories</h2>
							</div>

							<table width="100%">
								<tr>
									<td width="100%" align="left" valign="top">
										<TABLE border="0" cellpadding="0" cellspacing="10">
											<xsl:for-each select="VTABLE[@VNAME='francescoluti_books_detalle']/ROW[@columna='Novels and short stories']">
												<xsl:sort select="@descripcion" order="descending"/>
												<tr>
													<td height="90" width="100" valign="center" align="center">
														<a href="{@link_titulo}">
														<img border="0" src="{@img}" /></a>
													</td>
													<td valign='center'>
														<a href='{@link_autor}'><xsl:value-of select="@autor"/></a>
														<br />
														<b><a href='{@link_titulo}'><xsl:value-of select="@titulo"/></a></b>
														<br />
														<xsl:value-of select="@descripcion"/>
													</td>
												</tr>
											</xsl:for-each>	
										</TABLE>
									</td>
								</tr>
							</table>

							<div>
								<h2 class="documentFirstHeading">Anthologies</h2>
							</div>

							<table width="100%">
								<tr>
									<td width="100%" align="left" valign="top">
										<TABLE border="0" cellpadding="0" cellspacing="10">
											<xsl:for-each select="VTABLE[@VNAME='francescoluti_books_detalle']/ROW[@columna='Anthologies']">
												<xsl:sort select="@descripcion" order="descending"/>
												<tr>
													<td height="90" width="100" valign="center" align="center">
														<a href="{@link_titulo}">
														<img border="0" src="{@img}" /></a>
													</td>
													<td valign='center'>
														<a href='{@link_autor}'><xsl:value-of select="@autor"/></a>
														<br />
														<b><a href='{@link_titulo}'><xsl:value-of select="@titulo"/></a></b>
														<br />
														<xsl:value-of select="@descripcion"/>
													</td>
												</tr>
											</xsl:for-each>	
										</TABLE>
									</td>
								</tr>
							</table>

							<div>
								<h2 class="documentFirstHeading">Translation and editing</h2>
							</div>

							<table width="100%">
								<tr>
									<td width="100%" align="left" valign="top">
										<TABLE border="0" cellpadding="0" cellspacing="10">
											<xsl:for-each select="VTABLE[@VNAME='francescoluti_books_detalle']/ROW[@columna='Translation and editing']">
												<xsl:sort select="@descripcion" order="descending"/>
												<tr>
													<td height="90" width="100" valign="center" align="center">
														<a href="{@link_titulo}">
														<img border="0" src="{@img}" /></a>
													</td>
													<td valign='center'>
														<a href='{@link_autor}'><xsl:value-of select="@autor"/></a>
														<br />
														<b><a href='{@link_titulo}'><xsl:value-of select="@titulo"/></a></b>
														<br />
														<xsl:value-of select="@descripcion"/>
													</td>
												</tr>
											</xsl:for-each>	
										</TABLE>
									</td>
								</tr>
							</table>

						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	</body>

		
	</xsl:template>
		
</xsl:stylesheet>
