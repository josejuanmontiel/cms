<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:import href="../menu-common.xsl" />

	<xsl:param name="table" />
	<xsl:param name="id" />
	
	<xsl:output method="html" indent="yes" encoding="ISO-8859-1"/>

	<xsl:template match="/TABLE">

  <head>
    <meta charset="utf-8" />
    <title>Francesco Luti Web</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <!-- Le styles -->
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
    </style>
    <link href="../css/bootstrap-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
    <link rel="shortcut icon" href="ico/favicon.png" />
    
  </head>

	<body>
	
	<xsl:call-template name="menu_up_default">
		<xsl:with-param name="detail">../</xsl:with-param>
	</xsl:call-template>

    <div class="container-fluid">
      <div class="row-fluid">
        
		<xsl:call-template name="menu_left_default">
			<xsl:with-param name="detail">../</xsl:with-param>
		</xsl:call-template>
        
        <div class="span9">

			<h1><xsl:value-of select="@adicional"/></h1>
			<xsl:for-each select="VTABLE[@VNAME='francescoluti_home_detalle']/ROW[@id=$id]">
			
	          <div class="hero-unit">
	            <h2><xsl:value-of select="@titulo"/></h2>
	            <img src="../{@imagen}" alt="FrancescoLuti" />
	            <h3><xsl:value-of select="@subtitulo"/></h3>
	            <p><xsl:value-of select="@texto"/></p>
	          </div>

	          <div class="span12">
	            <img src="../upload/books/millepie.jpg" alt="Millepie" />
	            <p><xsl:value-of select="@novedad"/></p>
	          </div>
			
			</xsl:for-each>

			  <a href="home_detalle_detail_1.html"><img alt="Italiano" src="../img/flag/flag-it.gif"/></a>
  			  <a href="home_detalle_detail_2.html"><img alt="Ingles" src="../img/flag/flag-en.gif"/></a>
  			  
        </div><!--/span-->
      </div><!--/row-->	

      <hr />

      <footer>
      	<p><a href="http://www.accreativos.com">aCCREATIVOS</a></p>
      </footer>
      
    </div><!--/.fluid-container-->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap-transition.js"></script>
    <script src="../js/bootstrap-alert.js"></script>
    <script src="../js/bootstrap-modal.js"></script>
    <script src="../js/bootstrap-dropdown.js"></script>
    <script src="../js/bootstrap-scrollspy.js"></script>
    <script src="../js/bootstrap-tab.js"></script>
    <script src="../js/bootstrap-tooltip.js"></script>
    <script src="../js/bootstrap-popover.js"></script>
    <script src="../js/bootstrap-button.js"></script>
    <script src="../js/bootstrap-collapse.js"></script>
    <script src="../js/bootstrap-carousel.js"></script>
    <script src="../js/bootstrap-typeahead.js"></script>	
	
    <script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script>
	<script type="text/javascript">
		_uacct = "UA-577628-5";
		urchinTracker();
	</script>
	
	</body>
	
	</xsl:template>
		
</xsl:stylesheet>
