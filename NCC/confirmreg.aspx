<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmreg.aspx.cs" Inherits="NCC_confirmreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <button  style="font-size:larger; color:darkblue;background-color:lightblue" onclick="window.print()">Print Application</button>
        <a href="cadetreg.aspx" >HOME</a>
        <center>
      <%-- APPLICATION NO.
        <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="XX-Large"></asp:Label>--%>
            
    <center><h1>NATIONAL CADET CORPS</h1>
     <h2>SENIOR DIVISION/WING ENROLLEMENT FORM</h2>
         <pre><h4>(See Rules 7 & 11 of NCC Act ,1948)</h4></pre>
      </center>
         <br />   
            <asp:DetailsView ID="DetailsView1" runat="server" Height="500px" Width="825px" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="10" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" Font-Size="Larger">
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <FieldHeaderStyle Font-Bold="True" Font-Size="Large" />
                <Fields>

                    <asp:BoundField DataField="appno" HeaderText="APPLICATION NO." SortExpression="appno" />
                    <asp:TemplateField HeaderText="PHOTO" SortExpression="c_photo">
                        
                        <ItemTemplate>
                            <center>
                            <img src="Uploades/Candidate photos/<%# Eval("c_photo") %>"  height="200" width="200"/>
                            </center>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="c_fname" HeaderText="FIRST NAME" SortExpression="c_fname" />
                    <asp:BoundField DataField="c_mname" HeaderText="MDDLE NAME" SortExpression="c_mname" />
                    <asp:BoundField DataField="c_lname" HeaderText="LAST NAME" SortExpression="c_lname" />
                    <asp:BoundField DataField="c_nationality" HeaderText="NATIONALITY" SortExpression="c_nationality" />
                    <asp:BoundField DataField="c_dob" HeaderText="DATE OF BIRTH " SortExpression="c_dob" />
                    <asp:BoundField DataField="c_fathers_fname" HeaderText="FATHER'S FIRST NAME" SortExpression="c_fathers_fname" />
                    <asp:BoundField DataField="c_fathers_mname" HeaderText="FATHER'S MIDDLE NAME" SortExpression="c_fathers_mname" />
                    <asp:BoundField DataField="c_fathers_lname" HeaderText="FATHER'S LAST NAME" SortExpression="c_fathers_lname" />
                    <asp:BoundField DataField="c_mothers_fname" HeaderText="MOTHER'S FIRST NAME" SortExpression="c_mothers_fname" />
                    <asp:BoundField DataField="c_mothers_mname" HeaderText="MOTHER'S MIDDLE NAME" SortExpression="c_mothers_mname" />
                    <asp:BoundField DataField="c_mothers_lname" HeaderText="MOTHER'S LAST NAME" SortExpression="c_mothers_lname" />
                    <asp:BoundField DataField="c_address" HeaderText="ADDRESS" SortExpression="c_address" />
                    <asp:BoundField DataField="c_landmark" HeaderText="LANDMARK" SortExpression="c_landmark" />
                    <asp:BoundField DataField="c_state" HeaderText="STATE" SortExpression="c_state" />
                    <asp:BoundField DataField="c_district" HeaderText="DISTRICT" SortExpression="c_district" />
                    <asp:BoundField DataField="c_taluk" HeaderText="TALUK" SortExpression="c_taluk" />
                    <asp:BoundField DataField="c_city" HeaderText="CITY" SortExpression="c_city" />
                    <asp:BoundField DataField="c_pincode" HeaderText="PINCODE" SortExpression="c_pincode" />
                    <asp:BoundField DataField="c_gender" HeaderText="GENDER" SortExpression="c_gender" />
                    <asp:BoundField DataField="c_mobileno" HeaderText="MOBILE NUMBER" SortExpression="c_mobileno" />
                    <asp:BoundField DataField="c_emailid" HeaderText="EMAIL ID" SortExpression="c_emailid" />
                    <asp:BoundField DataField="c_bloodgroup" HeaderText="BLOOD GROUP" SortExpression="c_bloodgroup" />
                    <asp:BoundField DataField="c_nearest_railway_station" HeaderText="NEAREST RAILWAY STATION" SortExpression="c_nearest_railway_station" />
                    <asp:BoundField DataField="c_nearest_police_station" HeaderText="NEAREST POLICE STATION" SortExpression="c_nearest_police_station" />
                    <asp:BoundField DataField="c_conviction_report" HeaderText="CONVICTION REPORT" SortExpression="c_conviction_report" />
                    <asp:BoundField DataField="c_qualification" HeaderText="QUALIFICATION" SortExpression="c_qualification" />
                    <asp:BoundField DataField="c_stream" HeaderText="STREAM" SortExpression="c_stream" />
                    <asp:BoundField DataField="c_course" HeaderText="COURSE" SortExpression="c_course" />
                    <asp:BoundField DataField="c_courseyear" HeaderText="COURSE YEAR" SortExpression="c_courseyear" />
                    <asp:BoundField DataField="c_batch" HeaderText="BATCH" SortExpression="c_batch" />
                    <asp:BoundField DataField="c_collegeschool" HeaderText="NAME OF COLLEGE/SCHOOL" SortExpression="c_collegeschool" />
                    <asp:BoundField DataField="c_marks" HeaderText="MARKS (IN PERCENTAGE)" SortExpression="c_marks" />
                    <asp:BoundField DataField="c_identification_mark" HeaderText="IDENTIFICATION MARKS" SortExpression="c_identification_mark" />
                    <asp:BoundField DataField="c_enrollement_permission" HeaderText="ENROLLMENT PERMISIION" SortExpression="c_enrollement_permission" />
                    <asp:BoundField DataField="c_ncc_unit" HeaderText="NCC UNIT" SortExpression="c_ncc_unit" />
                    <asp:BoundField DataField="c_prev_enrollement" HeaderText="PREVIOUS ENROLLMENT" SortExpression="c_prev_enrollement" />
                    <asp:BoundField DataField="c_prev_dismissed" HeaderText="PREVIOUS DISMISSED" SortExpression="c_prev_dismissed" />
                    <asp:BoundField DataField="c_next_of_kin" HeaderText="NEXT OF KIN" SortExpression="c_next_of_kin" />
                    <asp:BoundField DataField="c_next_of_kin_address" HeaderText="NEXT OF KIN ADDRESS" SortExpression="c_next_of_kin_address" />
                    <asp:BoundField DataField="c_next_of_kin_phoneno" HeaderText="NEXT OF KIN PHONE NO." SortExpression="c_next_of_kin_phoneno" />
                    <asp:BoundField DataField="c_accountno" HeaderText="BANK ACCOUNT NO." SortExpression="c_accountno" />
                    <asp:BoundField DataField="c_ifsc" HeaderText="IFSC CODE" SortExpression="c_ifsc" />
                    <asp:BoundField DataField="c_aadharno" HeaderText="AADHAR NO." SortExpression="c_aadharno" />
                    <asp:BoundField DataField="c_panno" HeaderText="PAN NO." SortExpression="c_panno" />
                    
                    
                </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:DetailsView>
            </center>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [c_fname], [c_mname], [c_lname], [c_nationality], [c_dob], [c_fathers_fname], [c_fathers_mname], [c_fathers_lname], [c_mothers_fname], [c_mothers_mname], [c_mothers_lname], [c_address], [c_landmark], [c_state], [c_district], [c_taluk], [c_city], [c_pincode], [c_gender], [c_mobileno], [c_emailid], [c_bloodgroup], [c_nearest_railway_station], [c_nearest_police_station], [c_conviction_report], [c_qualification], [c_stream], [c_course], [c_courseyear], [c_batch], [c_collegeschool], [c_marks], [c_identification_mark], [c_enrollement_permission], [c_ncc_unit], [c_prev_enrollement], [c_prev_dismissed], [c_next_of_kin], [c_next_of_kin_address], [c_next_of_kin_phoneno], [c_accountno], [c_ifsc], [c_aadharno], [c_panno], [c_photo], [appno] FROM [cadet] WHERE ([appno] = @appno)">
            <SelectParameters>
                <asp:QueryStringParameter Name="appno" QueryStringField="No" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
