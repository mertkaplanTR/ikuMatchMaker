<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IKU HOME PAGE</title>
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
        <body data-spy="scroll" data-target="#navbar-scroll">

<!-- /.preloader -->
<div id="preloader"></div>
<div id="top"></div>

<!-- /.parallax full screen background image -->
<div class="fullscreen landing parallax" style="background-image:url('images/bg2.jpg');" data-img-width="2000" data-img-height="1333" data-diff="100">
	
	<div class="overlay">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
				
					<!-- /.logo -->
					<div class="logo wow fadeInDown"> <a href="index.aspx"><img src="images/logo3.png" alt="logo"></a></div>

					<!-- /.main title -->
						<h1 class="wow fadeInLeft">
						Istanbul Kultur Universitesi Matchmaker Projesi
						</h1>

					<!-- /.header paragraph -->
					<div class="landing-text wow fadeInUp">
						<p>Matchmaker projesi, IKU kampusundeki tum ogrencilerini tanimasini amaclayan bir sosyal medya projesidir. Elinizdeki kisitli bilgiler ile aradiginiz kisiyi bulun!</p>
					</div>				  

					<!-- /.header button FEAUTRES VE DOWNLOAD BUTONLARI BURADA-->
					<div class="head-btn wow fadeInLeft">
						<br /><a href="giris.aspx" class="btn-primary">Giris Yap</a>
						<!--<a href="#download" class="btn-default">Download</a>-->
					</div>
	
		  

				</div> 
				
				<!-- /.signup form -->
				<div class="col-md-5">
		
					<div class="signup-header wow fadeInUp">
						<h3 class="form-title text-center">KAYIT OL</h3>
						<form class="form-header" action="http://sendmesomewhere.com/" role="form" method="POST" id="#">
						<input type="hidden" name="u" value="deneme">
						<input type="hidden" name="id" value="deneme2">
							<div class="form-group">
                                <asp:TextBox ID="firstName" runat="server" CssClass="form-control input-lg" required placeHolder="Isminiz" type="text"></asp:TextBox>   
							</div>
							<div class="form-group">
                                <asp:TextBox ID="surName" runat="server" CssClass="form-control input-lg" required placeholder="Soyadiniz" type="text"></asp:TextBox>
							</div>
                            <div class="form-group">
                                 <asp:TextBox ID="mailAdresi" runat="server" CssClass="form-control input-lg" required placeholder="E-mail Adresiniz" type="email"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="sifresi" runat="server" CssClass="form-control input-lg" required placeholder="Sifre" type="password"></asp:TextBox>
                            </div>

							<div class="form-group last">
                                <asp:Button ID="kaydolButon" runat="server" class="btn btn-warning btn-block btn-lg" text="KAYDOL" OnClick="kaydolButon_Click" />
                                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
							</div>
							<p class="privacy text-center">Kullanim sartlari ve gerekli kayit olurken kullanmaniz gereken mail hakkinda <a href="privacy.html">kullanim sartlari</a> sayfasini lutfen ziyaret ediniz.</p>
						</form>
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
			<div class="text-center wow fadeInUp" style="font-size: 14px;">Copyright Mert Kaplan 2016 - Template by <a href="http://www.mertkaplanblog.wordpress.com">Mert KAPLAN</a></div>
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
	<script>
		new WOW().init();
	</script>
  </body>
    </form>
</body>
</html>
