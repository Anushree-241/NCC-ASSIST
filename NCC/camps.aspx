<%@ Page Language="C#" AutoEventWireup="true" CodeFile="camps.aspx.cs" Inherits="NCC_camps" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>camps page</title>
    
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
        .card{
            box-shadow:rgba(0,0,0,0.4) 3px 2px 2px 2px;
        }
        
        
       
    </style>
    
</head>
<body>
    
    

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
            

              <div class="container "  >
            

            
               <div class="card border-3" >
                   <div class="card-header text-center">
                       <h1>ADD CAMP DETAILS</h1>
                   </div>
                   <div class="card-body">
                       <asp:TextBox ID="TextBox1" Visible="false" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
                <form id="form1" class="row g-3" runat="server">
                
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">CAMP NAME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      
                
                  <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Font-Size="Large" Height="40px" ToolTip="Ex:Camp1"></asp:TextBox>
                  
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="[a-zA-Z0-9 ]*$" ControlToValidate="TextBox2" ErrorMessage="INVALID NAME!.Special characters are not allowed" ForeColor="Red" ></asp:RegularExpressionValidator>
                          
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Description</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    

    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Font-Size="Large" Height="40px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="[a-zA-Z0-9_ ]*$" runat="server" ControlToValidate="TextBox3" ErrorMessage="INVALID DESCRIPTION!.Special characters are not allowed." ForeColor="Red" Font-Size="Medium"></asp:RegularExpressionValidator>
                            
  </div>
                    <hr />
  <div class="col-2">
    <label for="inputAddress" class="form-label">Starting Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  
    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"   ReadOnly="true" Font-Size="Large" Height="40px"  ></asp:TextBox>
      
                        
  </div>
                    <div class="col-1 mt-4">
                        <asp:ImageButton ID="ImageButton1"  ImageUrl="~/NCC/img/planner.png" CausesValidation="false" Height="50" Width="50" runat="server"  OnClick="ImageButton1_Click"  />
                        </div>
                    <asp:Calendar ID="Calendar1"  runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="FullMonth" Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                 <DayStyle BackColor="#CCCCCC" />
                 <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="Red" />
                 <OtherMonthDayStyle ForeColor="#999999" />
                 <SelectedDayStyle BackColor="#333399" ForeColor="Red" />
                 <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="Red" Height="12pt" />
                 <TodayDayStyle BackColor="#999999" ForeColor="Red" />
                        </asp:Calendar>
  <div class="col-2">
    <label for="inputAddress2" class="form-label">Ending Date</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
    <asp:TextBox ID="TextBox5" runat="server"  CssClass="form-control" ReadOnly="true" Font-Size="Large" Height="40px"  ToolTip="Enter valid ending date"></asp:TextBox>
                        
  </div>
                    <div class="col-1 mt-4">
                        <asp:ImageButton ID="ImageButton2"  OnClick="ImageButton2_Click" CausesValidation="false" runat="server" ImageUrl="~/NCC/img/planner.png" Height="50" Width="50" />
                    </div>
                    <asp:Calendar ID="Calendar2"  runat="server" OnDayRender="Calendar2_DayRender" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="FullMonth" Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                 <DayStyle BackColor="#CCCCCC" />
                 <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="Red" />
                 <OtherMonthDayStyle ForeColor="#999999" />
                 <SelectedDayStyle BackColor="#333399" ForeColor="Red" />
                 <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="Red" Height="12pt" />
                 <TodayDayStyle BackColor="#999999" ForeColor="Red" />
                        </asp:Calendar>
  <div class="col-md-2">
    <label for="inputCity" class="form-label">Duration</label>
    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"  ReadOnly="true" Font-Size="Large" Height="40px"  ToolTip="Ex:3 days">  </asp:TextBox>
                    
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-check-label">Type</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
   <asp:RadioButtonList ID="RadioButtonList2" runat="server" type="radio"  CssClass="form-check mt-2"  RepeatDirection="Horizontal" CellPadding="8" CellSpacing="2">
                            <asp:ListItem>Mandatory</asp:ListItem>
                            <asp:ListItem>Non-Mandatory</asp:ListItem>
                        </asp:RadioButtonList>
  </div>
                    <hr />
  <div class="col-md-4">
    <label for="inputZip" class="form-label">Location</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6"  ValidationExpression="[a-zA-Z][a-zA-Z ]+" runat="server" ControlToValidate="TextBox7" ErrorMessage="INVALID ENTRY!" ForeColor="Red"></asp:RegularExpressionValidator>
                                
  </div>
  <div class="col-md-4">
    <label for="inputCity" class="form-label">Purpose</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" ></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ValidationExpression="[a-zA-Z][a-zA-Z ]+" runat="server" ControlToValidate="TextBox8" ErrorMessage="INVALID ENTRY!" ForeColor="Red"></asp:RegularExpressionValidator>
                                  
  </div>
                    
                    <div class="col-md-4">
    <label for="inputState" class="form-check-label">Firing</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                       
                        <asp:RadioButtonList ID="RadioButtonList1" type="radio" CssClass="form-check mt-2 "  runat="server"  RepeatDirection="Horizontal" CellPadding="8" CellSpacing="2" >
                            <asp:ListItem>YES  </asp:ListItem>
                            <asp:ListItem>NO   </asp:ListItem>
                        </asp:RadioButtonList>               
  </div>   
                    <hr />
                    <div class="col-md-6">
    <label for="inputCity" class="form-label">Amount</label><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server"  ValidationExpression="^([0-9]|[1-9][0-9]|[1-9][0-9][0-9]|[1-9][0-9][0-9][0-9])$" ControlToValidate="TextBox9" ErrorMessage="INVALID FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                                     
  </div>
                   
                    <div class="col-md-6">
    <label for="inputCity" class="form-label">Photos</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                   <asp:FileUpload ID="FileUpload1" runat="server" type="file" CssClass="form-control" />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator8" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.jpg|.JPG|.jpeg|.JPEG|.png|.PNG)" runat="server" ControlToValidate="FileUpload1" ErrorMessage="INVALID FILE FORMAT!" ForeColor="Red"></asp:RegularExpressionValidator>
                      
  </div>
                 
  <div class="col-12">
      <center>
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="SUBMIT" OnClick="Button1_Click1" />
                    <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" Text="CLEAR" OnClick="Button2_Click"  />
          </center>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
  </div>




            
                <div>
            
            

            
        </div>
                    </form>
                   </div>
               </div> 
 
    </div>
	
           </div>



       
    
</body>

</html>