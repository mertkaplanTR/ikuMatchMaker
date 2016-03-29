<%@ Page Language="C#" AutoEventWireup="true" CodeFile="afterLogin.aspx.cs" Inherits="afterLogin" %>

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
			<div class="title-line wow fadeInCenter">Hosgeldin session ID'si:<asp:Literal ID="sonuc" runat="server"></asp:Literal>
			</div>
		</div>

 
		<div class="row package-option">
            <!---------------------------------- 222222'LiK KOLONUN BASLANGICI----------------->
			<div class="col-sm-2">
     <form class="form-horizontal" role="form">
         <h3>Detaylı Arama</h3><br />
         Cinsiyet:
         <br />
         <asp:DropDownList ID="sex" runat="server">
             <asp:ListItem>Kadın</asp:ListItem>
             <asp:ListItem>Erkek</asp:ListItem>
         </asp:DropDownList>
         <br /><br />
         Kampus:<br />
         <asp:DropDownList ID="campus" runat="server">
             <asp:ListItem Value="0">Atakoy</asp:ListItem>
             <asp:ListItem Value="1">Hukuk</asp:ListItem>
             <asp:ListItem Value="2">Hazırlık</asp:ListItem>
             <asp:ListItem Value="3">MYO</asp:ListItem>
         </asp:DropDownList><br /><br />
         Bolum:<br />
         <asp:DropDownList ID="bolum" runat="server">
              <asp:ListItem>Muhendislik</asp:ListItem>
             <asp:ListItem>Mimarlik</asp:ListItem>
             <asp:ListItem>Iktisat - Isletme</asp:ListItem>
         </asp:DropDownList><br /><br />

         Sac Tipi:<br />
         <asp:DropDownList ID="sacTipi" runat="server">
              <asp:ListItem>Duz</asp:ListItem>
             <asp:ListItem>Dalgalı</asp:ListItem>
             <asp:ListItem>Kıvırcık</asp:ListItem>
         </asp:DropDownList><br /><br />

         Sac Rengi:<br />
         <asp:DropDownList ID="sacRengi" runat="server">
              <asp:ListItem>Sarı</asp:ListItem>
             <asp:ListItem>Siyah</asp:ListItem>
             <asp:ListItem>Kahve Rengi</asp:ListItem>
         </asp:DropDownList><br /><br />

             Goz Rengi:<br />
         <asp:DropDownList ID="gozRengi" runat="server">
              <asp:ListItem>Kahve</asp:ListItem>
             <asp:ListItem>Mavi</asp:ListItem>
             <asp:ListItem>Yesil</asp:ListItem>
             <asp:ListItem>Siyah</asp:ListItem>
         </asp:DropDownList><br /><br />

         Boyu:<br />
         <asp:DropDownList ID="Boy" runat="server">
              <asp:ListItem>140 cm - 160 cm</asp:ListItem>
             <asp:ListItem>160 cm - 180 cm</asp:ListItem>
             <asp:ListItem>180 cm - 200 cm</asp:ListItem>
         </asp:DropDownList><br />
         
         
        </form> 
                
               <%-- <asp:Button ID="detayliAraButonu" runat="server" Text="Ara" CssClass="btn btn-price" OnClick="detayliAraButonu_Click"/>--%>
			</div>
            <asp:Label ID="querySonuc" runat="server" Text=""></asp:Label>
            <asp:Button ID="ara2" runat="server" Text="Button" OnClick="ara2_Click" />
            <!---------------------------------- 222222'LUK KOLONUN BITISI----------------->


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
    
  </body>
    </form>
</body>
</html>
