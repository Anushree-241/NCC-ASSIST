<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editparade.aspx.cs" Inherits="NCC_editparade" %>

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

            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="p_id" DataSourceID="SqlDataSource1" Height="100px" Width="825px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:TemplateField>
                        <ItemTemplate>
                             <h1 align="center">EDIT PARADE DETAILS</h1>
                            <br />
              <div class="row">
                  <div class="col-md-2">
    <label for="inputEmail4" class="form-label">PARADE ID</label>
     <asp:Label ID="Label1" runat="server" CssClass="form-control" Text='<%# Bind("p_id") %>'></asp:Label>

  </div>
                  <div class="col-md-3">
    <label for="inputPassword4" class="form-label">DATE</label>
    <asp:Label ID="Label2" runat="server" CssClass="form-control" Text='<%# Bind("p_date") %>'></asp:Label>
  </div>

    <div class="col-3">
    <label for="inputAddress2" class="form-label">START TIME</label>
    <asp:Label ID="Label4" runat="server" CssClass="form-control" Text='<%# Bind("p_starttime") %>'></asp:Label>
  </div>
                  <div class="col-3">
    <label for="inputAddress" class="form-label">END TIME</label>
    <asp:Label ID="Label3" runat="server" CssClass="form-control" Text='<%# Bind("p_endtime") %>'></asp:Label>
  </div>
              </div>      
  
  
<div class="row">
    
    <div class="col-md-5">
    <label for="inputCity" class="form-label">VENUE</label>
    <asp:Label ID="Label5" runat="server" CssClass="form-control" Text='<%# Bind("p_venue") %>'></asp:Label>
  </div>
     <div class="col-md-3">
    <label for="inputState" class="form-label">TOPICS COVERED</label>
    <asp:Label ID="Label6" runat="server" CssClass="form-control" Text='<%# Bind("p_topicscovered") %>'></asp:Label>
  </div>
  <div class="col-md-3">
    <label for="inputZip" class="form-label">REFRESHMENTS</label>
     <asp:Label ID="Label7" runat="server" CssClass="form-control" Text='<%# Bind("p_refreshments") %>'></asp:Label>
  </div>
  
</div>


  
  
 
                            
  

  


                        </ItemTemplate>
                       <EditItemTemplate>

                           <div class="row">
                                <div class="col-md-3">
    <label for="inputEmail4" class="form-label">PARADE ID</label>
    <asp:Label ID="Label1" runat="server" CssClass="form-control" Text='<%# Eval("p_id") %>'></asp:Label>
  </div>
<div class="col-md-4">
    <label for="inputAddress2" class="form-label">START TIME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"   Text='<%# Bind("p_starttime") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ForeColor="Red" ValidationExpression="(([01]?[0-9]):([0-5][0-9]) ([AaPp][Mm]))"   ControlToValidate="TextBox3" ErrorMessage="INVALID FORMAT! EX:10:00 AM/PM"></asp:RegularExpressionValidator>
  </div>
  <div class="col-md-3">
    <label for="inputPassword4" class="form-label">DATE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("p_date") %>'>
</asp:TextBox>
      </div>

       <div class="col-md-1">
    <asp:ImageButton ID="ImageButton1" ImageUrl="~/NCC/img/planner.png" Style="margin-top:2rem;" CausesValidation= "false" Height="40" Width="40" runat="server"  OnClick="ImageButton1_Click" />
                                   </div>
                               <div class="col-md-1">
                    <asp:Calendar ID="Calendar1" Visible="false" runat="server" style="margin-top:2rem"  OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"  BackColor="White" BorderColor="Black" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" Width="400px" DayNameFormat="Shortest" TitleFormat="Month" >
                    <DayHeaderStyle Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" BackColor="#CCCCCC" />
                        <DayStyle Width="14%" />
                 <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                 <OtherMonthDayStyle ForeColor="#999999" />
                 <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                 <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                 <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                                   
  
                    </div>      
            
  
                               </div>
                           <div class="row">
                               <div class="col-md-4">
    <label for="inputCity" class="form-label">VENUE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox4" ReadOnly="true" runat="server" CssClass="form-control"  Text='<%# Bind("p_venue") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"  ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="INVALID ENTRY!"></asp:RegularExpressionValidator>
  </div>
                               
                               <div class="col-md-3">
                               <label for="inputState" class="form-label">TOPICS COVERED</label>
    <asp:TextBox ID="TextBox5" CssClass="form-control"  runat="server" ReadOnly="true" Text='<%# Bind("p_topicscovered") %>'></asp:TextBox>
  </div>
                               <div class="col-md-4">
    <label for="inputAddress" class="form-label">END TIME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("p_endtime") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="(([01]?[0-9]):([0-5][0-9]) ([AaPp][Mm]))"   ErrorMessage="INVALID FORMAT! EX:10:00 AM/PM"></asp:RegularExpressionValidator>
  </div>
                           </div>

                           <div class="row">
                               
  
  
                               
    
 <center> <div class="col-md-3">
    <label for="inputZip" class="form-label">REFRESHMENTS</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" ReadOnly="true" Text='<%# Bind("p_refreshments") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ForeColor="Red" ValidationExpression="[a-zA-Z][a-zA-Z ]+"   ControlToValidate="TextBox6" ErrorMessage="INVALID ENTRY!"></asp:RegularExpressionValidator>
  </div></center>
                           </div>
                          
  


  


                       </EditItemTemplate>
                        <InsertItemTemplate>
                            <div class="col-md-2">
    <label for="inputEmail4" class="form-label">PARADE ID</label>
    <asp:TextBox ID="TextBox1" runat="server"  CssClass="form-control" ReadOnly="true" Text='<%# Bind("p_id") %>'></asp:TextBox>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">DATE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox2" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("p_date") %>'></asp:TextBox>
  </div>
  <div class="col-10">
    <label for="inputAddress" class="form-label">START TIME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("p_starttime") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="(([01]?[0-9]):([0-5][0-9]) ([AaPp][Mm]))"   ErrorMessage="INVALID FORMAT! EX:10:00 AM/PM"></asp:RegularExpressionValidator>
  </div>
  <div class="col-3">
    <label for="inputAddress2" class="form-label">END TIME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Text='<%# Bind("p_endtime") %>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ValidationExpression="(([01]?[0-9]):([0-5][0-9]) ([AaPp][Mm]))"   ControlToValidate="TextBox4" ErrorMessage="INVALID FORMAT! EX:10:00 AM/PM"></asp:RegularExpressionValidator>
  </div>
  <div class="col-md-3">
    <label for="inputCity" class="form-label">VENUE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox5" ForeColor="Red"  ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Text='<%# Bind("p_venue") %>'></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationExpression="[a-zA-Z][a-zA-Z ]+"   ControlToValidate="TextBox5" ForeColor="red" ErrorMessage="INVALID ENTRY!"></asp:RequiredFieldValidator>
  </div>
  <div class="col-md-3">
    <label for="inputState" class="form-label">TOPICS COVERED</label>
    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"  Text='<%# Bind("p_topicscovered") %>'></asp:TextBox>
  </div>
  <div class="col-md-3">
    <label for="inputZip" class="form-label">REFRESHMENTS</label><asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox7" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" Text='<%# Bind("p_refreshments") %>'></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationExpression="[a-zA-Z][a-zA-Z ]+" ForeColor="Red"  ControlToValidate="TextBox7" ErrorMessage="INVALID ENTRY!"></asp:RequiredFieldValidator>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [parade] WHERE [p_id] = @p_id" InsertCommand="INSERT INTO [parade] ([p_id], [p_date], [p_starttime], [p_endtime], [p_venue], [p_topicscovered], [p_refreshments]) VALUES (@p_id, @p_date, @p_starttime, @p_endtime, @p_venue, @p_topicscovered, @p_refreshments)" SelectCommand="SELECT * FROM [parade]" UpdateCommand="UPDATE [parade] SET [p_date] = @p_date, [p_starttime] = @p_starttime, [p_endtime] = @p_endtime, [p_venue] = @p_venue, [p_topicscovered] = @p_topicscovered, [p_refreshments] = @p_refreshments WHERE [p_id] = @p_id">
            <DeleteParameters>
                <asp:Parameter Name="p_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="p_id" Type="String" />
                <asp:Parameter Name="p_date" Type="String" />
                <asp:Parameter Name="p_starttime" Type="String" />
                <asp:Parameter Name="p_endtime" Type="String" />
                <asp:Parameter Name="p_venue" Type="String" />
                <asp:Parameter Name="p_topicscovered" Type="String" />
                <asp:Parameter Name="p_refreshments" Type="String" />
                
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="p_date" Type="String" />
                <asp:Parameter Name="p_starttime" Type="String" />
                <asp:Parameter Name="p_endtime" Type="String" />
                <asp:Parameter Name="p_venue" Type="String" />
                <asp:Parameter Name="p_topicscovered" Type="String" />
                <asp:Parameter Name="p_refreshments" Type="String" />
                
            </UpdateParameters>
        </asp:SqlDataSource> 
            
            </div>

    </div>
	
</body>
</html> 