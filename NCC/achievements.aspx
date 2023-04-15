<%@ Page Language="C#" AutoEventWireup="true" CodeFile="achievements.aspx.cs" Inherits="NCC_keyhighlights" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style type="text/css">
        
        #Button2{
             border-style:none;
             padding-top:2px;
            padding:8px;
           border-radius:10px;
           color:#fff;
           font-size:xx-large;
           background-color:forestgreen;
           margin-left:1rem;
           margin-top:-3rem;
           text-decoration:none;
           box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <a id="Button2" href="adminhome.aspx">HOME</a>
        <div class="container" >
            <div class="row">

                <div class="col-md-5">
                    <asp:DetailsView style="margin-top:7rem;" BorderStyle="Solid" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="600px" Width="525px" AllowPaging="True" BorderColor="Gray" BorderWidth="5px" >
                        <Fields>
                            
                            <%--<asp:BoundField DataField="id"  InsertVisible="False" ReadOnly="True" SortExpression="id" />--%>
                            <asp:TemplateField SortExpression="achievement">
                                
                                <EditItemTemplate>
                                    <h1>EDIT ACHIEVEMENTS</h1>
                                    <hr />
                                    <asp:TextBox ID="TextBox1" Width="500" Height="400" runat="server" Text='<%# Bind("achievement") %>' TextMode="MultiLine"></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" Width="700" Height="400" runat="server" Text='<%# Bind("achievement") %>' TextMode="MultiLine"></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <h1>EDIT ACHIEVEMENTS</h1>
                                    <hr />
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("achievement") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ItemStyle-HorizontalAlign="Center" ControlStyle-CssClass="btn btn-info" ShowDeleteButton="True" ShowEditButton="True" >
<ControlStyle CssClass="btn btn-info"></ControlStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                            </asp:CommandField>
                        </Fields>
                        <PagerSettings Mode="NumericFirstLast" />
                        <PagerStyle BackColor="#CCCCCC" BorderColor="Black" ForeColor="Black" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </div>
                <div class="col-md-3">
                     <div class="card  border-5 text-center"  style="margin-top:7rem;width:50rem;">
  <div class="card-header">
   ADD ACHIEVEMENTS
  </div>
  <div class="card-body bg-light">
    <h5 class="card-title">Enter The Text Below</h5>
    <p class="card-text">
        <asp:TextBox ID="TextBox1" Width="700" Height="400" runat="server" TextMode="MultiLine"></asp:TextBox>
    </p>
      <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Font-Size="X-Large" Text="SUBMIT" OnClick="Button1_Click" />
  </div>
  <div class="card-footer text-muted">
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
  </div>
</div>
                </div>





            </div>
           

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [id], [achievement] FROM [achievements]" DeleteCommand="DELETE FROM [achievements] WHERE [id] = @id" InsertCommand="INSERT INTO [achievements] ([achievement]) VALUES (@achievement)" UpdateCommand="UPDATE [achievements] SET [achievement] = @achievement WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="achievement" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="achievement" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
