<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:import href="../menu-common.xsl" />

	<xsl:param name="table" />
	
	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/TABLE">

	<head>
	    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

	    <title>Francesco Luti Web</title>

	    <link rel="Stylesheet" type="text/css" href="../../portals/francescoluti/css/ploneNS4.css" />
	    <style type="text/css" media="screen">&#60;&#33;&#45;&#45; @import url(../../portals/francescoluti/css/ploneColumns.css); &#45;&#45;&#62;</style>
	    <style type="text/css" media="screen">&#60;&#33;&#45;&#45; @import url(../../portals/francescoluti/css/plone.css); &#45;&#45;&#62;</style>
	    <link rel="alternate stylesheet" type="text/css"
	          media="screen"
	          href="../../portals/francescoluti/css/ploneTextSmall.css"
	          title="Small Text" />
	    <link rel="alternate stylesheet" type="text/css"
	          media="screen"
	          href="../../portals/francescoluti/css/ploneTextLarge.css"
	          title="Large Text" />
	    <link rel="stylesheet" type="text/css" media="print"
	          href="../../portals/francescoluti/css/plonePrint.css" />
	    <link rel="stylesheet" type="text/css"
	          media="projection"
	          href="../../portals/francescoluti/css/plonePresentation.css" />
	    <style type="text/css" media="all">&#60;&#33;&#45;&#45; @import url(../../portals/francescoluti/css/ploneCustom.css); &#45;&#45;&#62;</style>
	    <link rel="shortcut icon"
	          href="../../portals/francescoluti/css/favicon.ico"
	          type="image/x-icon" />
	    <link rel="search" href="../../portals/francescoluti/css/search_form"
	          title="Search this site" />
	    <link rel="up"
	          href="../../portals/francescoluti/css/documentation/tutorial/plone-apache"
	          title="Up one level" />
	    <style type="text/css" media="all">@import url(../../portals/francescoluti/css/helpcenter.css);</style>
	    <script type="text/javascript" src="js/plone_javascript_variables.js"></script>
	    <script type="text/javascript" src="js/plone_javascripts.js"></script>
		<script>
			function edit(id) {
				var form = document.getElementById(id);
				form.action='editContent.jsp';
				form.submit();
			}
		</script>
	</head>

	<body class="section-documentation">
		<div id="visual-portal-wrapper">

	      		<div id="portal-top">
	      		
				<h1 id="portal-logo"><a href="http://plone.org">plone.org</a></h1>
				<div id="portal-skinswitcher"></div>

				<h5 class="hiddenStructure">Sections</h5>

				<ul id="portal-globalnav">
					<xsl:call-template name="menu_up_show" />
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
										<a class="navItem navRootItem" href="showContent.jsp?table=francescoluti_home"><span class="navItemText">Home</span></a>
										<xsl:call-template name="menu_left_show" />
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
								<h1 class="documentFirstHeading">Books</h1>
							</div>
							<table width="100%">
								<tr>
									<td width="50%" align="left" valign="top">
										<TABLE border="0" cellpadding="0" cellspacing="10">
											<th colspan="2">Novels and short stories</th>
											<tr>
												<td colspan="2"><a href="insertContent.jsp?table_to_insert={$table}&amp;columna=izq">Insertar nueva traduccion...</a></td>
											</tr>
											<xsl:for-each select="ROW[@columna='izq']">
												<xsl:sort select="@descripcion" order="descending"/>
												<xsl:variable name='pos' select='position()' />															
													<tr>
														<td height="90" width="100" align="left">
															<a href="{@link_titulo}">
															<img border="0" src="../../portals/francescoluti/{@img}" /></a>
														</td>
														<td valign='center'>
															<a href='{@link_autor}'><xsl:value-of select="@autor"/></a>
															<br />
															<b><a href='{@link_titulo}'><xsl:value-of select="@titulo"/></a></b>
															<br />
															<xsl:value-of select="@descripcion"/>
	
															<form action="DeleteContent" id="{@id}" method="post">
																<xsl:for-each select="@*">
																	<input type="hidden" name="{name()}" value="{.}"/>
																</xsl:for-each>
																<input type="hidden" name="table_to_insert" value="{$table}"/>
																<input type="submit" value="delete"/>
																<input type="button" value="edit" onclick="edit({@id});"/>
															</form>
														</td>
													</tr>
											</xsl:for-each>	
										</TABLE>
									</td>
									<td width="50%" align="right" valign="top">
										<TABLE border="0" cellpadding="0" cellspacing="10">
											<th colspan="2">Translation and editing</th>
											<tr>
												<td colspan="2"><a href="insertContent.jsp?table_to_insert={$table}&amp;columna=drch">Insertar nuevo libro...</a></td>
											</tr>
											<xsl:for-each select="ROW[@columna='drch']">
												<xsl:sort select="@id" order="ascending" data-type="number"/>
												<xsl:variable name='pos' select='position()' />															
													<tr>
														<td align="right" valign='center'>
															<a href='{@link_autor}'><xsl:value-of select="@autor"/></a>
															<br />
															<b><a href='{@link_titulo}'><xsl:value-of select="@titulo"/></a></b>
															<br />
															<xsl:value-of select="@descripcion"/>
	
															<form action="DeleteContent" id="{@id}" method="post">
																<xsl:for-each select="@*">
																	<input type="hidden" name="{name()}" value="{.}"/>
																</xsl:for-each>
																<input type="hidden" name="table_to_insert" value="{$table}"/>
																<input type="submit" value="delete"/>
																<input type="button" value="edit" onclick="edit({@id});"/>
															</form>
														</td>
														<td height="90" width="100" align="right">
															<a href="{@link_titulo}">
															<img border="0" src="../../portals/francescoluti/{@img}" /></a>
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
