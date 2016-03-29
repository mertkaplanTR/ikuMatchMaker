<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giris.aspx.cs" Inherits="giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>LOGIN PAGE</title>
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
  <body>

    <!-- /.preloader -->
    <div id="preloader"></div>
    <div id="top"></asp:Label></div>

    <!-- /.parallax full screen background image -->
    <div class="fullscreen landing parallax" style="background-image:url('images/bg2.jpg');" data-img-width="2000" data-img-height="1333" data-diff="100">
   
        <div class="overlay">
            <div class="container">
                <div class="col-md-10 col-md-offset-1 text-center">

                    <!-- /.logo -->
                    <div class="logo wow fadeInDown" style="margin-top: 50px"> <a href="index.aspx"><img src="images/logo3.png" alt="logo"></a></div>

                    <!-- /.main title -->
                    <h2 class="wow fadeInUp" style="margin-bottom: 50px">
                        GIRIS YAP | SIFRE SIFIRLA
                    </h2>

                </div>
            </div>
        </div>
    </div>

    <!-- NAVIGATION -->

    <div id="shortcode-button">
        <div class="container">
            <div class="row">
                <div class="col-sm-7">
                    <center><h3>Giris Yap</h3></center>                
                        <div class="form-group">
                            <asp:TextBox ID="mailAddress" runat="server" CssClass="form-control input-lg" type="email" placeholder="Sisteme Kayitli Mail Adresiniz" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="password" runat="server" CssClass="form-control input-lg" type="password" placeholder="Sifreniz" required></asp:TextBox>
                        </div>
                        <div class="form-group last">
                            <asp:Button ID="girisButonu" runat="server" Text="Giris Yap" cssClass="btn btn-primary btn-block btn-lg"  OnClick="girisButonu_Click" />
                      <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
                            
                             </div>  
                </div>

                <div class="col-sm-5">
                    
                    <center><h3>Sifremi Unuttum</h3></center>
                  
                        <div class="form-group">
                            <input class="form-control input-lg" name="MERGE2" id="email" type="email" placeholder="Gecerli Mail Adresiniz">
                        </div>
                        <div class="form-group last">
                            <input type="submit" class="btn btn-warning btn-block btn-lg" value="GONDER">
                        </div>
                </div>
            </div>
        </div>
    </div>




    <!-- /.footer -->
    <footer id="footer">
        <div class="container">
            <div class="col-sm-4 col-sm-offset-4">
                </br>
                </br>
                </br>
                <div class="text-center wow fadeInUp" style="font-size: 14px;">Copyright Mert Kaplan 2016</div>
                <div class="text-center wow fadeInUp" style="font-size: 14px;"> Template by <a href="http://www.mertkaplanblog.wordpress.com">Mert KAPLAN</a></div>

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
