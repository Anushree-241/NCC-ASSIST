<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="NCC_Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateEditButton="True" Height="417px" Width="557px" DataSourceID="SqlDataSource1" >
                <Fields>
                    <asp:BoundField DataField="c_id" HeaderText="c_id" SortExpression="c_id" />
                    <asp:BoundField DataField="c_fname" HeaderText="c_fname" SortExpression="c_fname" />
                    <asp:BoundField DataField="c_mname" HeaderText="c_mname" SortExpression="c_mname" />
                    <asp:BoundField DataField="c_lname" HeaderText="c_lname" SortExpression="c_lname" />
                    <asp:BoundField DataField="c_nationality" HeaderText="c_nationality" SortExpression="c_nationality" />
                    <asp:BoundField DataField="c_dob" HeaderText="c_dob" SortExpression="c_dob" />
                    <asp:BoundField DataField="c_fathers_fname" HeaderText="c_fathers_fname" SortExpression="c_fathers_fname" />
                    <asp:BoundField DataField="c_fathers_mname" HeaderText="c_fathers_mname" SortExpression="c_fathers_mname" />
                    <asp:BoundField DataField="c_fathers_lname" HeaderText="c_fathers_lname" SortExpression="c_fathers_lname" />
                    <asp:BoundField DataField="c_mothers_fname" HeaderText="c_mothers_fname" SortExpression="c_mothers_fname" />
                    <asp:BoundField DataField="c_mothers_mname" HeaderText="c_mothers_mname" SortExpression="c_mothers_mname" />
                    <asp:BoundField DataField="c_mothers_lname" HeaderText="c_mothers_lname" SortExpression="c_mothers_lname" />
                    <asp:BoundField DataField="c_address" HeaderText="c_address" SortExpression="c_address" />
                    <asp:BoundField DataField="c_landmark" HeaderText="c_landmark" SortExpression="c_landmark" />
                    <asp:BoundField DataField="c_state" HeaderText="c_state" SortExpression="c_state" />
                    <asp:BoundField DataField="c_district" HeaderText="c_district" SortExpression="c_district" />
                    <asp:BoundField DataField="c_taluk" HeaderText="c_taluk" SortExpression="c_taluk" />
                    <asp:BoundField DataField="c_city" HeaderText="c_city" SortExpression="c_city" />
                    <asp:BoundField DataField="c_pincode" HeaderText="c_pincode" SortExpression="c_pincode" />
                    <asp:BoundField DataField="c_gender" HeaderText="c_gender" SortExpression="c_gender" />
                    <asp:BoundField DataField="c_mobileno" HeaderText="c_mobileno" SortExpression="c_mobileno" />
                    <asp:BoundField DataField="c_emailid" HeaderText="c_emailid" SortExpression="c_emailid" />
                    <asp:BoundField DataField="c_bloodgroup" HeaderText="c_bloodgroup" SortExpression="c_bloodgroup" />
                    <asp:BoundField DataField="c_nearest_railway_station" HeaderText="c_nearest_railway_station" SortExpression="c_nearest_railway_station" />
                    <asp:BoundField DataField="c_nearest_police_station" HeaderText="c_nearest_police_station" SortExpression="c_nearest_police_station" />
                    <asp:BoundField DataField="c_conviction_report" HeaderText="c_conviction_report" SortExpression="c_conviction_report" />
                    <asp:BoundField DataField="c_qualification" HeaderText="c_qualification" SortExpression="c_qualification" />
                    <asp:BoundField DataField="c_stream" HeaderText="c_stream" SortExpression="c_stream" />
                    <asp:BoundField DataField="c_course" HeaderText="c_course" SortExpression="c_course" />
                    <asp:BoundField DataField="c_courseyear" HeaderText="c_courseyear" SortExpression="c_courseyear" />
                    <asp:BoundField DataField="c_collegeschool" HeaderText="c_collegeschool" SortExpression="c_collegeschool" />
                    <asp:BoundField DataField="c_marks" HeaderText="c_marks" SortExpression="c_marks" />
                    <asp:BoundField DataField="c_identification_mark" HeaderText="c_identification_mark" SortExpression="c_identification_mark" />
                    <asp:BoundField DataField="c_enrollement_permission" HeaderText="c_enrollement_permission" SortExpression="c_enrollement_permission" />
                    <asp:BoundField DataField="c_ncc_unit" HeaderText="c_ncc_unit" SortExpression="c_ncc_unit" />
                    <asp:BoundField DataField="c_prev_enrollement" HeaderText="c_prev_enrollement" SortExpression="c_prev_enrollement" />
                    <asp:BoundField DataField="c_prev_dismissed" HeaderText="c_prev_dismissed" SortExpression="c_prev_dismissed" />
                    <asp:BoundField DataField="c_next_of_kin" HeaderText="c_next_of_kin" SortExpression="c_next_of_kin" />
                    <asp:BoundField DataField="c_next_of_kin_address" HeaderText="c_next_of_kin_address" SortExpression="c_next_of_kin_address" />
                    <asp:BoundField DataField="c_next_of_kin_phoneno" HeaderText="c_next_of_kin_phoneno" SortExpression="c_next_of_kin_phoneno" />
                    <asp:BoundField DataField="c_ifsc" HeaderText="c_ifsc" SortExpression="c_ifsc" />
                    <asp:BoundField DataField="c_accountno" HeaderText="c_accountno" SortExpression="c_accountno" />
                    <asp:BoundField DataField="c_aadharno" HeaderText="c_aadharno" SortExpression="c_aadharno" />
                    <asp:BoundField DataField="c_panno" HeaderText="c_panno" SortExpression="c_panno" />
                    <asp:BoundField DataField="c_photo" HeaderText="c_photo" SortExpression="c_photo" />
                    <asp:BoundField DataField="c_declarationform" HeaderText="c_declarationform" SortExpression="c_declarationform" />
                    <asp:BoundField DataField="c_status" HeaderText="c_status" SortExpression="c_status" />
                    <asp:BoundField DataField="c_regid" HeaderText="c_regid" SortExpression="c_regid" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cadet] WHERE ([c_fname] = @c_fname)">
                <SelectParameters>
                    <asp:SessionParameter Name="c_fname" SessionField="logname" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
