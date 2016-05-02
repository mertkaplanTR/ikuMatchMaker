<%@ Page Language="C#" AutoEventWireup="true" CodeFile="afterLogin.aspx.cs" Inherits="afterLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>AFTER LOGIN PAGE</title>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="css/owl.theme.css" rel="stylesheet" />
    <link href="css/owl.carousel.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link href="css/css-intro.css" rel="stylesheet" />
    <link href="css/css-index.css" rel="stylesheet" />
<%--    <link href="css/css-index-yellow.css" rel="stylesheet" />
    <link href="css/css-index-red.css" rel="stylesheet" />
    <link href="css/css-index-purple.css" rel="stylesheet" />
    <link href="css/css-index-orange.css" rel="stylesheet" />
    <link href="css/css-index-green.css" rel="stylesheet" />--%>
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
			 
	 
			  <div id="navbar-scroll" class="collapse navbar-collapse navbar-backyard navbar-right">
				<ul class="nav navbar-nav">
					<li><a href="index.aspx">Anasayfa</a></li>
					<li><a href="bildirimler.aspx">Bildirimler</a></li>
					<li><a href="mesaj.aspx">Mesajlar</a></li>
					<li><a href="bilgiguncelle.aspx">Ayarlar</a></li>
					<li><a href="cikis.aspx">Çıkış</a></li>
					
				</ul>
			  </div>
		</div>
	</nav>
</div>

<div id="package">
	<div class="container">
		<div class="text-center">
			<h2 class="wow fadeInCenter">Profil Bilgilerim</h2>
			<div class="title-line wow fadeInCenter">Yeni mesaj: <asp:Literal ID="sonuc" runat="server"></asp:Literal>
			<div class="title-line wow fadeInCenter">Yeni bildirim:<asp:HyperLink ID="sonuc2" runat="server" NavigateUrl="~/bildirimler.aspx"></asp:HyperLink>
            </div>
		</div>

  <br />
		<div class="row package-option">
			<div class="col-sm-2">
               <div class="nav-side-menu">
    <div class="brand">
        <img src="images/adsiz2.jpg" /></div>
                   </br>
    <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
  
        <div class="menu-list">
  
            <ul id="menu-content" class="menu-content collapse out">
                <li>
                  <a href="#">
                  <i class="fa fa-dashboard fa-lg"></i> Dashboard
                  </a>
                </li>

                <li  data-toggle="collapse" data-target="#products" class="collapsed active">
                  <a href="#"><i class="fa fa-gift fa-lg"></i> UI Elements <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="products">
                    <li class="active"><a href="#">CSS3 Animation</a></li>
                    <li><a href="#">General</a></li>
                    <li><a href="#">Buttons</a></li>
                    <li><a href="#">Tabs & Accordions</a></li>
                    <li><a href="#">Typography</a></li>
                    <li><a href="#">FontAwesome</a></li>
                    <li><a href="#">Slider</a></li>
                    <li><a href="#">Panels</a></li>
                    <li><a href="#">Widgets</a></li>
                    <li><a href="#">Bootstrap Model</a></li>
                </ul>


                <li data-toggle="collapse" data-target="#service" class="collapsed">
                  <a href="#"><i class="fa fa-globe fa-lg"></i> Services <span class="arrow"></span></a>
                </li>  
                <ul class="sub-menu collapse" id="service">
                  <li>New Service 1</li>
                  <li>New Service 2</li>
                  <li>New Service 3</li>
                </ul>


                <li data-toggle="collapse" data-target="#new" class="collapsed">
                  <a href="#"><i class="fa fa-car fa-lg"></i> New <span class="arrow"></span></a>
                </li>
                <ul class="sub-menu collapse" id="new">
                  <li>New New 1</li>
                  <li>New New 2</li>
                  <li>New New 3</li>
                </ul>


                 <li>
                  <a href="#">
                  <i class="fa fa-user fa-lg"></i> Profile
                  </a>
                  </li>

                 <li>
                  <a href="#">
                  <i class="fa fa-users fa-lg"></i> Users
                  </a>
                </li>
            </ul>
     </div>
</div>
       


         
         
    
                
                
          


               
			

           
            </div> <!---------------------------------- 222222'LUK KOLONUN BITISI----------------->


			<!---------------------------------- 1000000'LUK KOLONUN BASLANGICI----------------->
			<div class="col-sm-10">
			 <div class="price-box wow fadeInUp">

                 <div class="price-heading text-center">
                    <h3>Begenilenler: <asp:HyperLink ID="likedNumber" runat="server" NavigateUrl="~/begenilenKisiler.aspx"></asp:HyperLink>&emsp;&emsp;  
                    Begenenler: <asp:HyperLink ID="likerNumber" runat="server"  NavigateUrl="~/begenenKisiler.aspx"></asp:HyperLink></h3>
                     </div>
                 <div class="testi-item">
						<div class="client-pic text-left">
						
							<!-- /.client photo -->
							<center>
                                <img src="images/adembavas.jpg" alt="client"><br /><br />
                           <asp:Label ID="Label1" runat="server" Text="Adiniz: "></asp:Label>
                               <asp:Literal ID="isim" runat="server"></asp:Literal>
                            <asp:Label ID="soyadi" runat="server"></asp:Label>&emsp;&emsp;
			               <asp:Label ID="Label2" runat="server" Text="Mail Adresiniz: "></asp:Label><asp:Label ID="email" runat="server"></asp:Label>            
                              </center>
                         </div>     
		</div>
	    <div class="row screenshots"> <center><h3>Fotograflarım:</h3></center>
                <br />
			<div id="screenshots" class="owl-carousel">
				<!-- /.screenshot images -->
				<div class="screen wow fadeInUp">
					<a href="images/aa.jpg" data-toggle="lightbox"><img src="images/aa.jpg" alt="Screenshot"></a>
				</div>
				
				<div class="screen wow fadeInUp" data-wow-delay="0.1s">
					<a href="images/adembavas.jpg" data-toggle="lightbox"><img src="images/adembavas.jpg" alt="Screenshot"></a>
				</div>
				
				<div class="screen wow fadeInUp" data-wow-delay="0.2s">
					<a href="images/aa.jpg" data-toggle="lightbox"><img src="images/aa.jpg" alt="Screenshot"></a>
				</div>
				
				<div class="screen wow fadeInUp" data-wow-delay="0.3s">
					<a href="images/aa.jpg" data-toggle="lightbox"><img src="images/aa.jpg" alt="Screenshot"></a>
				</div>
				
                

			
			</div>
		</div>
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
			<div class="text-center wow fadeInUp" style="font-size: 14px;">Copyright <a href="http://www.mertkaplanblog.wordpress.com">Mert Kaplan</a></div>
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
    
        </form>
   
</body>
</html>
