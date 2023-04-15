<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registeredcandidates.aspx.cs" Inherits="NCC_registeredcandidates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <form id="form1" runat="server">
        <a id="Button2" href="adminhome.aspx">HOME</a>
        <div class="container">
            
            <center>
                <h1>REGISTERED CANDIDATES</h1>
            <asp:GridView style="margin-top:5rem;" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="REG ID" SortExpression="cid" />
                    <asp:TemplateField HeaderText="PHOTO" SortExpression="c_photo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("c_photo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <img src="Uploades/Candidate photos/<%# Eval("c_photo") %>"  height="50" width="50"/>
                            <%--<asp:Label ID="Label1" runat="server" Text='Uploades/Candidate photos/<%# Bind("c_photo") %>'></asp:Label>--%>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="appno" HeaderText="APPLICATION NO." SortExpression="appno" />
                    <asp:BoundField DataField="c_fname" HeaderText="FIRST NAME" SortExpression="c_fname" />
                    <asp:BoundField DataField="c_mname" HeaderText="MIDDLE NAME" SortExpression="c_mname" />
                    <asp:BoundField DataField="c_lname" HeaderText="LAST NAME" SortExpression="c_lname" />
                    <asp:BoundField DataField="c_dob" HeaderText="DATE OF BIRTH " SortExpression="c_dob" />
                    <asp:BoundField DataField="c_gender" HeaderText="GENDER" SortExpression="c_gender" />
                    <asp:BoundField DataField="c_mobileno" HeaderText="MOBILE NO." SortExpression="c_mobileno" />
                    <asp:BoundField DataField="c_emailid" HeaderText="EMAIL ID" SortExpression="c_emailid" />
                    <asp:BoundField DataField="c_course" HeaderText="COURSE" SortExpression="c_course" />
                    <asp:BoundField DataField="c_courseyear" HeaderText="COURSE YEAR" SortExpression="c_courseyear" />
                    <asp:BoundField DataField="c_batch" HeaderText="BATCH" SortExpression="c_batch" />
                    <asp:TemplateField HeaderText="ENROLLMENT FORM">
                        <ItemTemplate>
                            <a class="" href="Uploades/Register Enrollment/<%#Eval ("c_declarationform")%>" >View And Download</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DOWNLOAD PHOTO">
                        <ItemTemplate>
                            <a href="Uploades/Candidate photos/<%#Eval ("c_photo")%>" >View Photo And Download</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
</center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT appno,cid,c_fname,c_mname,c_lname,c_dob,c_gender,c_mobileno,c_emailid,c_course,c_courseyear,c_batch,c_declarationform,c_photo from cadet where c_status = 'Pending'"></asp:SqlDataSource>
    </form>
</body>
</html>
