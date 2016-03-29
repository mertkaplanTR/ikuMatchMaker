<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="0">mert</asp:ListItem>
            <asp:ListItem Value="1">kaplan</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="girisButonu" runat="server" Text="Button" OnClick="girisButonu_Click1" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
