<%@ Page Language="C#" AutoEventWireup="true" CodeFile="campregcadet.aspx.cs" Inherits="NCC_campregcadet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/NCC/img/cancel.png" Height="50" Width="50"  OnClick="ImageButton1_Click"/>
            
        <div class="container mt-5">
            
            <center>
                <h1>REGISTERED CAMPS</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" Font-Size="Larger">
                <Columns>
                    <asp:BoundField DataField="camp_name" HeaderText="CAMP NAME" SortExpression="camp_name" />
                    <asp:BoundField DataField="camp_startingdate" HeaderText="STARTING DATE" SortExpression="camp_startingdate" />
                    <asp:BoundField DataField="camp_endingdate" HeaderText="ENDING DATE" SortExpression="camp_endingdate" />
                    <asp:BoundField DataField="camp_duration" HeaderText="DURATION" SortExpression="camp_duration" />
                    <asp:BoundField DataField="camp_location" HeaderText="LOCATION" SortExpression="camp_location" />
                    <asp:BoundField DataField="camp_type" HeaderText="CAMP TYPE" SortExpression="camp_type" />
                    <asp:BoundField DataField="camp_firing" HeaderText="FIRING" SortExpression="camp_firing" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
                </center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select  camp_name,camp_startingdate,camp_endingdate,camp_duration,camp_location,camp_type,camp_firing from cadet,camp,campreg where camp.camp_id = campreg.camp_id and cadet.cid = campreg.c_cid and cadet.cid=@id order by camp.camp_id desc">
            <SelectParameters>
                <asp:SessionParameter Name="id" SessionField="id" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
