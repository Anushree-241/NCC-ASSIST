<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="NCC_physicaltest" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    
   
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
    <style type="text/css">
           .table{
               background-color:white;
               border-radius:20px;
                box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;               
               border:none;
           }
           tr{
               padding:10px;
               border:none;
           }
           td{
               padding:10px;
               width:max-content;
               border:none;
               text-align:center;
           }

           #Button1{
               background-color:forestgreen;
               border-radius:10px;
               border:none;
               padding:7px;
               color:#ffff;
               margin-right:5rem;

           }
           #Button2{
               background-color:red;
               border-radius:10px;
               border:none;
               padding:7px;
               color:#ffff;

           }
           .col1{
               width:max-content;
                text-align:center;
                font-size:x-large;
                font-weight:500;
           }

           #TextBox1,#TextBox2,#TextBox3,#TextBox4,#TextBox5,#TextBox6,#TextBox7,#TextBox8{
               border-radius:10px;
           }
           
    </style>
    
</head>
<body>
    
    <form id="form1" runat="server">

         <div class="wrapper" >
        <!-- Sidebar  -->
        <nav id="sidebar" style="background-color:#22395D" >
            <div class="sidebar-header" style="background-color:#22395D" >
                <img src="img/NCClogo.png" height="150" width="150" style="margin-left:1.5rem;"/>
            </div>

            <ul class="list-unstyled components" style="background-color:#22395D">
                <p style="font-weight:800">NATIONAL CADET CORPS</p>
                
                
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">CAMPS</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="camps.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">ADD CAMP DETAILS</a>
                        </li>
                        <li>
                            <a href="editcamps.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">EDIT CAMP DETAILS</a>
                        </li>
                        <li>
                            <a href="cadcamps.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW CAMPS</a>
                        </li> 
                        <li>
                            <a href="registeredcamp.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">REGISTERED CADETS</a>
                        </li> 
                    </ul>
                </li>

                <li >
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" style="background-color:#22395D;text-decoration:none;color:white" class="dropdown-toggle">EVENTS</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu" style="background-color:#22395D">
                        <li>
                            <a href="events.aspx"  style="background-color:#22395D;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">ADD EVENT DETAILS</a>
                        </li>
                        <li>
                            <a href="editevents.aspx"  style="background-color:#22395D;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">EDIT EVENT DETAILS</a>
                        </li>
                        <li>
                            <a href="cadevents.aspx"  style="background-color:#22395D;color:white;text-decoration:none;" onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW EVENTS</a>
                        </li>
                        
                    </ul>
                </li>

                <li>
                    <a href="#pageSubmenu2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">PARADE</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu2" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="parade.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">ADD PARADE DETAILS</a>
                        </li>
                        <li>
                            <a href="editparade.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">EDIT PARADE DETAILS</a>
                        </li> 
                        <li>
                            <a href="cadparade.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW PARADE DETAILS</a>
                        </li> 
                        
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu6" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">RANK HOLDERS</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu6" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="parade.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">UPDATE RANK</a>
                        </li>
                        <li>
                            <a href="editparade.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW RANK HOLDERS</a>
                        </li> 
                        
                        
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">CADET SELECTION</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu3" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="cadetselection.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">UPDATE MARKS</a>
                        </li>
                        <li>
                            <a href="cadetapproval.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">APPROVE CANDIDATES</a>
                        </li>     
                        <li>
                            <a href="deletecadet.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">DELETE CANDIDATE'S DATABASE</a>
                        </li>
                    </ul>
                </li>
                
                <li>
                    <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">REIMBURSEMENT</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu4" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="reimbursement.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">CAMP REIMBURSE</a>
                        </li>
                        <li>
                            <a href="eventreimbursement.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">EVENT REIMBURSE</a>
                        </li>
                        <li>
                            <a href="cadcampreimbuse.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW CAMP REIMBURSEMENT</a>
                        </li>    
                        <li>
                            <a href="cadeventreimbuse.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW EVENT REIMBURSEMENT</a>
                        </li>  
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu5" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">ATTENDANCE</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu5" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="campatt.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">CAMP ATTENDANCE</a>
                        </li>
                        <li>
                            <a href="eventatt.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">EVENT ATTENDANCE</a>
                        </li>
                        <li>
                            <a href="paradeatt.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">PARADE ATTENDANCE</a>
                        </li>    
                          
                    </ul>
                </li>
               <li>
                    <a href="#pageSubmenu7" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">PHOTO GALLERY</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu7" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="folders.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">FOLDERS</a>
                        </li>
                        <li>
                            <a href="photo.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">UPLOAD CAMP PHOTOS</a>
                        </li>
                        <li>
                            <a href="eventphoto.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">UPLOAD EVENT PHOTOS</a>
                        </li> 
                        <li>
                            <a href="paradephoto.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">UPLOAD PARADE PHOTOS</a>
                        </li> 
                    </ul>
                </li>
                <li>
                    <a href="cadetdb.aspx"  style="background-color:#22395D;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">CADET DATABASE</a>
                </li>
                <li>
                    <a href="keyhighlights.aspx"  style="background-color:#22395D;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">KEYHIGHLIGHTS</a>
                </li>
                <li>
                    <a href="achievements.aspx"  style="background-color:#22395D;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">ACHIEVEMENTS</a>
                </li>
                <li>
                    <a href="adminlogin.aspx"  style="background-color:#22395D;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">LOG OUT</a>
                </li>
                
                
            </ul>

            
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg " style="background-color:#22395D;border-radius:10px">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" style="background-color:#22395D;border-style:none;"  class="btn btn-info">
                        <i class="fas fa-align-left" ></i>
                        <span ><img src="img/menu.png" height="50" width="80"/>MENU</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="adminhome.aspx" style="color:white"><strong>HOME</strong></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="adminlogin.aspx"style="color:white"><strong>LOGOUT</strong></a>
                            </li>
                            

                        </ul>
                    </div>
                </div>
            </nav>

            <div>
            <div class="container">
            <center><h1>CADET SELECTION</h1></center>
            <center>
            <table class="table">
                <tr>
                    <td class="col1">Register ID</td>
                    <td class="labels" colspan="2">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text=""></asp:Label>
                    </td>
                    <td class="labels" hidden="hidden">
                        <asp:Label ID="Label9"  runat="server" ></asp:Label></td>
                    <td class="labels">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Candidate Name</td>
                    <td class="labels" colspan="2">
                        <asp:Label ID="Label10" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="labels">
                        &nbsp;</td>
                    <td class="labels">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Course</td>
                    <td class="labels" colspan="2">
                        <asp:Label ID="Label11" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="labels">
                        &nbsp;</td>
                    <td class="labels">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Course Year</td>
                    <td class="labels" colspan="2">
                        <asp:Label ID="Label12" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="labels">
                        &nbsp;</td>
                    <td class="labels">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="col1">Batch Year</td>
                    <td class="labels" colspan="2">
                        <asp:Label ID="Label14" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="labels">
                        &nbsp;</td>
                    <td class="labels">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="background-color:darkcyan;color:white;border-radius:10px;text-align:center" colspan="6" >PHYSICAL TEST</td>
                </tr>
                <tr>
                    <td class="col1" colspan="2" >
                        <asp:Label ID="Label1" runat="server" Text="1600 Running Score"></asp:Label>
                    </td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBox1" CssClass="text-center"  runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                    </td>
                    <td class="textbox">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="textbox">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="^([0-9]|1[0])$" runat="server"  ControlToValidate="TextBox1"  ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="col1" colspan="2">
                        <asp:Label ID="Label2" runat="server" Text="Pushup Score"></asp:Label>
                    </td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBox2" runat="server" Font-Size="Large" Height="40px" CssClass="text-center"></asp:TextBox>
                    </td>
                    <td class="textbox">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="textbox">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="^([0-9]|1[0])$" runat="server" ControlToValidate="TextBox2" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="col1" colspan="2">
                        <asp:Label ID="Label3" runat="server" Text="SitUp Score"></asp:Label>
                    </td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBox3" runat="server" Font-Size="Large" Height="40px" CssClass="text-center"></asp:TextBox>
                    </td>
                    <td class="textbox">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="textbox">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationExpression="^([0-9]|1[0])$" runat="server" ControlToValidate="TextBox3" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="col1" colspan="2">
                        <asp:Label ID="Label4" runat="server" Text="Crunches Score"></asp:Label>
                    </td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBox4" runat="server" Font-Size="Large" Height="40px" CssClass="text-center"></asp:TextBox>
                    </td>
                    <td class="textbox">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="textbox">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ValidationExpression="^([0-9]|1[0])$" runat="server" ControlToValidate="TextBox4" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1" style="background-color:darkcyan;color:white;border-radius:10px;text-align:center" colspan="6" >WRITTEN TEST</td>
                </tr>
                <tr>
                    <td class="col1" colspan="2" >
                        Written test score</td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBox5" runat="server" Font-Size="Large" Height="40px" CssClass="text-center"></asp:TextBox>
                    </td>
                    <td class="textbox">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="textbox">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ValidationExpression="^([0-9]|1[0])$" runat="server" ControlToValidate="TextBox5" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style1" style="background-color:darkcyan;color:white;border-radius:10px;text-align:center" colspan="6" >INTERVIEW TEST</td>
                </tr>
                <tr>
                    <td class="col1" colspan="2" >
                        Communication
                    </td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBox6" runat="server" Font-Size="Large" Height="40px" CssClass="text-center"></asp:TextBox>
                    </td>
                    <td class="textbox">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="textbox">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ValidationExpression="^([0-9]|1[0])$" runat="server" ControlToValidate="TextBox6" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="col1" colspan="2">
                        Knowledge</td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBox7" runat="server" Font-Size="Large" Height="40px" CssClass="text-center"></asp:TextBox>
                    </td>
                    <td class="textbox">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="textbox">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" ValidationExpression="^([0-9]|1[0])$" runat="server" ControlToValidate="TextBox7" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td class="col1" colspan="2">
                        Confidence</td>
                    <td class="textbox">
                        <asp:TextBox ID="TextBox8" runat="server" Font-Size="Large" Height="40px" CssClass="text-center"></asp:TextBox>
                    </td>
                    <td class="textbox">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="textbox">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ValidationExpression="^([0-9]|1[0])$" runat="server" ControlToValidate="TextBox8" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                    
                </tr>
                <tr>
                    
                    <td colspan="6">
                        <center>
                        <asp:Button ID="Button1" runat="server" Text="SUBMIT" Width="110px" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="CLEAR" Width="102px" OnClick="Button2_Click" />
                    </center>
                            </td>
                        
                </tr>
                
                </table>
            </center>
            <p>&nbsp;</p>

        </div>
        <p>
            <asp:Label ID="Label13" runat="server"></asp:Label>
        </p>

        </div> 
            

            
        </div>
    </div>




        
            
            


        
    </form>
</body>
</html>
