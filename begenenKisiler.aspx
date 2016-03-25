﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="begenenKisiler.aspx.cs" Inherits="begenenKisiler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Begenen Kisiler</title>
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
</head>
<body>
    <form id="form1" runat="server">
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
		
			<!-- /.pricing title -->
			<h2 class="wow fadeInLeft">Beni Begenen Kisiler</h2>
			<div class="title-line wow fadeInRight"></div>
		</div>
		<div class="row package-option">

			<!-- /.package 1 -->
			<div class="col-sm-3">
			  <div class="price-box wow fadeInUp">
			   <div class="price-heading text-center">
			   
			   <!-- /.package icon -->
					<i class="pe-7s-radio pe-5x"></i>
					
					<!-- /.package name -->
                   <h3><asp:Label ID="begenenKisiAdi" runat="server"></asp:Label></h3>
			   </div>
			   
			   <!-- /.price -->
				<div class="price-group text-center">
                    <img src="images/adembavas.jpg" />
				</div>
			
				<!-- /.package features -->
			   <ul class="price-feature text-center">
				  <li><strong>Kampus:</strong> Atakoy Kampusu</li>
				  <li><strong>Bolum:</strong> CSE</li>
				  <li><strong>Yasi:</strong> 23</li>
				  <li><strong>Sehir:</strong>Istanbul</li>
				  				  
			   </ul>
			   
			   <!-- /.package button -->
			   <div class="price-footer text-center">
				 <a class="btn btn-price" href="#">Kullanıcıyı Incele</a>
				</div>	
			  </div>
			</div>
			
			<!-- /.package 2 -->
			<div class="col-sm-3">
			  <div class="price-box wow fadeInUp" data-wow-delay="0.2s">
			   <div class="price-heading text-center">

			   <!-- /.package icon -->
				<i class="pe-7s-joy pe-5x"></i>

			   <!-- /.package name -->
				<h3>Standard</h3>
			   </div>
			   
			   <!-- /.price -->
				<div class="price-group text-center">
					<span class="dollar">$</span>
					<span class="price">19</span>
					<span class="time">/mo</span>
				</div>
			
				<!-- /.package features -->
			   <ul class="price-feature text-center">
				  <li><strong>300MB</strong> Disk Space</li>
				  <li><strong>400MB</strong> Bandwidth</li>
				  <li><strong>5</strong> Subdomains</li>
				  <li><strong>10</strong> Email Accounts</li>
				  <li><strike>Webmail Support</strike></li>			  
			   </ul>

				<!-- /.package button -->
			   <div class="price-footer text-center">
				 <a class="btn btn-price" href="#">BUY NOW</a>
				</div>
			  </div>
			</div>	
			
			<!-- /.package 3 -->
			<div class="col-sm-3">
			  <div class="price-box wow fadeInUp" data-wow-delay="0.4s">
			   <div class="price-heading text-center">
			   
					<!-- /.package icon -->
					<i class="pe-7s-science pe-5x"></i>
				
					<!-- /.package name -->
					<h3>Advance</h3>
			   </div>
			   
			   <!-- /.price -->
				<div class="price-group text-center">
					<span class="dollar">$</span>
					<span class="price">29</span>
					<span class="time">/mo</span>
				</div>
			
				<!-- /.package features -->
			   <ul class="price-feature text-center">
				  <li><strong>1GB</strong> Disk Space</li>
				  <li><strong>1GB</strong> Bandwidth</li>
				  <li><strong>10</strong> Subdomains</li>
				  <li><strong>25</strong> Email Accounts</li>
				  <li>Webmail Support</li>					  
			   </ul>
			   
			   <!-- /.package button -->
			   <div class="price-footer text-center">
				 <a class="btn btn-price" href="#">BUY NOW</a>
				</div>	
			  </div>
			</div>
			
			<!-- /.package 4 -->
			<div class="col-sm-3">
			  <div class="price-box wow fadeInUp" data-wow-delay="0.6s">
			   <div class="price-heading text-center">
			   
					<!-- /.package icon -->
					<i class="pe-7s-tools pe-5x"></i>
					
					<!-- /.package name -->
					<h3>Ultimate</h3>
			   </div>
			   
			   <!-- /.price -->
				<div class="price-group text-center">
					<span class="dollar">$</span>
					<span class="price">49</span>
					<span class="time">/mo</span>
				</div>
			
				<!-- /.package features -->
			   <ul class="price-feature text-center">
				  <li><strong>5GB</strong> Disk Space</li>
				  <li><strong>5GB</strong> Bandwidth</li>
				  <li><strong>50</strong> Subdomains</li>
				  <li><strong>50</strong> Email Accounts</li>
				  <li>Webmail Support</li>			  
			   </ul>
			   
			   <!-- /.package button -->
			   <div class="price-footer text-center">
				 <a class="btn btn-price" href="#">BUY NOW</a>
				</div>
			  </div>
			</div>

		</div>
	</div>
</div>
    </form>
</body>
</html>
