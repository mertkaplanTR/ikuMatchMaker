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
<div class="col-sm-2">
        <h3>Detaylı Arama</h3>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <br />
         Cinsiyet:
         <br />
         <asp:DropDownList ID="sex" runat="server">
             <asp:ListItem>Erkek</asp:ListItem>
             <asp:ListItem>Kadın</asp:ListItem>
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
             <asp:ListItem>Mimarlik</asp:ListItem>
              <asp:ListItem>Muhendislik</asp:ListItem>
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
             <asp:ListItem>Siyah</asp:ListItem>
              <asp:ListItem>Sari</asp:ListItem>
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

        </div>
        <p>
            
            <asp:DataList ID="DataList2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyField="userID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" />
                <ItemTemplate>
                    userID:
                    <asp:Label ID="userIDLabel" runat="server" Text='<%# Eval("userID") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    surname:
                    <asp:Label ID="surnameLabel" runat="server" Text='<%# Eval("surname") %>' />
                    <br />
                    sex:
                    <asp:Label ID="sexLabel" runat="server" Text='<%# Eval("sex") %>' />
                    <br />
                    mailAddress:
                    <asp:Label ID="mailAddressLabel" runat="server" Text='<%# Eval("mailAddress") %>' />
                    <br />
                    password:
                    <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
                    <br />
                    birthday:
                    <asp:Label ID="birthdayLabel" runat="server" Text='<%# Eval("birthday") %>' />
                    <br />
                    phoneNumber:
                    <asp:Label ID="phoneNumberLabel" runat="server" Text='<%# Eval("phoneNumber") %>' />
                    <br />
                    facebook:
                    <asp:Label ID="facebookLabel" runat="server" Text='<%# Eval("facebook") %>' />
                    <br />
                    twitter:
                    <asp:Label ID="twitterLabel" runat="server" Text='<%# Eval("twitter") %>' />
                    <br />
                    instagram:
                    <asp:Label ID="instagramLabel" runat="server" Text='<%# Eval("instagram") %>' />
                    <br />
                    snapchat:
                    <asp:Label ID="snapchatLabel" runat="server" Text='<%# Eval("snapchat") %>' />
                    <br />
                    campus:
                    <asp:Label ID="campusLabel" runat="server" Text='<%# Eval("campus") %>' />
                    <br />
                    department:
                    <asp:Label ID="departmentLabel" runat="server" Text='<%# Eval("department") %>' />
                    <br />
                    shortInfo:
                    <asp:Label ID="shortInfoLabel" runat="server" Text='<%# Eval("shortInfo") %>' />
                    <br />
                    hairType:
                    <asp:Label ID="hairTypeLabel" runat="server" Text='<%# Eval("hairType") %>' />
                    <br />
                    hairColor:
                    <asp:Label ID="hairColorLabel" runat="server" Text='<%# Eval("hairColor") %>' />
                    <br />
                    eyeColor:
                    <asp:Label ID="eyeColorLabel" runat="server" Text='<%# Eval("eyeColor") %>' />
                    <br />
                    height:
                    <asp:Label ID="heightLabel" runat="server" Text='<%# Eval("height") %>' />
                    <br />
                    weight:
                    <asp:Label ID="weightLabel" runat="server" Text='<%# Eval("weight") %>' />
                    <br />
                    place:
                    <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' />
                    <br />
                    profilePicture:
                    <asp:Label ID="profilePictureLabel" runat="server" Text='<%# Eval("profilePicture") %>' />
                    <br />
                    smokingHabit:
                    <asp:Label ID="smokingHabitLabel" runat="server" Text='<%# Eval("smokingHabit") %>' />
                    <br />
                    isActive:
                    <asp:Label ID="isActiveLabel" runat="server" Text='<%# Eval("isActive") %>' />
                    <br />
                    status:
                    <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
                    <br />
                    registerTime:
                    <asp:Label ID="registerTimeLabel" runat="server" Text='<%# Eval("registerTime") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="SELECT * FROM [user].Info WHERE sex=@sex and campus=@campus and department=@department and hairType=@hairType and hairColor=@hairColor and eyeColor=@eyeColor">
                <SelectParameters>
                    <asp:SessionParameter Name="sex" SessionField="cinsiyet" />
                    <asp:SessionParameter Name="campus" SessionField="kampus" />
                    <asp:SessionParameter Name="department" SessionField="bolum" />
                    <asp:SessionParameter Name="hairType" SessionField="sactipi" />
                    <asp:SessionParameter Name="hairColor" SessionField="sacrengi" />
                    <asp:SessionParameter Name="eyeColor" SessionField="gozrengi" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>

    </form>
    <p>
        &nbsp;</p>
</body>
</html>
