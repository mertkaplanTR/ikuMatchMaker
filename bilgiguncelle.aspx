<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bilgiguncelle.aspx.cs" Inherits="bilgiguncelle" %>

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
					<div class="logo wow fadeInDown"> <a href="index.aspx">
                        <asp:Label ID="sonuc" runat="server"></asp:Label>
                        <img src="images/logo3.png" alt="logo"></a></div>

					<!-- /.main title -->
						<h1 class="wow fadeInLeft">
						Istanbul Kultur Universitesi Matchmaker Projesi
                             
						</h1>

					<!-- /.header paragraph -->
					<div class="landing-text wow fadeInUp">
						<p>Matchmaker projesi, IKU kampusundeki tum ogrencilerini tanimasini amaclayan bir sosyal medya projesidir. 
                            Elinizdeki kisitli bilgiler ile aradiginiz kisiyi bulun!
                            Girdiğiniz bilgilerin doğru oluşu arandğınızda bulunma ihtimalinizi artırır.
						</p>
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

						<input type="hidden" name="id" value="deneme2">
                            <div class="form-group">
                                <asp:TextBox ID="txtMailAddress" runat="server" CssClass="form-control input-lg" required placeHolder="Mail Adresi" type="text" TextMode="Email"></asp:TextBox>   
							</div>
                       
                            <div class="form-group">
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control input-lg" required placeHolder="Şifre" type="text" TextMode="Password"></asp:TextBox>   
							    <br />
							    <asp:Label ID="lblPasswordLength" runat="server" Text="Şifre uzunluğu 6-17 karakter arasında olmalı" Visible="False"></asp:Label>
							</div>
                            <div class="form-group">
                                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control input-lg" required placeHolder="Tekrar Şifre" type="text" TextMode="Password"></asp:TextBox>   
							    <asp:Label ID="lblConfirmPassword" runat="server" Text="Şifreler eşleşmeli !" Visible="False"></asp:Label>
                                <br />
							</div>
                            <div class="form-group">
                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control input-lg" required placeHolder="Telefon Numarası" type="text" TextMode="Phone"></asp:TextBox>   
							</div>
                            <div class="form-group">
                                <asp:TextBox ID="txtFacebook" runat="server" CssClass="form-control input-lg" required placeHolder="Facebook Profili" type="text"></asp:TextBox>   
							</div>
                            <div class="form-group">
                                <asp:TextBox ID="txtTwitter" runat="server" CssClass="form-control input-lg" required placeHolder="Twitter Profili" type="text"></asp:TextBox>   
							</div>
                            <div class="form-group">
                                <asp:TextBox ID="txtInstagram" runat="server" CssClass="form-control input-lg" required placeHolder="İnstagram Profili" type="text"></asp:TextBox>   
							</div>
                            <div class="form-group">
                                <asp:TextBox ID="txtSnapchat" runat="server" CssClass="form-control input-lg" required placeHolder="Snapchat Profili" type="text"></asp:TextBox>  
                                </div> 

<%--                         <div class="dropdown">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                        class="btn btn-primary dropdown-toggle"></asp:DropDownList></div>
                        --%>
                        <div class="dropdown">
                            <br />

                    <asp:Label ID="Label13" runat="server" Font-Size="18px" ForeColor="White" Text="Kampüs"></asp:Label>
                            <br />
                            
                        <asp:DropDownList ID="ddlCampus" runat="server" class="btn btn-primary dropdown-toggle" OnSelectedIndexChanged="ddlCampus_SelectedIndexChanged">
                        <asp:ListItem>Ataköy</asp:ListItem>
                        <asp:ListItem>Şirinevler</asp:ListItem>
                        <asp:ListItem>İncirli</asp:ListItem>
                    </asp:DropDownList>
                            
                            <br />
                            <br />
                        </div>

                    <asp:Label ID="Label11" runat="server"  Font-Size="18px" ForeColor="White" Text="Bölüm"></asp:Label>
                        <br />
                        
                        
                    <asp:DropDownList ID="ddlDepartment" runat="server" class="btn btn-primary dropdown-toggle" OnSelectedIndexChanged="ddlDepartment_SelectedIndexChanged">
                        <asp:ListItem>Hukuk</asp:ListItem>
                        <asp:ListItem>Bilgisayar Mühendisliği</asp:ListItem>
                        <asp:ListItem>İşletme</asp:ListItem>
                        <asp:ListItem>Grafikerlik</asp:ListItem>
                    </asp:DropDownList>
                        <br />
                        <br />
                        
                            <div class="form-group">
                                <asp:TextBox ID="txtShortInfo" runat="server" CssClass="form-control input-lg" required placeHolder="Hakkınızda Kısa Bilgi" type="text"></asp:TextBox>   
							</div>
                            <div class="form-group">
                                <asp:TextBox ID="txtHairType" runat="server" CssClass="form-control input-lg" required placeHolder="Saç Tipi" type="text"></asp:TextBox>   
							</div>
                            <div class="form-group">
                                <asp:TextBox ID="txtHairColor" runat="server" CssClass="form-control input-lg" required placeHolder="Saç Rengi" type="text"></asp:TextBox>   
							</div>

							<div class="form-group">
                                <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control input-lg" required placeHolder="Kilo" type="Number"></asp:TextBox>   
							    <br />
                                <asp:Label ID="lblWeight" runat="server" Text="Çok ince olduğuna eminiz. Ancak ağırlık negatif olamaz :)" Visible="False"></asp:Label>
							</div>
							<div class="form-group">
                                <asp:TextBox ID="txtPlace" runat="server" CssClass="form-control input-lg" required placeholder="Yaşadığınız Yer" type="text"></asp:TextBox>
							</div>

                        

<%--                         <div class="dropdown">
                        <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-primary dropdown-toggle"></asp:DropDownList></div>
                        --%>
                        <asp:Label ID="lblSmokingHabit" runat="server" Font-Size="18px" ForeColor="White" Text="Sigara Alışkanlığı" style="font-size: 18px"></asp:Label>
                        <div class="dropdown">
                        <asp:DropDownList ID="ddlSmokingHabit" runat="server"  class="btn btn-primary dropdown-toggle">
                        <asp:ListItem Value="Evet">Evet</asp:ListItem>
                        <asp:ListItem Value="Hayır">Hayır</asp:ListItem>
                        <asp:ListItem Value="Sosyal İçiçi">Sosyal İçiçi</asp:ListItem>
                    </asp:DropDownList></div>
                        <br />
                            


							<div class="form-group last">
                                <asp:Button ID="btnUpdateInfo" runat="server" class="btn btn-warning btn-block btn-lg" text="Bilgileri Güncelle" OnClick="btnUpdateInfo_Click" />
                                <br />
                                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
							</div>
							<p class="privacy text-center">Kullanim sartlari ve gerekli kayit olurken kullanmaniz gereken mail hakkinda <a href="privacy.html">kullanim sartlari</a> sayfasini lutfen ziyaret ediniz.</p>
						
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

</html>
