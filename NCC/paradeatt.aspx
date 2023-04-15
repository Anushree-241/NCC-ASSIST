<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paradeatt.aspx.cs" Inherits="NCC_paradeatt" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.6/pdfmake.min.js" integrity="sha512-7BzHjLXs8xehClrkJEtJtAwXxcbLast87k+XekuItHxrMr/v6POWkoKS2/8CU6DHdIjY+A4NwvsBQ8PxoRH7xQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js" integrity="sha512-BNaRQnYJYiPSqHHDb58B0yaPfCu+Wgds8Gp/gU33kqBtgNS4tSPHuGibyoeqMV/TJlSKda6FXzoEyYGjTe+vXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<%--        re-" </script>
rce"https://cdnis cloudflare con/ajax/ |ibe/pdfmake/0.1.22/pdfmske min. js"></script>
re="tosi//cdnis.cloudflare.con/aiax/Libs/hal2canvas /0,4, 1/ htal2canvas. min, 157></ scrpt>--%>



    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/NCC/img/cancel.png" Height="50" Width="50"  OnClick="ImageButton1_Click"/>
        
            <center>
                <h1>PARADE ATTENDANCE</h1>
                <div>
                    <asp:Button ID="Button1" runat="server" Text="Excel" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="PDF"  OnClick="Button2_Click"/>
                    <asp:Button ID="Button3" runat="server" Text="Docs" OnClick="Button3_Click" />
                </div>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="Select Parade Date"></asp:Label>
                <asp:DropDownList ID="DropDownList1" AppendDataBoundItems="true" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="p_date" DataValueField="p_date" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                    <asp:ListItem Selected="True" hidden="hidden">Select Date</asp:ListItem>
                </asp:DropDownList>
            
            </div>
                <br />
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <br />
                <br />
            <asp:GridView ID="GridView1" runat="server" Caption=""  DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" ShowFooter="True" OnDataBound="GridView1_DataBound" >
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    
                    <asp:BoundField DataField="cadetid" HeaderText="Cadet ID" SortExpression="cadetid" />
                    <asp:BoundField DataField="appno" HeaderText="Register ID" SortExpression="appno" />
                    <asp:BoundField DataField="c_fname" HeaderText="Cadet First Name" SortExpression="c_fname" />
                    <asp:BoundField DataField="c_mname" HeaderText="Middle Name" SortExpression="c_mname" />
                    <asp:BoundField DataField="c_lname" HeaderText="Last Name" SortExpression="c_lname" />
                    <asp:BoundField DataField="c_course" HeaderText="Course" SortExpression="c_course" />
                    <asp:BoundField DataField="c_courseyear" HeaderText="Course Year" SortExpression="c_courseyear" />
                    <asp:BoundField DataField="p_date" HeaderText="Parade Date" SortExpression="p_date" />
                    <asp:BoundField DataField="att_status" HeaderText="Attendance Status" SortExpression="att_status" />
                   
                 </Columns>
                
                <FooterStyle BackColor="White" ForeColor="Red" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
                </center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select cadetid,c_fname,c_mname,c_lname,c_course,c_courseyear,p_date,att_status,appno from paradeatt,cadet,parade where paradeatt.cadetid=cadet.cid and paradeatt.paradeid= parade.p_id  and parade.p_date = @p_date">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="Select Parade Date" Name="p_date" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [p_date] FROM [parade]"></asp:SqlDataSource>
        <br />
        <asp:ListBox ID="ListBox1" Visible="false" runat="server"></asp:ListBox>
    </form>
</body>
</html>