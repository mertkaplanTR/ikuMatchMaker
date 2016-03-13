﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="afterLogin.aspx.cs" Inherits="afterLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>AFTER LOGIN PAGE</title>
    <link href="css/owl.theme.css" rel="stylesheet" />
    <link href="css/owl.carousel.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/css-intro.css" rel="stylesheet" />
    <link href="css/css-index.css" rel="stylesheet" />
    <link href="css/css-index-yellow.css" rel="stylesheet" />
    <link href="css/css-index-red.css" rel="stylesheet" />
    <link href="css/css-index-purple.css" rel="stylesheet" />
    <link href="css/css-index-orange.css" rel="stylesheet" />
    <link href="css/css-index-green.css" rel="stylesheet" />
    <link href="css/css-app.css" rel="stylesheet" />
    <link href="css/css-app-yellow.css" rel="stylesheet" />
    <link href="css/css-app-red.css" rel="stylesheet" />
    <link href="css/css-app-purple.css" rel="stylesheet" />
    <link href="css/css-app-orange.css" rel="stylesheet" />
    <link href="css/css-app-green.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" /> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</head>

<body>

    <form id="form1" runat="server">
    <body data-spy="scroll" data-target="#navbar-scroll">
    <!-- /.preloader -->
    <div id="preloader"></div>
    <div id="top"></div>
    <!-- /.parallax full screen background image -->
<div class="fullscreen landing parallax" style="background-image:url('images/headphones-405886.jpg');" data-img-width="2000" data-img-height="1125" data-diff="100">
	

</div>
<!-- NAVIGATION -->
<div id="menu">
	<nav class="navbar-wrapper navbar-default" role="navigation">
		<div class="container">
			  <div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-backyard">
				  <span class="sr-only">Toggle navigation</span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand site-name" href="#top"><img src="images/logo3.png" alt="logo"></a>
			  </div>
			  <div id="navbar-scroll" class="collapse navbar-collapse navbar-backyard navbar-right">
				<ul class="nav navbar-nav">
                    <li><a href="#top">Ana Sayfa</a></li>

					<li><a href="#messages">Mesajlar</a></li>
                     <li><a href="#profilim">Bildirimler</a></li>
					<li><a href="#contact">Cikis</a></li>
				</ul>
			  </div>
            <center> 
                <form action="" class="search-form">
                <div class="form-group has-feedback">
            		<label for="search" class="sr-only">Search</label>
              		<asp:TextBox ID="search" runat="server" CssClass="form-control" placeholder="Hızlı Ara"></asp:TextBox>
            	</div>
            </form>

            </center>
		</div>
	</nav>
</div>

<div id="package">
	<div class="container">
		<div class="text-center">
		
			<h2 class="wow fadeInCenter">Profil Bilgilerim</h2>
			<div class="title-line wow fadeInCenter">xxxxx</div>
		</div>

		<div class="row package-option">
			<div class="col-sm-3">
           <%-------------------------------------------------div 3 baslangıc--------------------------------------------%>
     <form class="form-horizontal" role="form">
    <div class="form-group">
      <h5>Detaylı Arama</h5>

    </div>
  </form>
                <%---------------------------------------div3 kısmı bitis----------------------------------------------------%>
			  </div>

			<!-- /.package 4 -->
			<div class="col-sm-9">
			 <div class="price-box wow fadeInUp">
			   <div class="price-heading text-left">
					<h3>Adem Bavas</h3>
			   </div>
					<img alt="client" src="images/adembavas.jpg" class="wow fadeInUp">
			   <div class="price-footer text-center">
				 <a class="btn btn-price" href="#">Profile Git</a>
				</div>	
			  </div>

		</div>
	</div>
</div>




  
<!-- /.footer -->
<footer id="footer">
	<div class="container">
		<div class="col-sm-4 col-sm-offset-4">
			<!-- /.social links -->
				<div class="social text-center">
					<ul>
						<li><a class="wow fadeInUp" href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
						<li><a class="wow fadeInUp" href="https://www.facebook.com/" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
						<li><a class="wow fadeInUp" href="https://plus.google.com/" data-wow-delay="0.4s"><i class="fa fa-google-plus"></i></a></li>
						<li><a class="wow fadeInUp" href="https://instagram.com/" data-wow-delay="0.6s"><i class="fa fa-instagram"></i></a></li>
					</ul>
				</div>	
			<div class="text-center wow fadeInUp" style="font-size: 14px;">Copyright Backyard 2015 - Template by <a href="http://www.moxdesign.com">MoxDesign</a></div>
			<a href="#" class="scrollToTop"><i class="pe-7s-up-arrow pe-va"></i></a>
		</div>	
	</div>	
</footer>

	<!-- /.javascript files -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/jquery.sticky.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/ekko-lightbox-min.js"></script>
    <script src="/js/bootstrap-select.js"></script>
    
  </body>
    </form>
</body>
</html>
