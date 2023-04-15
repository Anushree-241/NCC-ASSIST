<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="NCC_Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 61%;
            height: 335px;
        }
        .auto-style2 {
            width: 377px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    <p>
        &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" rowspan="5"><img src="Uploades/gallery-2.jpg" style="object-fit:cover"/></td>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="EVENT NAME"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>DESCRIPTION</td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>DATE</td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>TIME</td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>TYPE</td>
                <td>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
    </form>
    </body>
</html>
