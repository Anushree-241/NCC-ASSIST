<%@ Page Language="C#" AutoEventWireup="true" CodeFile="openfolders.aspx.cs" Inherits="NCC_openfolders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="adminhome.aspx">Home</a></li>
    <li class="breadcrumb-item active" aria-current="page">Camp Pictures</li>
  </ol>
</nav>
        </div>
        <center>
            <asp:Label ID="Label2"  runat="server"></asp:Label>
            <asp:Label ID="Label1" Visible="false" runat="server"></asp:Label>
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Add Photos" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:FileUpload ID="FileUpload1" AllowMultiple="true" Visible="false" runat="server" /><asp:Button ID="Button2" Visible="false" CssClass="btn btn-success" runat="server" Text="Upload" OnClick="Button2_Click" />
            <br />
            <br />
            <asp:ListBox ID="ListBox1" Visible="false" runat="server"></asp:ListBox>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="id" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                <img src="../<%#Eval("a_name")%>/<%#Eval("pic_loc")%>" height="250" width="250" />
                <%--<asp:Label ID="pic_locLabel" runat="server" Text='<%# Eval("pic_loc") %>' />--%>
                <br />
            </ItemTemplate>

        </asp:DataList>
        </center>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM pictures,photogallery WHERE photogallery.a_id = pictures.a_id and  pictures.a_id = @a_id">
            <SelectParameters>
                <asp:QueryStringParameter Name="a_id" QueryStringField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


    </form>
</body>
</html>
