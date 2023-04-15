<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editpassword.aspx.cs" Inherits="NCC_editpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>



            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:TemplateField HeaderText="username" SortExpression="username">
                        <%--<EditItemTemplate>
                            <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" ReadOnly="true"  runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                        </InsertItemTemplate>--%>
                        <ItemTemplate>
                            <asp:Label ID="Label1" ReadOnly="true"  runat="server" Text='<%# Bind("username") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
            </asp:DetailsView>



        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [adminlogin] WHERE [id] = @id" InsertCommand="INSERT INTO [adminlogin] ([username], [password]) VALUES (@username, @password)" SelectCommand="SELECT * FROM [adminlogin]" UpdateCommand="UPDATE [adminlogin] SET [username] = @username, [password] = @password WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
