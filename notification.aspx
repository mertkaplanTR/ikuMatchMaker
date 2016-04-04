<%@ Page Language="C#" AutoEventWireup="true" CodeFile="notification.aspx.cs" Inherits="notification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="bildirimGosterButonu" runat="server" Text="bildirimlerigoster" OnClick="bildirimGosterButonu_Click" />
    </div>
        <asp:Label ID="sonucuGoster" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="islemdenSonraButonu" runat="server" Text="islemdenSonraButonu" OnClick="islemdenSonraButonu_Click" />
        <asp:Label ID="islemdenSonra" runat="server" Text=""></asp:Label>
          <br />
        <br />
        <asp:Button ID="isimleriGoster" runat="server" Text="isimleriGoster" OnClick="isimleriGoster_Click" />
    </form>
</body>
</html>
