<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:import href="../menu-common.xsl" />

	<xsl:param name="table" />
	<xsl:param name="id_deseado" select="1" />
	
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
										<a class="navItem navRootItem currentNavItem" href="showContent.jsp?table=francescoluti_home"><span class="navItemText">Home</span></a>
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
							<DIV>
                                <xsl:for-each select="VTABLE[@VNAME='francescoluti_home_detalle']/ROW[@id=$id_deseado]">
                                <h1 class="documentFirstHeading"><img src="../../portals/francescoluti/img/flag/flag-{@idioma}.gif" /><xsl:value-of select="@titulo"/></h1>
                                <div class="centrado">
                                     <table>
                                            <tr>
                                                <td valign="top">
													<img src="../../{@imagen}" alt="FrancescoLuti" />
													<br />
													<br />
													<br />
													<br />
													<xsl:value-of select="@novedad" />
													<br />
												</td>
                                                <td>
                                                    <table>
                                                        <tr colspan="2">
                                                            <td id="portal-column-content">
																<div class="documentContentSmall" id="region-content">

																	<div>
																		<h2><xsl:value-of select="@subtitulo"/></h2>
																		<h4><xsl:value-of select="@texto"/></h4>
																		<h3><xsl:value-of select="@adicional"/></h3>
																	</div>
																	<div>
																		<a href="showContent.jsp?table=francescoluti_home&amp;id_deseado=1"><img alt="Italiano" src="../../portals/francescoluti/img/flag/flag-it.gif"/></a>
																		<a href="showContent.jsp?table=francescoluti_home&amp;id_deseado=2"><img alt="Ingles" src="../../portals/francescoluti/img/flag/flag-en.gif"/></a>
																		<a href="showContent.jsp?table=francescoluti_home&amp;id_deseado=3"><img alt="Español" src="../../portals/francescoluti/img/flag/flag-es.gif"/></a>
																	</div>
																</div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                     							<table>
	                                     							<tr>
																		<td valign="top">
																			<img src="../../portals/francescoluti/img/books/francesco/tn_millepie_retoque.jpg" border="0" /><br />
																			<a href="http://www.polistampa.com/asp/sl.asp?id=3861">
                                                                				<img align="right" src="../../portals/francescoluti/img/carr.gif" border="0" />
																			</a>
																		</td>
																		<td>
																			<div class="documentContentSmall" id="region-content">
																			<h3>Bookshops/Librerie:</h3>
																				<xsl:for-each select="../../VTABLE[@VNAME='francescoluti_librerias']/ROW">
																					<xsl:value-of select="@nombre" /> (<xsl:value-of select="@direccion" />) <br/>
																				</xsl:for-each>
																			</div>
																		</td>
																	</tr>
																</table>
															</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                     </table>
									
									 <div class="documentByLine">
									     <span>cREATED BY</span>
										 <a href="http://www.accreativos.com">aCCREATIVOS</a>
										 <p>Recommend Firefox / 1024x768</p>
									 </div>
								</div>
								</xsl:for-each>
							</DIV>
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	</body>

		
	</xsl:template>
		
</xsl:stylesheet>
