<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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
	
	
	
    
	<!-- Menu superior para la XSL de DEFAULT (generacion de HTML)... -->
    <xsl:template name="menu_up_default">
    	<xsl:param name="detail" />
    	
		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME='francescoluti_home'">
				<xsl:choose>
		        <xsl:when test="@SELECTED='true'">
			        <li class="selected"><a href="{$detail}home.html"><xsl:value-of select="@TITLE"/></a></li>
		        </xsl:when>
		        <xsl:otherwise>
			        <li class="plain"><a href="{$detail}home.html"><xsl:value-of select="@TITLE"/></a></li>
				</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>

		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>
		        <xsl:when test="@SELECTED='true'">
			        <li class="selected"><a href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a></li>
		        </xsl:when>
		        <xsl:otherwise>
			        <li class="plain"><a href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a></li>
				</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>
    </xsl:template>
    
	<!-- Menu lateral para la XSL de DEFAULT (generacion de HTML)... -->
    <xsl:template name="menu_left_default">
    	<xsl:param name="detail" />
    
		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>
				<xsl:when test="@SELECTED='true'">
					<a class="navItem navLevel1 currentNavItem" href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a>
				</xsl:when>
				<xsl:otherwise>
					<a class="navItem navLevel1" href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a>
				</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
    <xsl:template name="menu_left_default_profile">
    	<xsl:param name="detail" />
    
		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>
			        <xsl:when test="@SELECTED='true'">
						<a class="navItem navLevel1 currentNavItem" href="{$detail}{@VALUE}"><xsl:value-of select="@TITLE"/></a>
						<xsl:if test="@NAME='francescoluti_profile'">
							<xsl:for-each select="../../ROW">
								<xsl:if test="not($detail)">
									<a class="navItem navLevel2" href="profile/profile_detail_{@id}.html">
										<span><img alt="{@lang_desc}" src="{$detail}img/flag/flag-{@lang}.gif"/><xsl:value-of select="@lang_desc"/></span>
									</a>
								</xsl:if>
								<xsl:if test="$detail!=''">
									<a class="navItem navLevel2" href="">
										<span><img alt="{@lang_desc}" src="{$detail}img/flag/flag-{@lang}.gif"/><xsl:value-of select="@lang_desc"/></span>
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

    <xsl:template name="menu_left_default_menu_profile">
		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>
			        <xsl:when test="@SELECTED='true'">
						<a class="navItem navLevel1 currentNavItem" href="../{@VALUE}"><xsl:value-of select="@TITLE"/></a>
						<xsl:if test="@NAME='francescoluti_profile'">
							<xsl:for-each select="../../ROWS/ROW">
								<a class="navItem navLevel2" href="profile_detail_{@id}.html">
									<span><img alt="{@lang_desc}" src="../img/flag/flag-{@lang}.gif"/><xsl:value-of select="@lang_desc"/></span>
								</a>
							</xsl:for-each>
						</xsl:if>
			        </xsl:when>
			        <xsl:otherwise>
						<a class="navItem navLevel1" href="../{@VALUE}"><xsl:value-of select="@TITLE"/></a>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

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
								<xsl:if test="not($detail)">
									<a class="navItem navLevel2" href="other_publication/other_publication_detail_{@id}.html">
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

    <xsl:template name="menu_left_default_menu_other_pub">
		<xsl:for-each select="MENUS/ITEM">
			<xsl:if test="@NAME!='francescoluti_home'">
				<xsl:choose>
			        <xsl:when test="@SELECTED='true'">
						<a class="navItem navLevel1 currentNavItem" href="../{@VALUE}"><xsl:value-of select="@TITLE"/></a>
						<xsl:if test="@NAME='francescoluti_other_publication'">
							<xsl:for-each select="../../ROWS/ROW">
								<a class="navItem navLevel2" href="other_publication_detail_{@id}.html">
									<span><xsl:value-of select="@publication_type"/></span>
								</a>
							</xsl:for-each>
						</xsl:if>
			        </xsl:when>
			        <xsl:otherwise>
						<a class="navItem navLevel1" href="../{@VALUE}"><xsl:value-of select="@TITLE"/></a>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>


</xsl:stylesheet>
