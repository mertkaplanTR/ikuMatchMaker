<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditUserInfo.aspx.cs" Inherits="EditUserInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 327px;
            text-align: right;
        }
        .auto-style2 {
            width: 205px;
        }
        .auto-style3 {
            width: 327px;
            text-align: right;
            height: 81px;
        }
        .auto-style4 {
            width: 205px;
            height: 81px;
        }
        .auto-style5 {
            height: 81px;
        }
        .auto-style6 {
            width: 327px;
            text-align: right;
            height: 26px;
        }
        .auto-style7 {
            width: 205px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 327px;
            text-align: right;
            height: 25px;
        }
        .auto-style10 {
            width: 205px;
            height: 25px;
        }
        .auto-style11 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Mail Address"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtMailAddress" runat="server" Height="16px" TextMode="Email"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" MaxLength="16" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblPasswordLength" runat="server" Text="6 &lt; Password Length &lt; 17" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Passwords should match!" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPhone" runat="server" Height="17px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Facebook Profile"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtFacebook" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Twitter Profile"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtTwitter" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Instagram Profile"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtInstagram" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label9" runat="server" Text="Snapchat Profile"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtSnapchat" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label10" runat="server" Text="Campus"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:DropDownList ID="ddlCampus" runat="server">
                        <asp:ListItem>Ataköy</asp:ListItem>
                        <asp:ListItem>Şirinevler</asp:ListItem>
                        <asp:ListItem>İncirli</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label11" runat="server" Text="Department"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlDepartment" runat="server">
                        <asp:ListItem>Hukuk</asp:ListItem>
                        <asp:ListItem>Bilgisayar Mühendisliği</asp:ListItem>
                        <asp:ListItem>İşletme</asp:ListItem>
                        <asp:ListItem>Grafikerlik</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label12" runat="server" Text="Short Information"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtShortInfo" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label13" runat="server" Text="Hair Type"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtHairType" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label14" runat="server" Text="Hair Color"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtHairColor" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label15" runat="server" Text="Weight"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtWeight" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblWeight" runat="server" Text="Weight cannot be Negative !" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label16" runat="server" Text="Place"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPlace" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Text="Smoking Habit"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlSmokingHabit" runat="server" Height="16px">
                        <asp:ListItem Value="Evet">Evet</asp:ListItem>
                        <asp:ListItem Value="Hayır">Hayır</asp:ListItem>
                        <asp:ListItem Value="Sosyal İçiçi">Sosyal İçiçi</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnUpdateInfo" runat="server" Text="Button" OnClick="btnUpdateInfo_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
