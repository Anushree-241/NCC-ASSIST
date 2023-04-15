<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadetdb1.aspx.cs" Inherits="NCC_cadetdb1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cadetdb</title>
    <style type="text/css">
        #Button1,#Button2,#Button3{
            padding:7px;
            border-style:none;
            color:white;
            background-color:black;
            border-radius:10px;
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
   
            <center>
                <div>
                    <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="EXPORT AS EXCEL" />
        
                    <br /><br />
            </div> 
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="CADET ID" />
                    <asp:TemplateField HeaderText="PHOTO">
                <ItemTemplate>
                    <img src="Uploades\Candidate photos\<%#Eval("c_photo")%>" height="100" width="100"/>
                </ItemTemplate>
            </asp:TemplateField>
                    <asp:BoundField DataField="appno" HeaderText="REGISTER ID" />
                    <asp:BoundField DataField="c_fname" HeaderText="FIRST NAME" />
                    <asp:BoundField DataField="c_mname" HeaderText="MIDDLE NAME" />
                    <asp:BoundField DataField="c_lname" HeaderText="LAST NAME" />
                    <asp:BoundField DataField="c_nationality" HeaderText="NATIONALITY" />
                    <asp:BoundField DataField="c_dob" HeaderText="DATE OF BIRTH" />
                    <asp:BoundField DataField="c_fathers_fname" HeaderText="FATHER'S FIRST NAME" />
                    <asp:BoundField DataField="c_fathers_mname" HeaderText="FATHER'S MIDDLE NAME" />
                    <asp:BoundField DataField="c_fathers_lname" HeaderText="FATHER'S LAST NAME" />
                    <asp:BoundField DataField="c_mothers_fname" HeaderText="MOTHER'S FIRST NAME" />
                    <asp:BoundField DataField="c_mothers_mname" HeaderText="MOTHER'S MIDDLE NAME" />
                    <asp:BoundField DataField="c_mothers_lname" HeaderText="MOTHER'S LAST NAME" /> 
                    <asp:BoundField DataField="c_address" HeaderText="ADDRESS" />
                    <asp:BoundField DataField="c_landmark" HeaderText="LANDMARK" />
                    <asp:BoundField DataField="c_state" HeaderText="STATE" />
                    <asp:BoundField DataField="c_district" HeaderText="DISTRICT" />
                    <asp:BoundField DataField="c_taluk" HeaderText="TALUK" />
                    <asp:BoundField DataField="c_city" HeaderText="CITY" />
                    <asp:BoundField DataField="c_pincode" HeaderText="PINCODE" />
                    <asp:BoundField DataField="c_gender" HeaderText="GENDER" />
                    <asp:BoundField DataField="c_mobileno" HeaderText="MOBILE NUMBER" />
                    <asp:BoundField DataField="c_emailid" HeaderText="EMAIL ID" />
                    <asp:BoundField DataField="c_bloodgroup" HeaderText="BLOOD GROUP" />
                    <asp:BoundField DataField="c_nearest_railway_station" HeaderText="NEAREST RAILWAY STATION" />
                    <asp:BoundField DataField="c_nearest_police_station" HeaderText="NEAREST POLICE STATION" />
                    <asp:BoundField DataField="c_qualification" HeaderText="QUALIFICATION" />
                    <asp:BoundField DataField="c_stream" HeaderText="STREAM" />
                    <asp:BoundField DataField="c_course" HeaderText="COURSE" />
                    <asp:BoundField DataField="c_courseyear" HeaderText="COURSE YEAR" />
                    <asp:BoundField DataField="c_collegeschool" HeaderText="COLLEGE/SCHOOL" /> 
                    <asp:BoundField DataField="c_marks" HeaderText="MARKS" /> 

                                       
                    <asp:BoundField DataField="c_identification_mark" HeaderText="IDENTIFICATION MARKS" />                    
                    <asp:BoundField DataField="c_enrollement_permission" HeaderText="ENROLLEMENT PERMISSION" />
                    <asp:BoundField DataField="c_ncc_unit" HeaderText="NCC UNIT TO BE" />
                    <asp:BoundField DataField="c_prev_enrollement" HeaderText="PREVIOUS ENROLLEMENT" />
                    <asp:BoundField DataField="c_prev_dismissed" HeaderText="PREVIOUS DISMISSED" />
                    <asp:BoundField DataField="c_next_of_kin" HeaderText="NEXT OF KIN" />
                    <asp:BoundField DataField="c_next_of_kin_address" HeaderText="NEXT OF KIN ADDRESS" />
                    <asp:BoundField DataField="c_next_of_kin_phoneno" HeaderText="NEXT OF KIN PHONE NUMBER" />
                    <asp:BoundField DataField="c_ifsc" HeaderText="IFSC CODE" />
                    <asp:BoundField DataField="c_accountno" HeaderText="ACCOUNT NUMBER" />
                    <asp:BoundField DataField="c_aadharno" HeaderText="AADHAR NUMBER" />
                    <asp:BoundField DataField="c_panno" HeaderText="PAN NUMBER" />

                                       
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            </center>

           

            
       

	    
        <asp:Label ID="Label1" runat="server"></asp:Label>
        
    </form>
</body>
</html>
