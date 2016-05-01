<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mesajyaz.aspx.cs" Inherits="mesaj" EnableEventValidation="false" %>


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
    <div id="contact">
	<div class="contact fullscreen parallax" style="background-image:url('images/bg2.jpg');" data-img-width="2000" data-img-height="1334" data-diff="100">
		<div class="overlay">
			<div class="container">
				<div class="row contact-row">
                    
                    <asp:Label ID="sonuc" runat="server" Text=""></asp:Label>
                    <h1>Eşleştiğim Kişiler</h1>
					<!-- /.address and contact -->
					<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="userID" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="surname" HeaderText="surname" SortExpression="surname" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>

                    


					<div class="col-sm-5 contact-left wow fadeInUp">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnection %>" SelectCommand="select [userID],[name],[surname] from [user].[Info] as UI join
[system].[Match] as SM on UI.userID=SM.person2 where SM.person1=@admin">
                            <SelectParameters>
                                <asp:SessionParameter Name="admin" SessionField="isim" />
                            </SelectParameters>
                        </asp:SqlDataSource>
					</div>
					<!-- /.contact form -->
					<div class="col-sm-7 contact-right">
							<div class="form-group">
                                <asp:TextBox ID="gonderilecekID" runat="server" class="form-control wow fadeInUp" placeholder="Gonderilecek Kisinin ID'si"></asp:TextBox>
							</div>
				
							<div class="form-group">
                                <asp:TextBox ID="mesajAlani" runat="server" rows="20" cols="20" class="form-control input-message wow fadeInUp" placeholder="Message" ></asp:TextBox>
							</div>
							<div class="form-group">
                                <asp:Button ID="submit" runat="server" Text="Button"  class="btn btn-success wow fadeInUp" OnClick="submit_Click" />
							</div>
						</form>		
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
    </form>
</body>
</html>
