<%@ Page Language="C#" AutoEventWireup="true" CodeFile="regcandidatescamp.aspx.cs" Inherits="NCC_regcandidatescamp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style type="text/css">
        
        #Button4{
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
        #Button1,#Button2,#Button3{
            padding:7px;
            border-style:none;
            color:white;
            background-color:black;
            border-radius:10px;
            margin-right:1rem;
        }
        #Button1:hover{
            transition:ease ;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        #Button2:hover{
            transition:ease ;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        #Button3:hover{
            transition:ease ;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <a id="Button4" href="adminhome.aspx">HOME</a>
        <div class="container">
            <center>
                <h1>REGISTERED CADETS</h1>
                <div class="card bg-light" style="width:50rem;">
                    <div class="card-body">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="EXPORT AS EXCEL" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="EXPORT AS DOCUMENT" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="EXPORT AS PDF" />
                    <br />
                    <br />
                        <asp:Label ID="Label1" runat="server" Text="Sort By CAMP NAME"></asp:Label> <asp:DropDownList CssClass="btn btn-secondary dropdown-toggle" ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="camp_name" DataValueField="camp_name"></asp:DropDownList>
                    
                    </div>
                </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="5px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="c_cid" HeaderText="ID" SortExpression="c_cid" />
                    <asp:BoundField DataField="c_fname" HeaderText="FIRST NAME" SortExpression="c_fname" />
                    <asp:BoundField DataField="c_mname" HeaderText="MIDDLE NAME" SortExpression="c_mname" />
                    <asp:BoundField DataField="c_lname" HeaderText="LAST NAME" SortExpression="c_lname" />
                    <asp:BoundField DataField="c_course" HeaderText="COURSE" SortExpression="c_course" />
                    <asp:BoundField DataField="c_courseyear" HeaderText="COURSE YEAR" SortExpression="c_courseyear" />
                    <asp:BoundField DataField="c_batch" HeaderText="BATCH" SortExpression="c_batch" />
                    <asp:BoundField DataField="parentmobileno" HeaderText="PARENT's MOBILE NO." SortExpression="parentmobileno" />
                    <asp:BoundField DataField="camp_name" HeaderText="CAMP NAME" SortExpression="camp_name" />
                    <asp:TemplateField HeaderText="DECLARATION FORM ">
                        <ItemTemplate>
                            <a href="Uploades/Camp declaration form/<%#Eval ("camp_declaration")%>">View And Download</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
                </center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select c_cid,c_fname,c_mname,c_lname,c_course,c_courseyear,c_batch,parentmobileno,camp_name,camp_declaration from campreg,cadet where campreg.c_cid = cadet.cid and campreg.camp_name = @camp_name">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="camp_name" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [camp_name] FROM [camp]"></asp:SqlDataSource>
        <br />
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
