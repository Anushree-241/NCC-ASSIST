<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="Rankholders1.aspx.cs" Inherits="NCC_Rankholders1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <%-- <link href="css/cadetselection.css" rel="stylesheet" />--%>
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
        .container{
            width:40%;
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
background-color: #FAACA8;
background-image: linear-gradient(19deg, #FAACA8 0%, #DDD6F3 100%);

        }
        .table1{
               
                              
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

           /*#Button1{
               background-color:forestgreen;
               border-radius:10px;
               border:none;
               padding:7px;
               color:#ffff;
               margin-right:1rem;

           }*/
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

           .labels{
               font-size:larger;
               font-weight:700;
           }
    </style>
    
</head>
<body>
    

        <div class="wrapper" >
        <!-- Sidebar  -->
        <nav id="sidebar" style="background-color:#22395D;margin-top:-24rem;" onload="Page_Load" >
            <div class="sidebar-header" style="background-color:#22395D" >
                <img src="img/NCClogo.png" height="150" width="150" style="margin-left:1.5rem;"/>
            </div>

            <ul class="list-unstyled components" style="background-color:#22395D">
                <p style="font-weight:800">NATIONAL CADET CORPS</p>
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
                    <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">CADET SELECTION</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu3" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="cadetselection.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">UPDATE MARKS</a>
                        </li>
                        <li>
                            <a href="cadetapproval.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">APPROVE CANDIDATES</a>
                        </li>                       
                    </ul>
                </li>
                <li>
                    <a href="cadetdb.aspx"  style="background-color:#22395D;text-decoration:none;color:white;" 
                        onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">CADET DATABASE</a>
                </li>
                <li>
                    <a href="#pageSubmenu4" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" style="background-color:#22395D;text-decoration:none;color:white">REIMBURSEMENT</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu4" style="background-color:#22395D;color:white" >
                        <li>
                            <a href="reimbursement.aspx" style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">REIMBURSE</a>
                        </li>
                        <li>
                            <a href="cadcampreimbuse.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW CAMP REIMBURSEMENT</a>
                        </li>    
                        <li>
                            <a href="cadeventreimbuse.aspx"  style="background-color:#22395D;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">VIEW EVENT REIMBURSEMENT</a>
                        </li>  
                    </ul>
                </li>
                <li >
                    <a href="editprofile.aspx" style="background-color:#22395D;text-decoration:none;color:white"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#22395D'">EDIT PROFILE</a>
                </li>
                
            </ul>

            
        </nav>

        <!-- Page Content  -->
        <div id="content" >

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
                <asp:Label ID="Label1" Visible="false" runat="server" ></asp:Label>
            <center><h1>UPDATE RANK</h1></center>
           <form id="form1" class="row g-3" runat="server">
                
  <div class="col-md-4">
    <label for="inputEmail4" class="form-label">Cadet's First Name</label>
    <asp:Label ID="Label9" CssClass="form-control" runat="server"></asp:Label>
  </div>
  <div class="col-md-4">
    <label for="inputPassword4" class="form-label">Middle Name</label>
    <asp:Label ID="Label17" CssClass="form-control" runat="server"></asp:Label>
  </div>
  <div class="col-4">
    <label for="inputAddress" class="form-label">Last Name</label>
    
      <asp:Label ID="Label10" CssClass="form-control" runat="server"></asp:Label>
  </div>
  <div class="col-3">
    <label for="inputAddress2" class="form-label">Course</label>
    <asp:Label ID="Label11" CssClass="form-control" runat="server"></asp:Label>
  </div>
  <div class="col-md-4">
    <label for="inputCity" class="form-label">Course Year</label>
    <asp:Label ID="Label12" CssClass="form-control" runat="server"></asp:Label>
  </div>
<div class="col-md-3">
    <label for="inputCity" class="form-label">Batch</label>
    <asp:Label ID="Label16" CssClass="form-control" runat="server"></asp:Label>
  </div>
  <div class="col-md-6">

    <label for="inputState" class="form-label">Select Rank</label>
    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="true">
                            <asp:ListItem selected="True"  hidden="hidden" value="Choose Rank" > Choose Rank </asp:ListItem>
                            <asp:ListItem Value="Cadet">Cadet</asp:ListItem>
                            <asp:ListItem Value="Company Senior Under Officer">Company Senior Under Officer</asp:ListItem>
                            <asp:ListItem Value="Company Junior Under Officer">Company Junior Under Officer</asp:ListItem>
                            <asp:ListItem Value="Company Sargeant Master">Company Sargeant Master</asp:ListItem>
                            <asp:ListItem Value="Company Quater Master Sargeant">Company Quater Master Sargeant</asp:ListItem>
                            <asp:ListItem Value="Sargeant">Sargeant</asp:ListItem>
                            <asp:ListItem Value="Corporal">Corporal</asp:ListItem>
                            <asp:ListItem Value="Lanu Corporal">Lance Corporal</asp:ListItem>

                        </asp:DropDownList>
  </div>
  <div class="col-md-6 mb-2">
    <label for="inputZip" class="form-label">Selected Rank</label>
    <asp:Label ID="Label14" CssClass="form-control" runat="server"></asp:Label>
  </div>
  
  <div class="col-12 mb-2">
      <center>
      <asp:Button ID="Button1" runat="server" Text="SUBMIT" CssClass="btn btn-primary" OnClick="Button1_Click" />
    </center>
  
  </div>



            <%--<table class="table1" id="table1" runat="server">
                <tr>
                    <td class="col1">First Name</td>
                    <td class="labels">
                        
                    </td>
                </tr>
                <tr>
                    <td class="col1">Last Name</td>
                    <td class="labels">
                        
                    </td>
                </tr>
                <tr>
                    <td class="col1">Father&#39;s Name</td>
                    <td class="labels">
                        
                    </td>
                </tr>
                <tr>
                    <td class="col1">Course</td>
                    <td class="labels">
                        
                    </td>
                </tr>
                <tr>
                    <td class="col1">Course Year</td>
                    <td class="labels">
                        
                    </td>
                </tr>
                
                <tr>
                    <td class="col1">Batch</td>
                    <td class="labels">
                        
                    </td>
                </tr>
                
                <tr>
                    <td class="col1">
                                            </td>
                    <td class="labels">
                        
                    </td>
                </tr>
                <tr>
                    <td class="col1">
                        Selected Rank:</td>
                    <td class="labels">
                        
                    </td>
                </tr>
                
               
                <tr>
                    <td class="col1" colspan="2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                        <asp:Button ID="Button2" runat="server" Text="Clear" />
                        <asp:Label ID="Label15" runat="server"></asp:Label>
                    </td>
                </tr>
                
               
                </table>--%>
</form>
                </div>

            </div>


</div>
</div>
    
    
</body>
</html>
