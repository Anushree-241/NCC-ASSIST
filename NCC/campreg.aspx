<%@ Page Language="C#" AutoEventWireup="true" CodeFile="campreg.aspx.cs" Inherits="NCC_campreg" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Camp registration</title>
    
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> 


    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $('#sidebar').css('display', 'block');
            });
        });

    </script>
   <style type="text/css" >
       .container{
           width:100%;
       }

       /*table {
           width: fit-content;
           box-shadow: rgba(0,0,0,0.5) 7px 7px 10px 10px;
           border-radius: 10px;
       }
       .col2{
           width:50%;
       }
            
       
       .coll{
           
           padding:10px;
           font-size:x-large;
           font-weight:600;
       }
       
       */
       #TextBox1,#TextBox2,#TextBox3,#TextBox4,#TextBox5,#TextBox6,#TextBox7,#TextBox8,#TextBox9,#TextBox10,#TextBox11{
           border-radius:5px;
       }
   </style>
    
</head>
<body>
    
   
        <div class="wrapper" >
        <!-- Sidebar  -->
        <nav id="sidebar" style="background-color:#317773" >
            <div class="sidebar-header" style="background-color:#317773" >
                <img src="img/NCClogo.png" height="150" width="150" style="margin-left:1.5rem;"/>
            </div>

            <ul class="list-unstyled components" style="background-color:#317773">
                <p style="font-weight:800">NATIONAL CADET CORPS</p>

                <li>
                <a href="viewevents.aspx"  style="background-color:#317773;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">EVENTS</a>
                 </li>
                
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#317773;text-decoration:none;color:white">CAMPS</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu" style="background-color:#317773;color:white" >
                        <li>
                            <a href="viewcamps.aspx" style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">VIEW CAMP DETAILS</a>
                        </li>
                        <li>
                            <a href="campreg.aspx"  style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">CAMP REGISTRATION</a>
                        </li> 
                        
                    </ul>
                </li>
                 <li>
                <a href="viewparade.aspx"  style="background-color:#317773;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">PARADE</a>
                 </li>
                
                <li>
                    <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#317773;text-decoration:none;color:white">REIMBURSEMENT</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu4" style="background-color:#317773;color:white" >
                        
                        <li>
                            <a href="viewcampreimbuse.aspx"  style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">VIEW CAMP REIMBURSEMENT</a>
                        </li>    
                        <li>
                            <a href="vieweventreimburse.aspx"  style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">VIEW EVENT REIMBURSEMENT</a>
                        </li>  
                    </ul>
                </li>
                <li >
                    <a href="myprofile.aspx" style="background-color:#317773;text-decoration:none;color:white"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">MY PROFILE</a>
                </li>
                <li >
                    <a href="editprofile.aspx" style="background-color:#317773;text-decoration:none;color:white"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">EDIT PROFILE</a>
                </li>
               
                
            </ul>   
        </nav>
        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg " style="background-color:#317773;border-radius:10px">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" style="background-color:#317773;border-style:none;"  class="btn btn-info">
                        <i class="fas fa-align-left" ></i>
                        <span ><img src="img/menu.png" height="50" width="80"/>MENU</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="cadethome.aspx" style="color:white"><strong>HOME</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="cadetlogin.aspx"style="color:white"><strong>LOGOUT</strong></a>
                            </li>
                            

                        </ul>
                    </div>
                </div>
            </nav>

            
        <div>

     
         <div class="container">
             
        <h1>CAMP REGISTRATION</h1>
             <%--<br />--%>
<div class="card border-dark">
    <div class="card-body">
        
        <form id="form1" class="row g-4" runat="server">
        
  <div class="row-md-2 mt-2"  hidden="hidden" >
      <asp:Label ID="Label1" runat="server"   CssClass="form-label" >Camp Id</asp:Label>
      <asp:TextBox ID="TextBox13" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
      <asp:Label ID="Label2"   runat="server" Text=""></asp:Label>
  </div>
            <div class="col-1 mt-2" hidden="hidden">
      <asp:Label ID="Label3"  CssClass="form-label" runat="server" >Cadet Id</asp:Label>
      <asp:TextBox ID="TextBox1"  CssClass="form-control" runat="server"></asp:TextBox>
    <%--<input type="email"  id="inputEmail4">--%>
  </div>
  <div class="col-md-2  mt-2" >
      <label for="inputAddress2" class="form-label">Cadet Register ID</label>
      <asp:TextBox ID="TextBox14" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="col-md-3  mt-2" >
      <label for="inputAddress2" class="form-label">Camp Name</label>
      <asp:TextBox ID="TextBox12" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
  
  <div class="col-md-3 mt-2">
    <label for="inputPassword4" class="form-label">Cadet Name</label>
      <asp:TextBox ID="TextBox2" ReadOnly="true" runat="server"  CssClass="form-control"></asp:TextBox>
    <%--<input type="password"  id="inputPassword4">--%>
  </div>
  <div class="col-2 mt-2">
    <label for="inputAddress" class="form-label">Middle Name</label>
      <asp:TextBox ID="TextBox3" ReadOnly="true" CssClass="form-control"    runat="server"></asp:TextBox>
    <%--<input type="text" >--%>
  </div>
  <div class="col-2 mt-2">
    <label for="inputAddress2" class="form-label">Last Name</label>
      <asp:TextBox ID="TextBox4" ReadOnly="true"  CssClass="form-control" runat="server"></asp:TextBox>
   <%-- <input type="text"  id="inputAddress2" placeholder="Apartment, studio, or floor">--%>
  </div>
  <div class="col-md-6 mt-2">
    <label for="inputCity" class="form-label">Email Id</label>
      <asp:TextBox ID="TextBox5" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
    <%--<input type="text"  id="inputCity">--%>
  </div>
  <div class="col-md-3 mt-2">
    <label for="inputState" class="form-label">Mobile No.</label>
      <asp:TextBox ID="TextBox6" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="col-md-3 mt-2">
    <label for="inputZip" class="form-label"  >Parent's Mobile No.</label>
      <asp:TextBox ID="TextBox7"  CssClass="form-control"   runat="server"></asp:TextBox>
    <%--<input type="text"  id="inputZip">--%>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox7" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>
  </div>
     <div class="col-md-2 mt-2">
    <label for="inputZip" class="form-label">Batch Year</label>
         <asp:TextBox ID="TextBox8" ReadOnly="true"  CssClass="form-control" runat="server"></asp:TextBox>
    <%--<input type="text"  id="inputZip">--%>
  </div>
     <div class="col-md-2 mt-2">
    <label for="inputZip" class="form-label">Course Year</label>
         <asp:TextBox ID="TextBox9" ReadOnly="true" CssClass="form-control" runat="server"></asp:TextBox>
    <%--<input type="text"  id="inputZip">--%>
  </div>
     <div class="col-md-1 mt-2">
    <label for="inputZip" class="form-label">Course</label>
         <asp:TextBox ID="TextBox10" ReadOnly="true" class="form-control" runat="server"></asp:TextBox>
    <%--<input type="text"  id="inputZip">--%>
  </div>
     <div class="col-md-6 mt-2">
    <label for="inputZip" class="form-label">Name Of College</label>
         <asp:TextBox ID="TextBox11" ReadOnly="true" CssClass="form-control"  runat="server"></asp:TextBox>
    <%--<input type="text"  id="inputZip">--%>
  </div>
     <div class="col-md-5 mt-2">
         <label  class="form-label">Upload Enrollment Form</label>
  
         <asp:FileUpload ID="FileUpload1" runat="server" />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="FileUpload1" runat="server" ForeColor="Red" ErrorMessage="Required"></asp:RequiredFieldValidator>
         <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    <%--<input type="text"  id="inputZip">--%>
  </div>
  
  <div class="col-12 mt-3 ">
      <center>
        <asp:Button ID="Button1"  CssClass="btn btn-success "  Font-Size="Large" runat="server" Text="Register" OnClick="Button1_Click1" />
          <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
      </center>
      
    
  </div>
</form>
    </div>
</div>
 




<center>
        <!---->
        <%--<table align="center" class="container1">
            <tr>
                <td class="coll">CAMP NAME</td>
                <td class="col2">
                    <asp:Label ID="Label2" Font-Size="Large" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Camp Registration Id</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox10" ReadOnly="true" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">First Name </td>
                <td class="col2">
                    <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[a-zA-Z\s]+$" runat="server" ControlToValidate="TextBox1" ErrorMessage="INVALID NAME!Special characters are not allowed" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Last Name</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox3" ReadOnly="true" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="^[a-zA-Z\s]+$" runat="server" ControlToValidate="TextBox3" ErrorMessage="INVALID NAME!Special characters are not allowed" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Mobile Number</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox4"  runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationExpression="^[6-9]\d{9}$" runat="server" ControlToValidate="TextBox4" ErrorMessage="INVALID MOBILE NUMBER!" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Email Id</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ControlToValidate="TextBox5" ErrorMessage="INVALID EMAILID!" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Parent&#39;s Mobile Number</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ValidationExpression="^[6-9]\d{9}$" runat="server" ControlToValidate="TextBox6" ErrorMessage="INVALID MOBILE NUMBER!" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Batch Year</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox11" ReadOnly="true" runat="server" Font-Size="Large"  Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="INVALID ENTRY!" ValidationExpression="^(20)[\d]{2,2}$" ForeColor="Red" ControlToValidate="TextBox11"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Course Year</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox7" ReadOnly="true" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ValidationExpression="^[a-zA-Z0-9',.]{2,15}$"  ControlToValidate="TextBox7" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Course</td>
                <td class="col2">
                    <asp:TextBox ID="TextBox8" ReadOnly="true" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ValidationExpression="^[a-zA-Z\s]+$" ControlToValidate="TextBox8" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Name of College </td>
                <td class="col2">
                    <asp:TextBox ID="TextBox9" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ValidationExpression="^[a-zA-Z\s]+$" runat="server" ControlToValidate="TextBox9" ErrorMessage="INVALID ENTRY!" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="coll">Upload enrollment form here</td>
                <td class="col2">
                    <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Large" Height="40px" Width="235px" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <br /><br />
              <tr>
                <td class="coll">&nbsp;</td>
                <td class="col2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.pdf)" ControlToValidate="FileUpload1" ErrorMessage="INVALID FILE UPLOAD!" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
              <tr>
            <td colspan="3" align="center">
            <a href="Documents/volunteer form.pdf" download style="color:red;font-size:2rem;" >Click here to download enrollment form</a>
            </td>
        </tr>
            <tr>
                <td class="button" align="center" colspan="3">
                   <asp:Button ID="Button1" runat="server" Text="CLEAR" OnClick="Button1_Click" />
                   <asp:Button ID="Button2" runat="server" Text="SUBMIT" OnClick="Button2_Click" />
                    <br /><br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
           </tr>
        </table>--%>
        </center>
             </div>  

        </div>
    </div>
     </div>

     
</form>
</body>
</html>
