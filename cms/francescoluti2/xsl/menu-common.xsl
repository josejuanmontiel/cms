<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
	<!-- Menu superior para la XSL de DEFAULT (generacion de HTML)... -->
    <xsl:template name="menu_up_default">
    	<xsl:param name="detail" />

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
           <div class="nav-collapse collapse">
            <ul class="nav">
    	
		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME='francescoluti_home'">
				<xsl:choose>
		        <xsl:when test="@SELECTED='true'">
			        <li class="active"><a href="{$detail}home.html"><xsl:value-of select="@TITLE"/></a></li>
		        </xsl:when>
		        <xsl:otherwise>
			        <li><a href="{$detail}home.html"><xsl:value-of select="@TITLE"/></a></li>
				</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>

		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>
		        <xsl:when test="@SELECTED='true'">
			        <li class="active"><a href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a></li>
		        </xsl:when>
		        <xsl:otherwise>
			        <li><a href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a></li>
				</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>
		
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
		
		
    </xsl:template>
    
	<!-- Menu lateral para la XSL de DEFAULT (generacion de HTML)... -->
    <xsl:template name="menu_left_default">
    	<xsl:param name="detail" />
   		<div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
    
		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>
				<xsl:when test="@SELECTED='true'">
					<li class="active"><a href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a></li>
				</xsl:when>
				<xsl:otherwise>
					<li><a href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a></li>
				</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>
		
            </ul>
          </div><!--/.well -->
        </div><!--/span-->

	</xsl:template>
	
	<!-- Menu superior para la XSL de SHOW... -->
    <xsl:template name="menu_up_show">
		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME='francescoluti_home'">
				<xsl:choose>
		        <xsl:when test="@SELECTED='true'">
			        <li class="selected"><a href="showContent.jsp?table={@NAME}"><xsl:value-of select="@TITLE"/></a></li>
		        </xsl:when>
		        <xsl:otherwise>
			        <li class="plain"><a href="showContent.jsp?table={@NAME}"><xsl:value-of select="@TITLE"/></a></li>
				</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>

		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>
		        <xsl:when test="@SELECTED='true'">
			        <li class="selected"><a href="showContent.jsp?table={@NAME}"><xsl:value-of select="@TITLE"/></a></li>
		        </xsl:when>
		        <xsl:otherwise>
			        <li class="plain"><a href="showContent.jsp?table={@NAME}"><xsl:value-of select="@TITLE"/></a></li>
				</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>
    </xsl:template>

	<!-- Menu lateral para la XSL de SHOW... -->
    <xsl:template name="menu_left_show">
		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>
				<xsl:when test="@SELECTED='true'">
					<a class="navItem navLevel1 currentNavItem" href="showContent.jsp?table={@NAME}"><xsl:value-of select="@TITLE"/></a>
				</xsl:when>
				<xsl:otherwise>
					<a class="navItem navLevel1" href="showContent.jsp?table={@NAME}"><xsl:value-of select="@TITLE"/></a>
				</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	
    <xsl:template name="menu_left_default_menu_profile">

   		<div class="span3">
          <div class="dropdown clearfix">
			<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
 

		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>

			        <xsl:when test="@SELECTED='true'">
			   			<li class="dropdown-submenu">
							<a tabindex="-1" href="../{@VALUE}"><xsl:value-of select="@TITLE"/></a>

						<xsl:if test="@NAME='francescoluti_profile'">
							<ul class="dropdown-menu">

							<xsl:for-each select="../../ROWS/ROW">
					   			<li>
									<a tabindex="-1" href="profile_detail_{@id}.html">
										<span><img alt="{@lang_desc}" src="../img/flag/flag-{@lang}.gif"/><xsl:value-of select="@lang_desc"/></span>
									</a>
								</li>
							</xsl:for-each>

							</ul>

						</xsl:if>

		    			</li>

			        </xsl:when>
			        <xsl:otherwise>
			   			<li>
							<a tabindex="-1" href="../{@VALUE}"><xsl:value-of select="@TITLE"/></a>
						</li>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>

    		</ul>
		  </div>
		</div>

	</xsl:template>


	<!-- Menu lateral para la XSL de DEFAULT de la opcion OTHER PUBLIC (generacion de HTML)... -->
    <xsl:template name="menu_left_default_other_pub">
    	<xsl:param name="detail" />
    
		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>
			        <xsl:when test="@SELECTED='true'">
						<a class="navItem navLevel1 currentNavItem" href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a>
						<xsl:if test="@TITLE='Other Publication'">
							<xsl:for-each select="../../ROW">
								<xsl:sort select="id"/>
								<xsl:variable name='pos' select='position()' />
								<xsl:if test="not($detail)">
									<a class="navItem navLevel2" href="other_publication/other_publication_detail_{$pos}.html">
										<span><xsl:value-of select="@publication_type"/></span>
									</a>
								</xsl:if>
								<xsl:if test="$detail!=''">
									<a class="navItem navLevel2" href="">
										<span><xsl:value-of select="@publication_type"/></span>
									</a>
								</xsl:if>
							</xsl:for-each>
						</xsl:if>
			        </xsl:when>
			        <xsl:otherwise>
						<a class="navItem navLevel1" href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

</xsl:stylesheet>
