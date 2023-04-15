<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paradepicsfolder.aspx.cs" Inherits="NCC_paradepicsfolder" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        a{
            text-decoration:none;
            color:black;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/NCC/img/cancel.png" Height="50" Width="50"  OnClick="ImageButton1_Click"/>
        
        <div>
            <center>
            <h1>PARADE FOLDERS</h1>
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:BoundField DataField="a_id" HeaderText="ID" SortExpression="a_id" />
                    <asp:TemplateField HeaderText="FOLDER NAME" SortExpression="a_name">
                        
                        <ItemTemplate>
                            <img src="img/folder.png" height="40" width="40" style="vertical-align:middle;" />
                            <a href="paradeopenfolders.aspx?id=<%#Eval("a_id")%>"  ><%#Eval("a_name")%></a>
                                
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="updatedat" HeaderText="UPDATED AT" SortExpression="a_id" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
                </center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [a_id], [a_name],[updatedat] FROM [paradegallery]"></asp:SqlDataSource>
    </form>
</body>
</html>
