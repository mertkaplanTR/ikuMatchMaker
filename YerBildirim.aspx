<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YerBildirim.aspx.cs" Inherits="YerBildirim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yer Goster</title>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['corechart'] });
        $(document).ready(function () {            
            $("#goster").click(function () {
                if (navigator.geolocation) {
                    $("#map").show();
                    $("#map").html("Bilgiler Yükleniyor");
                    $.ajax({
                        type: "POST",
                        url: "YerBildirim.aspx/goster",
                        data: "{}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            var data1 = null;
                            var data2 = null;
                            var lat = null;
                            var lng = null;
                            var person = "";
                            $("#data").html(msg.d);
                            data1 = msg.d;
                            data2 = JSON.parse(data1);

                            var map = new google.maps.Map(document.getElementById('map'), {
                                center: { lat: -34.397, lng: 150.644 },
                                zoom: 6
                            });


                            for (i = 0; i < data2.length; i++) {

                                var mapOptions = { center: { lat: data2[i].Latitude, lng: data2[i].Longitude }, };
                                var marker = new google.maps.Marker();
                                person = data2[i].name + data2[i].surname;
                                marker.setMap(map);
                                marker.setPosition(mapOptions.center);
                                map.setCenter(mapOptions.center);
                                attachPerson(marker, person);
                            }


                            function attachPerson(marker, person) {
                                var infowindow = new google.maps.InfoWindow({
                                    content: person
                                });

                                marker.addListener('click', function () {
                                    infowindow.open(marker.get('map'), marker);
                                });
                            }

                        }
                    }); // End of Ajax

                }
            })
            $("#git").click(function () {

                if (navigator.geolocation) {

                    $.ajax({
                        type: "POST",
                        url: "YerBildirim.aspx/git",
                        data: "{}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (msg) {
                            var data1 = null;
                            var data2 = null;
                            var lat = null;
                            var lng = null;
                            var person = "";
                            $("#data").html(msg.d);
                            data1 = msg.d;
                            data2 = JSON.parse(data1);

                            var directionsDisplay = new google.maps.DirectionsRenderer({ suppressMarkers: false });
                            var directionsService = new google.maps.DirectionsService();

                            var map = new google.maps.Map(document.getElementById('map'), {
                                center: { lat: -34.397, lng: 150.644 },
                                zoom: 6
                            });

                            directionsDisplay.setMap(map);

                            var mapOptions1 = { center: { lat: data2[0].Latitude, lng: data2[0].Longitude }, };
                            person = data2[0].name + data2[0].surname;
                            var marker1 = new google.maps.Marker();
                            marker1.setMap(map);
                            marker1.setPosition(mapOptions1.center);
                            map.setCenter(mapOptions1.center);
                            attachPerson(marker1, person);

                            navigator.geolocation.getCurrentPosition(function (position) {
                                
                                var pos = {
                                    lat: position.coords.latitude,
                                    lng: position.coords.longitude
                                };

                                var marker2 = new google.maps.Marker();
                                marker2.setMap(map);
                                marker2.setPosition(pos);
                                attachPerson(marker2, 'Siz');
                                map.setCenter(pos);

                            });
                           
                            var request = {
                                origin: pos,
                                destination: mapOptions1.center,
                                travelMode: google.maps.TravelMode.WALKING
                            };

                            directionsService.route(request, function (result, status) {
                                if (status == google.maps.DirectionsStatus.OK) {
                                    directionsDisplay.setDirections(result);
                                }
                            });
   
                            function attachPerson(marker, person) {
                                var infowindow = new google.maps.InfoWindow({
                                    content: person
                                });

                                marker.addListener('click', function () {
                                    infowindow.open(marker.get('map'), marker);
                                });
                            }

                        }
                    }); // End of Ajax

                }
            })
        })
        </script>
    <style>
      #map {
        width: 500px;
        height: 400px;
      }
    </style>
            <style>
      #mapn {
        width: 500px;
        height: 400px;
      }
                .btn-price {
                    height: 26px;
                }
    </style>
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

<%--         Boyu:<br />
         <asp:DropDownList ID="Boy" runat="server">
              <asp:ListItem>140 cm - 160 cm</asp:ListItem>
             <asp:ListItem>160 cm - 180 cm</asp:ListItem>
             <asp:ListItem>180 cm - 200 cm</asp:ListItem>
         </asp:DropDownList><br />--%>
         
         
    
                
               <asp:Button ID="detayliAraButonu" runat="server" Text="Ara" CssClass="btn btn-price" OnClick="detayliAraButonu_Click"/>
			</div>        
        <div class="col-sm-10" style="margin-top:50px;">
            <input id="goster" type="button" value="Uyenın En Son Konumunu Goster" /><br /><br />
            <input id="git" type="button" value="Konumumu Bul" /><br /><br />
            <div id="data"></div>
            <div id="map"></div>
        </div>
    </form>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCXjPckRlU9YxaCsQ6NXiRKSS0h3TGSdk4&callback=initMap">
    </script>  
</body>
</html>
