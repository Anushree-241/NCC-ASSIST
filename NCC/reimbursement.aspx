<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="reimbursement.aspx.cs" Inherits="NCC_reimbursement"  EnableViewState="true"%>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>reimbursement</title>
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
       table{
           width:70%;
           border:none;
           box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
           
       }
       td{
           padding:10px;
           text-align:center;
           
       }
       .heading{
           background-color:maroon;
           color:#fff;
       }
       #reimburse{
           background-color:forestgreen;
           padding:3px;
           border-radius:10px;
           color:white;
           text-decoration:none;
       }
       #reimburse:hover{
           box-shadow:rgba(0,0,0,0.5) 3px 3px 3px 3px;
       }
        .auto-style1 {
            width: 99.5%;
            left: -3px;
            right: -9px;
            top: 0;
        }
   </style>

</head>
<body>
    
    
        <div class="wrapper" >
        <!-- Sidebar  -->
        <nav id="sidebar" style="background-color:#22395D;" onload="Page_Load" >
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
        <div id="content" >

            <nav class="navbar navbar-expand-lg " style="background-color:#22395D;border-radius:10px;width:99.5%;margin-left:3px" onload="Page_Load">
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
                                <a class="nav-link" href="adminhome.aspx" style="color:white;font-size:larger"><strong>HOME</strong></a>
                            </li>
                            <li class="nav-item ml-4">
                                <a class="nav-link" href="adminlogin.aspx"style="color:white;font-size:larger"><strong>LOGOUT</strong></a>
                            </li>
                            


                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container">
            <div class="card mt-3 p-3" style="width:70rem;">
            <div class="card-body">
                <asp:Label ID="Label10" runat="server" Text="" Visible="false"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="" Visible="false"></asp:Label>
                <h1 align="center">CAMP REIMBURSEMENT</h1>
                <hr />
                <form class="row g-3" runat="server">
                    
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Select Camp Name</label>
      <asp:DropDownList AppendDataBoundItems="true" ID="DropDownList1" TabIndex="0" runat="server" CssClass="form-select" DataSourceID="SqlDataSource1" DataTextField="camp_name" DataValueField="camp_name" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"  >
          <asp:ListItem Selected="True">Select Camp Name</asp:ListItem>
      </asp:DropDownList>
     <hr />
  </div>

  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Select Cadet Register ID</label>
      <asp:DropDownList AppendDataBoundItems="True" ID="DropDownList2" TabIndex="0" runat="server" CssClass="form-select" DataSourceID="SqlDataSource2" DataTextField="appno" DataValueField="appno" AutoPostBack="True">
          <asp:ListItem Selected="True">Select Register ID</asp:ListItem>
      
      </asp:DropDownList>
      <hr />
  </div>
        

    <ul class="list-group list-group-horizontal" style="width:17rem;">
  <li class="list-group-item"><label for="inputPassword4"  class="form-label">Cadet First Name  </label></li>
  <li class="list-group-item">    <label for="inputAddress" class="form-label">Middle Name</label></li>
  <li class="list-group-item"><label for="inputAddress2" class="form-label">Last Name</label></li>
  <li class="list-group-item"><label for="inputCity" class="form-label">Course</label></li>
  <li class="list-group-item"><label for="inputCity" class="form-label">Reimbursement Amount</label><asp:RequiredFieldValidator  ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red" Font-Size="Large" ErrorMessage="*"></asp:RequiredFieldValidator></li>
</ul>
<ul class="list-group list-group-horizontal-sm">
  <li class="list-group-item"><asp:TextBox ID="Label1" ReadOnly="true" CssClass="form-control" style="font-weight:600;height:2rem" runat="server" ></asp:TextBox></li>
  <li class="list-group-item"><asp:TextBox ID="Label2" ReadOnly="true" CssClass="form-control" style="font-weight:600;height:2rem" runat="server" ></asp:TextBox></li>
  <li class="list-group-item"><asp:TextBox ID="Label3" ReadOnly="true" CssClass="form-control" style="font-weight:600;height:2rem" runat="server" ></asp:TextBox></li>
  <li class="list-group-item"><asp:TextBox ID="Label4" ReadOnly="true" CssClass="form-control" style="font-weight:600;height:2rem" runat="server" ></asp:TextBox></li>
  <li class="list-group-item"><asp:TextBox ID="TextBox1"  runat="server" style="font-weight:600;height:2rem" CssClass="form-control"></asp:TextBox>
  </li>
</ul>
<ul class="list-group list-group-horizontal" style="width:15rem;">
  <li class="list-group-item"><label for="inputCity" class="form-label">Course Year</label></li>
  <li class="list-group-item"><label for="inputCity" class="form-label">Batch Year</label></li>
  <li class="list-group-item"><label for="inputCity" class="form-label">Camp Name</label></li>
  <li class="list-group-item"><label for="inputCity" class="form-label">Camp Date</label></li>
  <li class="list-group-item"><label for="inputCity" class="form-label">Camp Amount</label></li>
</ul>
<ul class="list-group list-group-horizontal-sm">
  <li class="list-group-item"><asp:TextBox ID="Label5" ReadOnly="true" CssClass="form-control" style="font-weight:600;height:2rem" runat="server" ></asp:TextBox></li>
  <li class="list-group-item"><asp:TextBox ID="Label6" ReadOnly="true" CssClass="form-control" style="font-weight:600;height:2rem" runat="server" ></asp:TextBox></li>
  <li class="list-group-item"><asp:TextBox ID="Label7" ReadOnly="true" CssClass="form-control" style="font-weight:600;height:2rem" runat="server" ></asp:TextBox></li>
  <li class="list-group-item"><asp:TextBox ID="Label8" ReadOnly="true" CssClass="form-control" style="font-weight:600;height:2rem" runat="server" ></asp:TextBox></li>
  <li class="list-group-item"><asp:TextBox ID="Label9" ReadOnly="true" CssClass="form-control" style="font-weight:600;height:2rem" runat="server" ></asp:TextBox></li>
</ul>

                    <asp:Label ID="Label12" runat="server" Text=""></asp:Label>

  <div class="col-12">
      <br />
      <center>
          <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="SUBMIT" OnClick="Button1_Click1" />
      </center>
  </div>
                    </form>
</div>
     </div>       

            
        </div>    
        </div>
    </div>
	
    
        

             
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [camp_name] FROM [camp]"></asp:SqlDataSource>
	


             
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select  appno from cadet,campatt,camp where cadet.cid= campatt.cadetid and camp.camp_id=campatt.campid and camp.camp_name = @campname and campatt.att_status='True' ">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="campname" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        
	


             

        </body>
</html>
