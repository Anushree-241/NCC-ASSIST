<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editcamps.aspx.cs" Inherits="NCC_editcamps" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $('#sidebar').css('display', 'block');
            });
        });

    </script>
    <style type="text/css">
    #DetailsView1{
        font-size:larger;

    }
    </style>

    

</head>
<body>
    



    <!--sidenav-->
    
	
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
               <center>




                   <form id="form1" class="row g-3"  runat="server"  >

            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="camp_id" DataSourceID="SqlDataSource1" Height="100px" Width="825px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:TemplateField>
                        <ItemTemplate>
                             <h1 align="center">EDIT CAMP DETAILS</h1>
                            <br />
              <div class="row">
                  <div class="col-md-2">
    <label for="inputEmail4" class="form-label">CAMP ID</label>
     <asp:Label ID="Label1" runat="server" CssClass="form-control" Text='<%# Bind("camp_id") %>'></asp:Label>

  </div>
                  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">CAMP NAME</label>
    <asp:Label ID="Label2" runat="server" CssClass="form-control" Text='<%# Bind("camp_name") %>'></asp:Label>
  </div>

    <div class="col-3">
    <label for="inputAddress2" class="form-label">STARTING DATE</label>
    <asp:Label ID="Label4" runat="server" CssClass="form-control" Text='<%# Bind("camp_startingdate") %>'></asp:Label>
  </div>
                  </div>
  
  
<div class="row">
    <div class="col-8">
    <label for="inputAddress" class="form-label">CAMP DESCRIPTION</label>
    <asp:Label ID="Label3" runat="server" CssClass="form-control" Text='<%# Bind("camp_desc") %>'></asp:Label>
  </div>
    <div class="col-md-3">
    <label for="inputCity" class="form-label">ENDING DATE</label>
    <asp:Label ID="Label5" runat="server" CssClass="form-control" Text='<%# Bind("camp_endingdate") %>'></asp:Label>
  </div>
   
  
</div>

<div class="row">
    <div class="col-md-3">
    <label for="inputState" class="form-label">CAMP DURATION</label>
    <asp:Label ID="Label6" runat="server" CssClass="form-control" Text='<%# Bind("camp_duration") %>'></asp:Label>
  </div>
  <div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP TYPE</label>
     <asp:Label ID="Label7" runat="server" CssClass="form-control" Text='<%# Bind("camp_type") %>'></asp:Label>
  </div>
    <div class="col-md-5">
    <label for="inputZip" class="form-label">CAMP LOCATION</label>
    <asp:Label ID="Label8" runat="server" CssClass="form-control" Text='<%# Bind("camp_location") %>'></asp:Label>
  </div>

</div>
  
  
  <div class="row">
      <div class="col-md-5">
    <label for="inputZip" class="form-label">CAMP PURPOSE</label>
    <asp:Label ID="Label9" runat="server"  CssClass="form-control" Text='<%# Bind("camp_purpose") %>'></asp:Label>
  </div>
      <div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP FIRING</label>
     <asp:Label ID="Label10" runat="server" CssClass="form-control" Text='<%# Bind("camp_firing") %>'></asp:Label>
  </div>
<div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP AMOUNT</label>
    <asp:Label ID="Label12" runat="server" CssClass="form-control"  Text='<%# Bind("camp_amount") %>'></asp:Label>
  </div>
  
  </div>
                            
  

  


                        </ItemTemplate>
                       <EditItemTemplate>

                           <div class="row">
                                <div class="col-md-2">
    <label for="inputEmail4" class="form-label">CAMP ID</label>
    <asp:Label ID="Label1" runat="server" CssClass="form-control" Text='<%# Eval("camp_id") %>'></asp:Label>
  </div>
  <div class="col-md-5">
    <label for="inputPassword4" class="form-label">CAMP NAME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("camp_name") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[a-zA-Z0-9 ]*$" ErrorMessage="INVALID NAME!.Special characters are not allowed"></asp:RegularExpressionValidator>
  </div>
                               <div class="col-3">
    <label for="inputAddress2"  class="form-label">STARTING DATE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"   Text='<%# Bind("camp_startingdate") %>'></asp:TextBox>
  </div>
                               <div class="col-1">
                       <asp:ImageButton ID="ImageButton1" Style="margin-top:2rem;" ImageUrl="~/NCC/img/planner.png" CausesValidation="false" Height="50" Width="50" runat="server"  OnClick="ImageButton1_Click"  />
                      </div>
            <div class="col-1">
                        <asp:Calendar ID="Calendar1" Visible="false" Style="position:absolute" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"  BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="FullMonth" Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                 <DayStyle BackColor="#CCCCCC" />
                 <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                 <OtherMonthDayStyle ForeColor="#999999" />
                 <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                 <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                 <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
              </div>      
                           </div>

                           <div class="row">
                               <div class="col-7">
    <label for="inputAddress" class="form-label">CAMP DESCRIPTION</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" CssClass="form-control" Text='<%# Bind("camp_desc") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="[a-zA-Z0-9_ ]*$"  ErrorMessage="INVALID DESCRIPTION!.Special characters are not allowed."></asp:RegularExpressionValidator>
  </div>
  
  <div class="col-md-3">
    <label for="inputCity" class="form-label">ENDING DATE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"  Text='<%# Bind("camp_endingdate") %>'></asp:TextBox>
  </div>
                                <div class="col-md-1">
    <asp:ImageButton ID="ImageButton2" Style="margin-top:2rem;" OnClick="ImageButton2_Click" CausesValidation="false" runat="server" ImageUrl="~/NCC/img/planner.png" Height="50" Width="50" />
        </div>  
        <div class="col-md-1">              
        <asp:Calendar ID="Calendar2" Style="position:absolute" Visible="false" runat="server" OnDayRender="Calendar2_DayRender" OnSelectionChanged="Calendar2_SelectionChanged"  BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="FullMonth" Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                 <DayStyle BackColor="#CCCCCC" />
                 <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                 <OtherMonthDayStyle ForeColor="#999999" />
                 <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                 <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                 <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
        </div>
                           </div>
                          
  <div class="row">
      <div class="col-md-3">
    <label for="inputState" class="form-label">CAMP DURATION</label>
    <asp:TextBox ID="TextBox5" CssClass="form-control"  runat="server" ReadOnly="true" Text='<%# Bind("camp_duration") %>'></asp:TextBox>
  </div>
  <div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP TYPE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" CssClass="form-control" Text='<%# Bind("camp_type") %>'></asp:TextBox>
  </div>
                            
  <div class="col-md-5">
    <label for="inputZip" class="form-label">CAMP LOCATION</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" ReadOnly="true" Text='<%# Bind("camp_location") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+"  ErrorMessage="INVALID ENTRY!"></asp:RegularExpressionValidator>
  </div>
  </div>
  
<div class="row">
    <div class="col-md-5">
    <label for="inputZip" class="form-label">CAMP PURPOSE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox13" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control" ReadOnly="true" Text='<%# Bind("camp_purpose") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox13" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+"  ErrorMessage="INVALID ENTRY!"></asp:RegularExpressionValidator>
  </div>
<div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP FIRING</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox9" runat="server" ReadOnly="true" CssClass="form-control" Text='<%# Bind("camp_firing") %>'></asp:TextBox>
  </div>
<div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP AMOUNT</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox11" runat="server" ReadOnly="true" CssClass="form-control" Text='<%# Bind("camp_amount") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox11" ForeColor="Red" ValidationExpression="^([0-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])$"  ErrorMessage="INVALID FORMAT!"></asp:RegularExpressionValidator>
  </div>
  
</div>

  


                       </EditItemTemplate>
                        <InsertItemTemplate>
                            <div class="col-md-2">
    <label for="inputEmail4" class="form-label">CAMP ID</label>
    <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control" ReadOnly="true" Text='<%# Bind("camp_id") %>'></asp:TextBox>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">CAMP NAME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("camp_name") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="[a-zA-Z0-9 ]*$"  ErrorMessage="INVALID NAME!.Special characters are not allowed"></asp:RegularExpressionValidator>
  </div>
  <div class="col-10">
    <label for="inputAddress" class="form-label">CAMP DESCRIPTION</label><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("camp_desc") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[a-zA-Z0-9_ ]*$"  ErrorMessage="INVALID DESCRIPTION!.Special characters are not allowed."></asp:RegularExpressionValidator>
  </div>
  <div class="col-3">
    <label for="inputAddress2" class="form-label">STARTING DATE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Text='<%# Bind("camp_startingdate") %>'></asp:TextBox>
  </div>
  <div class="col-md-3">
    <label for="inputCity" class="form-label">ENDING DATE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox5" ForeColor="Red"  ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Text='<%# Bind("camp_endingdate") %>'></asp:TextBox>
  </div>
  <div class="col-md-3">
    <label for="inputState" class="form-label">CAMP DURATION</label>
    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" ReadOnly="true" Text='<%# Bind("camp_duration") %>'></asp:TextBox>
  </div>
  <div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP TYPE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox7" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Text='<%# Bind("camp_type") %>'></asp:TextBox>
  </div>
                            
  <div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP LOCATION</label><asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox8" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" Text='<%# Bind("camp_location") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox8" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+"  ErrorMessage="INVALID ENTRY!"></asp:RegularExpressionValidator>
  </div>
<div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP PURPOSE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox9" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" Text='<%# Bind("camp_purpose") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TextBox9" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+"  ErrorMessage="INVALID ENTRY!"></asp:RegularExpressionValidator>
  </div>
<div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP FIRING</label><asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox10" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
     <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control" Text='<%# Bind("camp_firing") %>'></asp:TextBox>
  </div>
<div class="col-md-3">
    <label for="inputZip" class="form-label">CAMP AMOUNT</label><asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox12" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control" Text='<%# Bind("camp_amount") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TextBox12" ForeColor="Red" ValidationExpression="^([0-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])$"  ErrorMessage="INVALID FORMAT!"></asp:RegularExpressionValidator>
  </div>
  
  


                        </InsertItemTemplate>

                    </asp:TemplateField>
                    










                    
                    <asp:CommandField  ItemStyle-HorizontalAlign="Center" ControlStyle-CssClass="btn btn-primary" ControlStyle-ForeColor="White"  ShowEditButton="True" >
<ControlStyle CssClass="btn btn-primary" ForeColor="White"></ControlStyle>

<ItemStyle ></ItemStyle>
                    </asp:CommandField>
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>



</form>
                   </center>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [camp] WHERE [camp_id] = @camp_id" InsertCommand="INSERT INTO [camp] ([camp_id], [camp_name], [camp_desc], [camp_startingdate], [camp_endingdate], [camp_duration], [camp_type], [camp_location], [camp_purpose], [camp_firing], [camp_photos], [camp_amount]) VALUES (@camp_id, @camp_name, @camp_desc, @camp_startingdate, @camp_endingdate, @camp_duration, @camp_type, @camp_location, @camp_purpose, @camp_firing, @camp_photos, @camp_amount)" SelectCommand="SELECT * FROM [camp]" UpdateCommand="UPDATE [camp] SET [camp_name] = @camp_name, [camp_desc] = @camp_desc, [camp_startingdate] = @camp_startingdate, [camp_endingdate] = @camp_endingdate, [camp_duration] = @camp_duration, [camp_type] = @camp_type, [camp_location] = @camp_location, [camp_purpose] = @camp_purpose, [camp_firing] = @camp_firing, [camp_photos] = @camp_photos, [camp_amount] = @camp_amount WHERE [camp_id] = @camp_id">
            <DeleteParameters>
                <asp:Parameter Name="camp_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="camp_id" Type="String" />
                <asp:Parameter Name="camp_name" Type="String" />
                <asp:Parameter Name="camp_desc" Type="String" />
                <asp:Parameter Name="camp_startingdate" Type="String" />
                <asp:Parameter Name="camp_endingdate" Type="String" />
                <asp:Parameter Name="camp_duration" Type="String" />
                <asp:Parameter Name="camp_type" Type="String" />
                <asp:Parameter Name="camp_location" Type="String" />
                <asp:Parameter Name="camp_purpose" Type="String" />
                <asp:Parameter Name="camp_firing" Type="String" />
                <asp:Parameter Name="camp_photos" Type="String" />
                <asp:Parameter Name="camp_amount" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="camp_name" Type="String" />
                <asp:Parameter Name="camp_desc" Type="String" />
                <asp:Parameter Name="camp_startingdate" Type="String" />
                <asp:Parameter Name="camp_endingdate" Type="String" />
                <asp:Parameter Name="camp_duration" Type="String" />
                <asp:Parameter Name="camp_type" Type="String" />
                <asp:Parameter Name="camp_location" Type="String" />
                <asp:Parameter Name="camp_purpose" Type="String" />
                <asp:Parameter Name="camp_firing" Type="String" />
                <asp:Parameter Name="camp_photos" Type="String" />
                <asp:Parameter Name="camp_amount" Type="String" />
                <asp:Parameter Name="camp_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource> 
            
            </div>

    </div>
	
</body>
</html>