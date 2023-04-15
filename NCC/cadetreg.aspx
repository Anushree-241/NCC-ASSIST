<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="cadetreg.aspx.cs" Inherits="NCC_cadetreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadet registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <style type="text/css">
        #Button3{
             border-style:none;
             padding-top:3px;
            padding:10px;
           border-radius:10px;
           color:#fff;
           font-size:xx-large;
           background-color:forestgreen;
           position:absolute;
           text-decoration:none;
           margin-left:1rem;
           margin-top:-1rem;
           box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
           /*margin-bottom:3rem;*/
            
        }
        
    </style>
    
    
</head>
<body>
    
     <a id="Button3" href="index.aspx">HOME</a>
   
        <br /><br />
   <div class="container" >   
       <center><h1>NATIONAL CADET CORPS</h1>
     <h2>SENIOR DIVISION/WING ENROLLEMENT FORM</h2>
         <pre><h4>(See Rules 7 & 11 of NCC Act ,1948)</h4></pre>
      </center>
         <br />   
        
        <h2>Application for Enrollement</h2>         
       <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
       
       <div class="container py-3" style="border:solid 2px;border-radius:10px;">
    <form id="form1"  class="row g-3 border-4" runat="server">
  
        <h4>Application No. <asp:Label ID="Label2" ForeColor="Red" runat="server" Text=""></asp:Label></h4>
  <div class="col-md-1" hidden="hidden">
    <label for="inputEmail4"  class="form-label">Cadet Id</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="TextBox1"  CssClass="form-control" runat="server" style="text-align:center;" Font-Size="Large" Height="40px"></asp:TextBox>
        
  </div>
        
        
  <div class="col-md-3">
    <label for="inputPassword4" class="form-label">First Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Names should begin with capital letters only"></asp:TextBox>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="INVALID NAME!.Special characters are not allowed" Font-Bold="False" Font-Italic="False" ValidationExpression="[A-Z][a-z][A-Za-z]*$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>

    
  </div>
  <div class="col-2">
    <label for="inputAddress" class="form-label">Middle Name</label>
    <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" CssClass="form-control" Height="40px" ToolTip="Names should begin with capital letters only"></asp:TextBox>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="INVALID NAME!.Special characters are not allowed" Font-Bold="False" Font-Italic="False" ValidationExpression="\/*[A-Z][A-Za-z]*$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
  </div>
    <div class="col-3">
    <label for="inputAddress" class="form-label">Last Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large" CssClass="form-control" Height="40px" ToolTip="Names should begin with capital letters only"></asp:TextBox>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="INVALID NAME!.Special characters are not allowed" Font-Bold="False" Font-Italic="False" ValidationExpression="\/*[A-Z][A-Za-z]*$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
  </div>
     <div class="col-3">
    <label for="inputAddress" class="form-label">Nationality</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="NEntries should begin with capital letters only"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="INVALID NAME!.Special characters are not allowed" Font-Bold="False" Font-Italic="False" ValidationExpression="[A-Z][a-z][A-Za-z]*$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
  </div>
  <div class="col-2">
    <label for="inputAddress" class="form-label">Date Of Birth</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="TextBox6" CssClass="form-control" Placeholder="(dd/mm/yyyy)" type="date" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter only numbers in dd-mm-yy format"></asp:TextBox>
    
  </div>
        <div class="col-3">
    <label for="inputAddress" class="form-label">Father's First Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Names should begin with capital letters only"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="INVALID NAME!.Special characters are not allowed" Font-Bold="False" Font-Italic="False" Font-Size="Medium" ValidationExpression="[A-Z][a-z][A-Za-z]*$" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
        <div class="col-3">
    <label for="inputAddress" class="form-label">Father's Middle Name</label>
    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Names should begin with capital letters only"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="Textbox8" ErrorMessage="INVALID NAME!.Special characters are not allowed" Font-Bold="False" Font-Italic="False" ValidationExpression="\/*[A-Z][a-z]*$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-3">
    <label for="inputAddress" class="form-label">Father's Last Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Names should begin with capital letters only"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="Textbox9" ErrorMessage="INVALID NAME!.Special characters are not allowed" Font-Bold="False" Font-Italic="False" ValidationExpression="\/*[A-Z][A-Za-z]*$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
             
        </div>
        <div class="col-3">
    <label for="inputAddress" class="form-label">Mother's First Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Names should begin with capital letters only"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBox7" ErrorMessage="INVALID NAME!.Special characters are not allowed" Font-Bold="False" Font-Italic="False" Font-Size="Medium" ValidationExpression="[A-Z][a-z][A-Za-z]*$" ForeColor="Red"></asp:RegularExpressionValidator>
        </div>
        <div class="col-3">
    <label for="inputAddress" class="form-label">Mother's Middle Name</label>
    <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Names should begin with capital letters only"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="Textbox8" ErrorMessage="INVALID NAME!.Special characters are not allowed" Font-Bold="False" Font-Italic="False" ValidationExpression="\/*[A-Z][a-z]*$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-3">
    <label for="inputAddress" class="form-label">Mother's Last Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox12" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

    <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Names should begin with capital letters only"></asp:TextBox>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="Textbox9" ErrorMessage="INVALID NAME!.Special characters are not allowed" Font-Bold="False" Font-Italic="False" ValidationExpression="\/*[A-Z][A-Za-z]*$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
             
        </div>
        <hr />
  <div class="col-md-9">
    <label for="inputCity" class="form-label">Residential Address</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox13" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid Address"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="Textbox13" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z0-9'/-@&amp;#,.\s]{2,100}$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
  </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Landmark</label><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox14" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="TextBox14" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="Textbox14" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z0-9'/-@&amp;#,.\s]{2,100}$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
        </div>
  <div class="col-md-3">
    <label for="inputState" class="form-label">State</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" InitialValue="0" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:DropDownList ID="DropDownList2" CssClass="form-select" runat="server" >
                    <asp:ListItem Selected="True" Hidden="hidden" Value="0">Choose State</asp:ListItem>
                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                    <asp:ListItem>Assam</asp:ListItem>
                    <asp:ListItem>Bihar</asp:ListItem>
                    <asp:ListItem>Chhattisgarh</asp:ListItem>
                    <asp:ListItem>Goa</asp:ListItem>
                    <asp:ListItem>Gujarat</asp:ListItem>
                    <asp:ListItem>Haryana</asp:ListItem>
                    <asp:ListItem>Himachal Pradesh</asp:ListItem>
                    <asp:ListItem>Jammu snd Kashmir</asp:ListItem>
                    <asp:ListItem>Jharkhand</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                    <asp:ListItem>Kerala</asp:ListItem>
                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Manipur</asp:ListItem>
                    <asp:ListItem>Meghalaya</asp:ListItem>
                    <asp:ListItem>Mizoram</asp:ListItem>
                    <asp:ListItem>Nagaland</asp:ListItem>
                    <asp:ListItem>Odisha</asp:ListItem>
                    <asp:ListItem>Punjab</asp:ListItem>
                    <asp:ListItem>Rajasthan</asp:ListItem>
                    <asp:ListItem>Sikkim</asp:ListItem>
                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                    <asp:ListItem>Telangana</asp:ListItem>
                    <asp:ListItem>Tripura</asp:ListItem>
                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                    <asp:ListItem>Uttarakhand</asp:ListItem>
                    <asp:ListItem>West Bengal</asp:ListItem>
                </asp:DropDownList>
  </div>
  <div class="col-md-2">
    <label for="inputZip" class="form-label">District</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" InitialValue="0" runat="server" ControlToValidate="TextBox15" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="TextBox15" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid District"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox15" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
        
  </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Taluk</label><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox17" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      <asp:TextBox ID="TextBox17" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid Taluk"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ControlToValidate="TextBox17" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
        
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">City</label><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox18" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
     <asp:TextBox ID="TextBox18" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid City"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox18" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Pincode</label><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox19" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
     <asp:TextBox ID="TextBox19" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid Pincode"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator18" runat="server" ControlToValidate="TextBox19" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="([1-9]{1}[0-9]{5}|[1-9]{1}[0-9]{3}\\s[0-9]{3})" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
        </div>
        <hr />
        <div class="col-md-3">
            <div class="form-check">
                <label for="inputCity" class="form-label">Gender</label><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
     <asp:RadioButtonList class="form-check-input" ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="auto-style3" Height="16px" Width="290px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>

            </div>
    
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Mobile Number</label><asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox20" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
     <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Enter Valid Mobile Number" ></asp:TextBox>
                      
            <asp:RegularExpressionValidator ID="RegularExpressionValidator20" runat="server" ControlToValidate="TextBox20" ErrorMessage="INVALID FORMAT!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[6-9]\d{9}$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Email Id</label><asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox21" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
     <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Enter Valid mailid"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator21" runat="server" ControlToValidate="Textbox21" ErrorMessage="INVALID FORMAT!" Font-Bold="False" Font-Italic="False" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
    <div class="col-md-2">
    <label for="inputZip" class="form-label">Blood Group</label><asp:RequiredFieldValidator ID="RequiredFieldValidator20" InitialValue="0" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
                <asp:DropDownList CssClass="form-select" ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True" Hidden="Hidden" Value="0">Choose Blood Group</asp:ListItem>
                    <asp:ListItem Value="A+ve">A+ve</asp:ListItem>
                    <asp:ListItem Value="A-ve">A-ve</asp:ListItem>
                    <asp:ListItem Value="B+ve">B+ve</asp:ListItem>
                    <asp:ListItem Value="B-ve">B-ve</asp:ListItem>
                    <asp:ListItem Value="O+ve">O+ve</asp:ListItem>
                    <asp:ListItem Value="O-ve">O-ve</asp:ListItem>
                    <asp:ListItem Value="AB+ve">AB+ve</asp:ListItem>
                    <asp:ListItem Value="AB-ve">AB-ve</asp:ListItem>
                </asp:DropDownList>
  </div>
  <div class="col-md-3">
    <label for="inputCity" class="form-label">Nearest Railway Station</label><asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox23" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
     <asp:TextBox ID="TextBox23" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Enter Valid Railway Station"></asp:TextBox>     
      <asp:RegularExpressionValidator ID="RegularExpressionValidator23" runat="server" ControlToValidate="Textbox23" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z0-9'/-@&amp;#,.\s]{2,100}$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>      
        </div>
    <div class="col-md-3">
    <label for="inputCity" class="form-label">Nearest Police Station</label><asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox24" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
     <asp:TextBox ID="TextBox24" runat="server" CssClass="form-control" Font-Size="Large" Height="40px" ToolTip="Enter Valid Railway Station"></asp:TextBox>     
      <asp:RegularExpressionValidator ID="RegularExpressionValidator24" runat="server" ControlToValidate="Textbox24" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z0-9'/-@&amp;#,.\s]{2,100}$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>  
    </div>
        <div class="col-md-10">
    <label for="inputCity" class="form-label">Have you been convicted by a criminal court ?and if so in want circumstances what was the sentence? Attach the relavent document</label>
     <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" Font-Size="Large" Height="40px"  Width="248px" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator25" runat="server" ControlToValidate="FileUpload1" ErrorMessage="INVALID FILE FORMAT!" Font-Bold="False" Font-Italic="False" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf)" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
          </div> 
        <hr />
<div class="col-md-3">
    <label for="inputCity" class="form-label">Qualification</label><asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBox25" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>       
    <asp:TextBox ID="TextBox25"  CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid Qualififcation"></asp:TextBox>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator26" runat="server" ControlToValidate="TextBox25" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z0-9-.\s]{2,50}$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
</div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Stream(Arts/Science/Commerce)</label><asp:RequiredFieldValidator ID="RequiredFieldValidator28" InitialValue="0" runat="server" ControlToValidate="DropDownList5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <asp:DropDownList CssClass="form-select" ID="DropDownList5" runat="server">
                    <asp:ListItem Selected="True" Hidden Value="0">Choose Stream</asp:ListItem>
                    <asp:ListItem>Arts</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                </asp:DropDownList>
            
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Course</label><asp:RequiredFieldValidator ID="RequiredFieldValidator42" InitialValue="0" runat="server" ControlToValidate="DropDownList6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:DropDownList CssClass="form-select" ID="DropDownList6" runat="server">
                    <asp:ListItem Selected="True" Hidden Value="0">Choose Course</asp:ListItem>
                    <asp:ListItem>PUC</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem>BA</asp:ListItem>
                    <asp:ListItem>B.com</asp:ListItem>
                    <asp:ListItem>B.Sc</asp:ListItem>
                    <asp:ListItem>M.com</asp:ListItem>
                </asp:DropDownList>
            
        </div>
         <div class="col-md-3">
        <label for="inputCity" class="form-label">Course Year</label><asp:RequiredFieldValidator ID="RequiredFieldValidator41" InitialValue="0" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="DropDownList4"></asp:RequiredFieldValidator>
        <asp:DropDownList CssClass="form-select" ID="DropDownList4" runat="server">
                    <asp:ListItem Selected="True" Hidden Value="0">Choose Course Year</asp:ListItem>
                    <asp:ListItem>1stYear</asp:ListItem>
                    <asp:ListItem>2ndYear</asp:ListItem>
                    <asp:ListItem>3rdYear</asp:ListItem>
                    <asp:ListItem>4thYear</asp:ListItem>
                    <asp:ListItem>5thYear</asp:ListItem>
                    <asp:ListItem>6thYear</asp:ListItem>
                </asp:DropDownList>
        </div>
       
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Batch Year</label><asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ControlToValidate="TextBox42" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox42"  runat="server" CssClass="form-control" Font-Size="Large" ToolTip="Ex: 2022,2023" Height="40px"></asp:TextBox> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator46" runat="server" ControlToValidate="TextBox42" ErrorMessage="INVALID FORMAT! Only numbers are allowed" Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationExpression="^(20)[\d]{2,2}$"></asp:RegularExpressionValidator>
    </div>
         <div class="col-md-6">
    <label for="inputCity" class="form-label">Name of College/School (Currently pursuing college/school )</label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="TextBox29" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
             <asp:TextBox ID="TextBox29" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid College"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator30" runat="server" ControlToValidate="Textbox29" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
             
         </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Marks(Highest Qualification Marks In %)</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="TextBox30" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:TextBox ID="TextBox30" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Example:67,89.07"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator31" runat="server" ControlToValidate="Textbox30" ErrorMessage="INVALID FORMAT!" Font-Bold="False" Font-Italic="False" ValidationExpression="/^(0*100{1,1}\.?((?&lt;=\.)0*)?%?$)|(^0*\d{0,2}\.?((?&lt;=\.)\d*)?%?)$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
        </div>
        <hr />
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Identification Marks(Atleast two)</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="TextBox31" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox31" CssClass="form-control" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator32" runat="server" ControlToValidate="Textbox31" ErrorMessage="INVALID ENTRY! Numbers are not allowed" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z@\s._#,&amp;+-]+$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-md-6">
        <label for="inputCity" class="form-label">Willing to be enrolled and undergo training under the National Cadet Corps Act 1948</label><asp:RequiredFieldValidator ID="RequiredFieldValidator29" InitialValue="0" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="RadioButtonList2"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <asp:RadioButtonList class="form-check-input" ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" Font-Size="Large" CssClass="auto-style4" Height="40px" Width="262px">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">NCC Unit to be enrolled in</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="TextBox32" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox32" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ReadOnly="true" Text=" 8 KAR BN BANGALORE 'B' GROUP"></asp:TextBox>
            
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Have you been enrolled in NCC earlier?If yes,Your enrollement number</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="TextBox33" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="TextBox33" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid Enrollement Number"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator35" runat="server" ControlToValidate="Textbox33" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="[a-zA-Z0-9-/,]*$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
        </div>
        <div class="col-md-6">
    <label for="inputCity" class="form-label">Have you been dismissed from?
                NCC/The Territorial Army/The Indian Armed Forces:
                Please provide details </label>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="TextBox33" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox34" CssClass="form-control" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator36" runat="server" ControlToValidate="Textbox34" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <hr />
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Next of kin</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="TextBox35" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

            <asp:TextBox ID="TextBox35" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid Names"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator37" runat="server" ControlToValidate="Textbox35" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="[A-Z][a-z][A-Za-z]*$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
        
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Address of Next of kin</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="TextBox36" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox36" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid Address"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator38" runat="server" ControlToValidate="Textbox36" ErrorMessage="INVALID ENTRY!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[a-zA-Z0-9'/-@&amp;#,.\s]{2,100}$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Mobile Number of Next of kin</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="TextBox37" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="TextBox37" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter Valid Mobile Number"></asp:TextBox>
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator39" runat="server" ControlToValidate="Textbox37" ErrorMessage="INVALID FORMAT!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[6-9]\d{9}$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Bank Account Number of Cadet/parent</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="TextBox38" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox38" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Bank Account is generally 11-16 digits"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator40" runat="server" ControlToValidate="Textbox38" ErrorMessage="INVALID FORMAT!" Font-Bold="False" Font-Italic="False" ValidationExpression="^\d{9,16}$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">IFSC code</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="TextBox39" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox39" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="IFSC Code is 11-digit number"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator41" runat="server" ControlToValidate="Textbox39" ErrorMessage="INVALID FORMAT!" Font-Bold="False" Font-Italic="False" ValidationExpression="^[A-Za-z]{4}\d{7}$" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Aadhar Number</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ControlToValidate="TextBox40" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:TextBox ID="TextBox40" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter 12 digits Aadhar number"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator42" runat="server" ControlToValidate="Textbox40" ErrorMessage="INVALID FORMAT!" Font-Bold="False" Font-Italic="False" ValidationExpression="/(^[0-9]{4}[0-9]{4}[0-9]{4}$)|(^[0-9]{4}\s[0-9]{4}\s[0-9]{4}$)|(^[0-9]{4}-[0-9]{4}-[0-9]{4}$)/" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">PAN Card Number</label>
            <asp:TextBox ID="TextBox41" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Enter 10-digit Pan Card Number"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator43" runat="server" ControlToValidate="Textbox41" ErrorMessage="INVALID FORMAT!" Font-Bold="False" Font-Italic="False" ValidationExpression="(^[A-Z]{5}[0-9]{4}[A-Z]{1}$)|(^[A-Z]{5}\s[0-9]{4}\s[A-Z]{1}$)|(^[A-Z]{5}-[0-9]{4}-[A-Z]{1}$) " ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
         <hr />
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Passport size photo</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ControlToValidate="FileUpload2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <asp:FileUpload ID="FileUpload2" CssClass="form-control" runat="server" Font-Size="Large" Height="40px"  Width="282px" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator44" runat="server" ControlToValidate="FileUpload2" ErrorMessage="INVALID FILE FORMAT!" Font-Bold="False" Font-Italic="False" Font-Size="Medium" ValidationExpression="([^\s]+(\.(?i)(jpg|JPG|png|PNG|JPEG|jpeg))$)" ForeColor="Red"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-md-3">
    <label for="inputCity" class="form-label">Attach the declaration form</label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator45" runat="server" ControlToValidate="FileUpload3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:FileUpload ID="FileUpload3" CssClass="form-control" runat="server" Font-Size="Large" Height="40px"  Width="286px" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator45" runat="server" ControlToValidate="FileUpload3" ErrorMessage="INVALID FILE FORMAT!" Font-Bold="False" Font-Italic="False" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.pdf)" ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
            
        </div>
        <div class="col-md-4">
    <label for="inputCity"   class="form-label"></label>
            <a href="Documents/DECLARATION form.pdf"  class="form-control mt-2 " download style="color:red;font-size:larger; text-decoration:none" >Click here to download declaration form</a>
            
        </div>

  <div class="col-12">
      <center>
          <asp:Button ID="Button1"  Font-Size="X-Large" OnClick="Button1_Click"  CssClass="btn btn-success mx-5" runat="server" Text="SUBMIT"  />
      <asp:Button ID="Button2" Font-Size="X-Large" CssClass="btn btn-danger" OnClick="Button2_Click" runat="server" Text="CLEAR" />
      <br /><br />
          
          
      </center>
      
    <%--<button type="submit" class="btn btn-primary">Sign in</button>--%>
  </div>

        <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Please Note !</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h4>Application No. <asp:Label ID="Label3" ForeColor="Red" runat="server" Text=""></asp:Label></h4>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <asp:Button ID="Button4" CssClass="btn btn-primary" runat="server" Text="OK"  OnClick="Button1_Click" />
      </div>
    </div>
  </div>
</div>
        <%--  --%>


     </form>
           </div>  

</div>

      <!-- Button trigger modal -->

<!-- Modal -->

  



    







<!---->
    
           <%-- <center><h1>NATIONAL CADET CORPS</h1></center>
     <center><h2>SENIOR DIVISION/WING ENROLLEMENT FORM</h2></center>
         <center><pre><h4>(See Rules 7 & 11 of NCC Act ,1948)</h4></pre></center>
         <p>&nbsp;</p>    
        <center><h2>Application for Enrollement</h2></center>
        <br /><br />
        <center>
        </tr>
        --%>
        
    

        
        
        
 
            
    <!-- Back to Top -->
    
    </body>
    <!-- JavaScript Libraries -->
    
</html>

