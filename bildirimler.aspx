<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bildirimler.aspx.cs" Inherits="bildirimler" %>

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
<div id="menu">
	<nav class="navbar-wrapper navbar-default" role="navigation">
		<div class="container">
            <asp:Label ID="sonuc" runat="server" Text=""></asp:Label>
	 
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
<%--<div class="col-sm-2">
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
         
         
    
                
               <%-- <asp:Button ID="detayliAraButonu" runat="server" Text="Ara" CssClass="btn btn-price" OnClick="detayliAraButonu_Click"/>--%>
			

    <div class="col-sm-12">
           <center><h4>BENI YENI BEGENENLER</h4></center>
			 <div class="price-box wow fadeInUp">
        <asp:GridView ID="GridView1" CssClass="table table-hover table-striped" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
             
                <asp:BoundField DataField="name" HeaderText="İsim" SortExpression="name" />
                <asp:BoundField DataField="surname" HeaderText="Soyisim" SortExpression="surname" />
                <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Profile Git" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select u.name,u.surname from [user].[Info] as u inner join [system].[Likes] as t on t.person1=u.userID WHERE t.isOpen=0 and t.person2=1"></asp:SqlDataSource>
                 <asp:Button ID="okudum" runat="server" Text="okudum" OnClick="Button1_Click" />
             
             
                 <br />
                 <br />
                 <br />
                 <center><h4>OKUNMUS BILDIRIM BEGENMELERI</h4><br /></center>
                 <asp:GridView ID="GridView2" CssClass="table table-hover table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                     <Columns>
                         <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                         <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                     </Columns>
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select u.name,u.surname from [user].[Info] as u inner join [system].[Likes] as t on t.person1=u.userID WHERE t.isOpen=1 and t.person2=1"></asp:SqlDataSource>
                 <br />
             
             
             </div>
        </div>

    </form>
</body>
</html>
