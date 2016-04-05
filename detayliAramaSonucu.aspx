<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detayliAramaSonucu.aspx.cs" Inherits="detayliAramaSonucu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Detaylı Arama Sonucu</title>
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
				<a class="navbar-brand site-name" href="#top"><img src="images/logo3.png" alt="logo"/></a>
			  </div>
			  <div id="navbar-scroll" class="collapse navbar-collapse navbar-backyard navbar-right">
				<ul class="nav navbar-nav" id="giris">
                    <li><a href="#top">Ana Sayfa</a></li>
                    
					<li><a href="~giris.aspx">Mesajlar</a></li>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/giris.aspx" >Bildirimler</asp:HyperLink>
					<li><a href="#contact">Cikis</a></li>
				</ul>
			  </div>

                
                <div class="form-group has-feedback">
            		<label for="search" class="sr-only">Search</label>
              		<asp:TextBox ID="search" runat="server" CssClass="form-control" placeholder="Hızlı Ara"></asp:TextBox>
            	</div>
            
		</div>
	</nav>
</div>
<div class="col-sm-2">
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
             <asp:ListItem>Dalgali</asp:ListItem>
             <asp:ListItem>Kivircik</asp:ListItem>
         </asp:DropDownList><br /><br />

         Sac Rengi:<br />
         <asp:DropDownList ID="sacRengi" runat="server">
              <asp:ListItem>Sari</asp:ListItem>
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

<%--         Boyu:<br />
         <asp:DropDownList ID="Boy" runat="server">
              <asp:ListItem>140 cm - 160 cm</asp:ListItem>
             <asp:ListItem>160 cm - 180 cm</asp:ListItem>
             <asp:ListItem>180 cm - 200 cm</asp:ListItem>
         </asp:DropDownList><br />--%>
         
         
    
                
                <asp:Button ID="detayliAraButonu" runat="server" Text="Ara" CssClass="btn btn-price" OnClick="detayliAraButonu_Click"/>
          
			</div>

    <div class="col-sm-10">
        <div class="text-center">
			<h2 class="wow fadeInCenter">Profil Bilgilerim</h2>
			<div class="title-line wow fadeInCenter">Hosgeldin session ID'si:<asp:Literal ID="sonuc" runat="server"></asp:Literal>
                <div class="client-pic text-left">
						
							<!-- /.client photo -->

                                <img src="images/adembavas.jpg" alt="client" style="margin-left:-35px;"/>
                            <br />
                           <asp:Label ID="isim" runat="server"></asp:Label>
                           <asp:Label ID="soyadi" runat="server"></asp:Label><asp:Label ID="email" runat="server"></asp:Label>            

                         </div>
			</div>
        <br />
        <br />
                <br />
        <br />
                <br />
        <br />
                <br />
        <br />
                <br />
        <br />
                <br />
        <br />
                <br />
        <br />


			 <div class="price-box wow fadeInUp">
        <asp:GridView ID="GridView1" CssClass="table table-hover table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False">
            <Columns>
                <asp:ImageField HeaderText="Resim" DataImageUrlField="" ControlStyle-Height="60px" ControlStyle-Width="60px">
<ControlStyle Height="60px" Width="60px"></ControlStyle>
                </asp:ImageField>
                <asp:BoundField DataField="name" HeaderText="İsim" SortExpression="name" />
                <asp:BoundField DataField="surname" HeaderText="Soyisim" SortExpression="surname" />
                <asp:HyperLinkField Text="Profile Git" />
                <asp:HyperLinkField NavigateUrl="~/YerBildirim.aspx" Text="Uye Nerede ?" />
            </Columns>
        </asp:GridView>                        
             </div>
        </div>

    </form>
</body>
</html>
