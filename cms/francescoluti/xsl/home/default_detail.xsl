<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:import href="../menu-common.xsl" />

	<xsl:param name="table" />
	<xsl:param name="id" />
	
	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/TABLE">
	<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />

	    <title>Francesco Luti Web</title>

	    <link rel="Stylesheet" type="text/css" href="../css/ploneNS4.css" />
	    <style type="text/css" media="screen">&#60;&#33;&#45;&#45; @import url(../css/ploneColumns.css); &#45;&#45;&#62;</style>
	    <style type="text/css" media="screen">&#60;&#33;&#45;&#45; @import url(../css/plone.css); &#45;&#45;&#62;</style>
	    <style type="text/css" media="all">&#60;&#33;&#45;&#45; @import url(../css/ploneCustom.css); &#45;&#45;&#62;</style>
	    <link rel="shortcut icon"
	          href="../css/favicon.ico"
	          type="image/x-icon" />
	    <style type="text/css" media="all">@import url(../css/helpcenter.css);</style>
	</head>


	<body class="section-documentation">
		<div id="visual-portal-wrapper">

	      		<div id="portal-top">

				<h1 id="portal-logo"><a href="http://plone.org">plone.org</a></h1>
				<div id="portal-skinswitcher"></div>

				<h5 class="hiddenStructure">Sections</h5>

				<ul id="portal-globalnav">
					<xsl:call-template name="menu_up_default" >
						<xsl:with-param name="detail">../</xsl:with-param>
					</xsl:call-template>
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
										<a class="navItem navRootItem currentNavItem" href="../home/home_detail_1.html"><span class="navItemText">Home</span></a>
										<xsl:call-template name="menu_left_default">
											<xsl:with-param name="detail">../</xsl:with-param>
										</xsl:call-template>
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
								<xsl:for-each select="ROW">
								<h1 class="documentFirstHeading"><xsl:value-of select="@titulo"/></h1>
								<div class="centrado">
 									<table>
										<tr>
											<td valign="top">
												<img src="../{@imagen}" alt="FrancescoLuti" />
											</td>
											<td>
												<div class="documentContentSmall" id="region-content">
													<h2><xsl:value-of select="@subtitulo"/></h2>
													<xsl:value-of select="@texto"/>
												</div>
											</td>
										</tr>
										<tr>
											<td id="portal-column-content">
												<div class="documentContentSmall" id="region-content">
													<xsl:value-of select="@novedad"/>
												</div>
												<div>
													<a href="home_detail_1.html"><img alt="Espanol" src="../img/flag/flag-es.gif"/></a>
													<a href="home_detail_2.html"><img alt="Italiano" src="../img/flag/flag-it.gif"/></a>
												</div>
											</td>
										</tr>
									</table>
								</div>
								</xsl:for-each>
							</DIV>
							 <div class="documentByLine">
								 <span>cREATED BY</span>
								 <a href="http://www.accreativos.com">aCCREATIVOS</a>
								 <p>Recommend Firefox / 1024x768</p>
							 </div>
						</div>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	</body>
	</html>
	</xsl:template>
		
</xsl:stylesheet>
