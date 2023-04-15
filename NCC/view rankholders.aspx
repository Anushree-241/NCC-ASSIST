<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view rankholders.aspx.cs" Inherits="NCC_view_rankholders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title></title>
  

</head>
    
<body>




    <form id="form1" runat="server">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/NCC/img/cancel.png" Height="50" Width="50"  OnClick="ImageButton1_Click"/>
        
        <center><h1>RANK HOLDERS</h1></center>

       
        <div align="center">           
              <asp:Button ID="Button1" runat="server"  Text="EXPORT AS EXCEL" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server"  Text="EXPORT AS DOCUMENT" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server"  Text="EXPORT AS PDF" OnClick="Button3_Click" />
            </div>  
            <br />
            <div>
                <div style="margin-left:20rem;background-color:antiquewhite;width:fit-content;padding:20px;border-radius:10px;">
                <asp:Label ID="Label2" runat="server" Text=" COURSE"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  >
                <asp:ListItem Selected="True" Hidden="hidden" Value="0">Select Course </asp:ListItem>
                <asp:ListItem>PUC</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>BA</asp:ListItem>
                <asp:ListItem>BBA</asp:ListItem>
                <asp:ListItem>B.Com</asp:ListItem>
                <asp:ListItem>B.Sc</asp:ListItem>
                <asp:ListItem>M.Com</asp:ListItem>
            </asp:DropDownList>
                    
                
                <asp:Label ID="Label3" runat="server" Style="margin-left:3rem;" Text=" COURSE YEAR"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Hidden="hidden" Value="0">Select Course Year</asp:ListItem>
                    <asp:ListItem>1stYear</asp:ListItem>
                    <asp:ListItem>2ndYear</asp:ListItem>
                    <asp:ListItem>3rdYear</asp:ListItem>
                    <asp:ListItem>4thYear</asp:ListItem>
                    <asp:ListItem>5thYear</asp:ListItem>
                    <asp:ListItem>6thYear</asp:ListItem>
                    </asp:DropDownList>

                    <asp:Label ID="Label1" runat="server" Style="margin-left:3rem;" Text=" RANK"></asp:Label>
                    <asp:DropDownList ID="DropDownList3" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Hidden="hidden" Value="0">Select Rank </asp:ListItem>
                            <asp:ListItem Value="Cadet">Cadet</asp:ListItem>
                            <asp:ListItem Value="Company Senior Under Officer">Company Senior Under Officer</asp:ListItem>
                            <asp:ListItem Value="Company Junior Under Officer">Company Junior Under Officer</asp:ListItem>
                            <asp:ListItem Value="Company Sargeant Master">Company Sargeant Master</asp:ListItem>
                            <asp:ListItem Value="Company Quater Master Sargeant">Company Quater Master Sargeant</asp:ListItem>
                            <asp:ListItem Value="Sargeant">Sargeant</asp:ListItem>
                            <asp:ListItem Value="Corporal">Corporal</asp:ListItem>
                            <asp:ListItem Value="Lanu Corporal">Lance Corporal</asp:ListItem>

                    </asp:DropDownList>
             <br /><br />
                    <center>
            <asp:Button ID="Button4" runat="server" Text="SEARCH" OnClick="Button4_Click"  />
            <asp:Button ID="Button5" runat="server" Text="CLEAR" OnClick="Button5_Click"  />
                        </center>
                    </div>
                </div>
            <br />
            <div >
                
            <asp:Label ID="Label4" runat="server" style="margin-left:35rem;"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" ></asp:Label>
                

        <div>



        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"   CellPadding="4" DataKeyNames="cid"    ForeColor="#333333"  HorizontalAlign="Center" Font-Size="Larger" BorderStyle="Solid"  >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="CADET ID" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="appno" HeaderText="REGISTER ID" SortExpression="appno" />
                    <asp:BoundField DataField="c_fname" HeaderText="FIRST NAME" SortExpression="c_fname" />
                    <asp:BoundField DataField="c_mname" HeaderText="MIDDLE NAME" SortExpression="c_mname" />
                    <asp:BoundField DataField="c_lname" HeaderText="LAST NAME" SortExpression="c_lname" />
                    <asp:BoundField DataField="r_rank" HeaderText="RANK" SortExpression="r_rank" />
                    <asp:BoundField DataField="c_course" HeaderText="COURSE" SortExpression="c_course" />
                    <asp:BoundField DataField="c_courseyear" HeaderText="COURSE YEAR" SortExpression="c_courseyear" />
                    <asp:BoundField DataField="c_batch" HeaderText="BATCH" SortExpression="c_batch" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" BorderStyle="Solid" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select cid,appno,c_fname,c_mname,c_lname,r_rank,c_course,c_courseyear,c_batch from cadet,rankholders where cadet.cid = rankholders.r_cid and cadet.c_course = @course and cadet.c_courseyear = @courseyear and rankholders.r_rank = @r_rank">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="course" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="courseyear" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList3" Name="r_rank" PropertyName="SelectedValue" />
            </SelectParameters>
                </asp:SqlDataSource>
    </form>
</body>
</html>
