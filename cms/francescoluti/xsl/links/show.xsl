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
				var form = document.forms[parseInt(id)-1];
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
								<h1 class="documentFirstHeading">Links</h1>
							</div>
							<a href="insertContent.jsp?table_to_insert={$table}&amp;columna=izq">Insertar AQUI</a>
							<xsl:for-each select="ROW">
								<xsl:variable name='pos' select='@id' />				
								
								<div style="width: 45%; float: left; text-align: center;">
									&amp;nbsp; &amp;nbsp;&amp;nbsp;<a name="{@aname}"></a>
								    <h3><a class="link-plain" href="{@link}"><xsl:value-of select="@titulo" /></a></h3>
									<p>
										<xsl:if test="@swf=''">
											<a class="link-plain" href="{@link}">
												<img style="border: 1px solid black;" src="portals/francescoluti/{@imagen}" alt="{@link}" />
											</a>
										</xsl:if>
										<xsl:if test="@swf!=''">
											<xsl:value-of select="@swf"/>
										</xsl:if>
									</p>
									<p class="discreet"><xsl:value-of select="@pie_imagen" /></p>
								</div>

								<div style="float: left; width: 45%; text-align: center; margin-top: 5em;">
									<p><xsl:value-of select="@descripcion" /></p>
									<p class="discreet"><xsl:value-of select="@texto" /></p>
								</div>
								
								<form action="DeleteContent" name="{$pos}" method="post">
									<xsl:for-each select="@*">
										<input type="hidden" name="{name()}" value="{.}"/>
									</xsl:for-each>
									<input type="hidden" name="table_to_insert" value="{$table}"/>
									<input type="submit" value="delete"/>
									<input type="button" value="edit" onclick="edit({$pos});"/>
								</form>

								<div class="visualClear">&amp;nbsp;</div>
								
							</xsl:for-each>	
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	</body>

		
	</xsl:template>
		
</xsl:stylesheet>
