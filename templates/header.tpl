<!DOCTYPE html>
<html>
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->
	{function.buildMetaTag}
	<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{config.relative_path}/stylesheet.css?{config.cache-buster}" />
	<!-- BEGIN linkTags -->
	{function.buildLinkTag}
	<!-- END linkTags -->

	<!--[if lt IE 9]>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/es5-shim/2.3.0/es5-shim.min.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.js"></script>
  		<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
  		<script>__lt_ie_9__ = 1;</script>
	<![endif]-->

	<script>
		var RELATIVE_PATH = "{config.relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>
	<script src="{config.relative_path}/nodebb.min.js?{config.cache-buster}"></script>
	<!-- IMPORT partials/requirejs-config.tpl -->

	<script src="/plugins/nodebb-theme-slate/vendor/jquery.waypoints.min.js"></script>
	<script src="/plugins/nodebb-theme-slate/vendor/jquery.cookie.js"></script>


	<link rel="stylesheet" id="et-gf-raleway-css" href="https://fonts.googleapis.com/css?family=Raleway:400,100,200,300,600,500,700,800,900&amp;subset=latin" type="text/css" media="all">
	<link rel="stylesheet" id="et-gf-lato-css" href="https://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic&amp;subset=latin" type="text/css" media="all">

	<link rel="stylesheet" id="divi-style-css" href="/plugins/nodebb-theme-slate/vendor/style.css" type="text/css" media="all">

	<style>
		a {
			color: #2EA3F2;
		}

		body {
			color: #666666;
		}

		#et_search_icon:hover, .mobile_menu_bar:before, .footer-widget h4, .et-social-icon a:hover, .comment-reply-link, .form-submit input, .et_pb_sum, .et_pb_pricing li a, .et_pb_pricing_table_button, .et_overlay:before, .entry-summary p.price ins, .woocommerce div.product span.price, .woocommerce-page div.product span.price, .woocommerce #content div.product span.price, .woocommerce-page #content div.product span.price, .woocommerce div.product p.price, .woocommerce-page div.product p.price, .woocommerce #content div.product p.price, .woocommerce-page #content div.product p.price, .et_pb_member_social_links a:hover {
			color: #2EA3F2 !important;
		}

		.woocommerce .star-rating span:before, .woocommerce-page .star-rating span:before, .et_pb_widget li a:hover, .et_pb_bg_layout_light .et_pb_promo_button, .et_pb_bg_layout_light .et_pb_more_button, .et_pb_filterable_portfolio .et_pb_portfolio_filters li a.active, .et_pb_filterable_portfolio .et_pb_portofolio_pagination ul li a.active, .et_pb_gallery .et_pb_gallery_pagination ul li a.active, .wp-pagenavi span.current, .wp-pagenavi a:hover, .et_pb_contact_submit, .et_pb_bg_layout_light .et_pb_newsletter_button, .nav-single a, .posted_in a {
			color: #2EA3F2 !important;
		}

		.et-search-form, .nav li ul, .et_mobile_menu, .footer-widget li:before, .et_pb_pricing li:before, blockquote {
			border-color: #2EA3F2;
		}

		#main-footer {
			background-color: #222222;
		}

		#top-menu a {
			color: #666666;
		}

		#top-header .et-container {
			padding-top: 10px;
		}

		.et-container {
			margin: 0 auto;
			position: relative;
			padding-left: 35px;
			padding-right: 43px
		}

		#top-menu li.current-menu-ancestor > a, #top-menu li.current-menu-item > a, .bottom-nav li.current-menu-item > a {
			color: #2EA3F2;
		}

		h1, h2, h3, h4, h5, h6 {
			font-family: 'Raleway', Helvetica, Arial, Lucida, sans-serif !important;
		}

		body, input, textarea, select {
			font-family: 'Lato', Helvetica, Arial, Lucida, sans-serif !important;
		}
	</style>
	<!-- IF useCustomJS -->
	{{customJS}}
	<!-- ENDIF useCustomJS -->
	<!-- IF useCustomCSS -->
	<style type="text/css">{{customCSS}}</style>
	<!-- ENDIF useCustomCSS -->

</head>

<body class="{bodyClass}">
<input id="isLoggedIn" type="hidden" template-variable="loggedIn" value="{loggedIn}"/>
<input id="currentTpl" type="hidden" template-variable="currentTpl" value="{app.template}"/>

<!-- this detects when the masthead should fix -->
<div id="header-menu-detector"></div>

<div class="navbar navbar-inverse header ant-fixed-header" role="navigation" id="header-menu" component="navbar">
	<div class="container">
		<!-- IMPORT partials/menu.tpl -->
	</div>
	<div class="loading-bar"></div>
</div>

<div id="wrap" class="container">

	<div class="container" id="content" component="content">
	<!-- IMPORT partials/noscript/warning.tpl -->