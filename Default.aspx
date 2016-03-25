<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="mailAddress" runat="server"></asp:TextBox>
        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        <asp:Button ID="girisButonu" runat="server" Text="Button" OnClick="girisButonu_Click" />
        <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
