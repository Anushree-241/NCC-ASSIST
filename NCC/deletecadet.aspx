<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deletecadet.aspx.cs" Inherits="NCC_deletecadet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
     
     <link href="css/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> 
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"
    />
    <link href="edit.css" type="text/css" rel="StyleSheet" />


    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
                $('#sidebar').css('display', 'block');
                });
        });
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
         <div class="wrapper" >
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
            



        <center>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="cid" DataSourceID="SqlDataSource2" Height="111px" Width="1361px" AllowPaging="True">
                <Fields>
                    <asp:TemplateField>
                        

                        <ItemTemplate>
                        <div class="container rounded bg-white mt-5 mb-5">
      <div class="row">
      
        <div class="col">
          <div class="p-3 py-5">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h4 class="text-right">Profile </h4>
            </div>
              <div class="row mt-2">
                  <div class="col-md-4">
                <img src='Uploades/Candidate photos/<%#Eval ("c_photo")%>' height="200" width="200" />
                  
                
              </div>
              </div>
            <div class="row mt-2">
                
              <div class="col-md-4">
                <label class="labels">CADET'S FIRST NAME</label>
                  <asp:Label ID="TextBox1" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_fname")%>'></asp:Label>
                
              </div>
              <div class="col-md-4">
                <label class="labels">MIDDLE NAME</label>
                  <asp:Label ID="Label2" runat="server"  CssClass="form-control"
                  Text='<%#Bind("c_mname")%>'></asp:Label>
                
              </div>
                <div class="col-md-4">
                <label class="labels">LAST NAME</label>
                    <asp:Label ID="Label3" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_lname")%>'></asp:Label>
               
              </div>
            </div>
              <br>
              </br>
            <div class="row mt-3">
              <div class="col-md-6">
                <label class="labels">NATONALITY</label>
                  <asp:Label ID="Label4" runat="server"  CssClass="form-control"
                  Text='<%#Bind("c_nationality")%>'></asp:Label>
                
              </div>
                <div class="col-md-6">
                <label class="labels">DATE OF BIRTH</label>
                  <asp:Label ID="Label37" runat="server"  CssClass="form-control"
                  Text='<%#Bind("c_dob")%>'></asp:Label>
                
              </div>
                </div>
              <br>
              </br>
              <div class="row mt-2">
              <div class="col-md-4">
                <label class="labels">FATHER'S FIRST NAME</label>
                  <asp:Label ID="Label5" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_fathers_fname")%>'></asp:Label>
               
              </div>
              <div class="col-md-4">
                <label class="labels">MIDDLE NAME</label>
                  <asp:Label ID="Label6" runat="server" CssClass="form-control"
                      Text='<%#Bind("c_fathers_mname")%>'></asp:Label>
               
              </div>
              <div class="col-md-4">
                <label class="labels"> LAST NAME</label>
                  <asp:Label ID="Label7" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_fathers_lname")%>'></asp:Label>
                
              </div>
            </div>
              <br>
              </br>
            <div class="row mt-3">
              <div class="col-md-4">
                <label class="labels">MOTHER'S FIRST NAME</label>
                  <asp:Label ID="Label8" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_mothers_fname")%>'></asp:Label>
               
              </div>
              <div class="col-md-4">
                <label class="labels">MIDDLE NAME</label>
                  <asp:Label ID="Label9" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_mothers_mname")%>'></asp:Label>
               
              </div>
                <div class="col-md-4">
                <label class="labels">LAST NAME</label>
                    <asp:Label ID="Label10" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_mothers_lname")%>' ></asp:Label>
               
              </div>
          </div>
              <br>
              </br>
              <%--<div class="row mt-2" hidden="hidden">
                <div class="col-md-12">
                <label class="labels">ADDRESS</label>
                    <asp:Label ID="Label11" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_address")%>'></asp:Label>
               
              </div>
                  </div>
              <br>
              </br>--%>
              <%--<div class="row mt-2" hidden="hidden">
                <div class="col-md-4">
                <label class="labels">LANDMARK</label>
                    <asp:Label ID="Label12" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_landmark")%>'></asp:Label>
                
              </div>
                <div class="col-md-4">
                <label class="labels">STATE</label>
                    <asp:Label ID="Label13" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_state")%>'></asp:Label>
                
              </div>
                  
                <div class="col-md-4">
                <label class="labels">DISTRICT</label>
                    <asp:Label ID="Label14" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_district")%>'></asp:Label>
                
              </div>
              </div>
              <br>
              </br>--%>
              <%--<div class="row mt-2" hidden="hidden">
                <div class="col-md-4">
                <label class="labels">TALUK</label>
                    <asp:Label ID="Label15" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_taluk")%>'></asp:Label>
               
              </div>
                <div class="col-md-4">
                <label class="labels">CITY</label>
                    <asp:Label ID="Label16" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_city")%>'></asp:Label>
                
              </div>
                <div class="col-md-4">
                <label class="labels">PINCODE</label>
                    <asp:Label ID="Label17" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_pincode")%>' ></asp:Label>
                
              </div>
                  </div>
              <br>
              </br>--%>
              <div class="row mt-2">
                <div class="col-md-2">
                <label class="labels">GENDER</label>
                    <asp:Label ID="Label38" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_gender")%>'></asp:Label>
               
              </div>
                <div class="col-md-2">
                <label class="labels">BLOOD GROUP</label>
                    <asp:Label ID="Label39" runat="server" Class="form-control"
                  Text='<%#Bind("c_bloodgroup")%>' ></asp:Label>
               
              </div>
                  <div class="col-md-3">
                <label class="labels">MOBILE NUMBER</label>
                    <asp:Label ID="Label18" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_mobileno")%>'></asp:Label>
               
              </div>
                  <div class="col-md-5">
                <label class="labels">EMAIL ID</label>
                    <asp:Label ID="Label19" runat="server" Class="form-control"
                  Text='<%#Bind("c_emailid")%>' ></asp:Label>
               
              </div>
            </div>
             
                  
              <br>
              </br>
              <%--<div class="row mt-2"hidden="hidden">
                <div class="col-md-6">
                <label class="labels">NEAREST RAILWAY STATION</label>
                    <asp:Label ID="Label20" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_nearest_railway_station")%>'></asp:Label>
                
              </div>
                <div class="col-md-6">
                <label class="labels">NEAREST POLICE STATION</label>
                    <asp:Label ID="Label21" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_nearest_police_station")%>'></asp:Label>
                
              </div>
            </div>
              <br>
              </br>--%>
              <%--<div class="row mt-2" hidden="hidden">
              <div class="col-md-6">
                <label class="labels">QUALIFICATION</label>
                  <asp:Label ID="Label22" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_qualification")%>'></asp:Label>
                
              </div>
                
              <div class="col-md-6">
                <label class="labels">STREAM</label>
                  <asp:Label ID="Label23" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_stream")%>'></asp:Label>
                
              </div>
                  </div>
              <br>
              </br>--%>
              <div class="row mt-2">
                <div class="col-md-2">
                <label class="labels">COURSE</label>
                    <asp:Label ID="Label24" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_course")%>'></asp:Label>
                
              </div>
                <div class="col-md-2">
                <label class="labels">COURSE YEAR</label>
                    <asp:Label ID="Label25" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_courseyear")%>'></asp:Label>
                
              </div>
                  
                <div class="col-md-2">
                <label class="labels">BATCH YEAR</label>
                    <asp:Label ID="Label26" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_batch")%>'></asp:Label>
               
              </div>
                  <div class="col-md-6">
                <label class="labels">COLLEGE/SCHOOL</label>
                    <asp:Label ID="Label27" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_collegeschool")%>'></asp:Label>
                
              </div>
                  </div>
              <br>
              </br>
              <div class="row mt-2">
                
                  
                  
                <div class="col-md-6">
                <label class="labels">NCC UNIT TO BE ENROLLED</label>
                    <asp:Label ID="Label28" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_ncc_unit")%>'></asp:Label>
               
               
              </div>
                </div>
              <br>
              </br>
              <%--<div class="row mt-2"hidden="hidden">
                <div class="col-md-3">
                <label class="labels">MARKS</label>
                    <asp:Label ID="Label40" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_marks")%>'></asp:Label>
                
              </div>
                  
                  
                <div class="col-md-4">
                <label class="labels">IDENTIFICATION MARK</label>
                    <asp:Label ID="Label41" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_identification_mark")%>'></asp:Label>
               
               
              </div>
                  <div class="col-md-5">
                <label class="labels">ENROLLEMENT PERMISSION</label>
                    <asp:Label ID="Label42" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_enrollement_permission")%>'></asp:Label>
               
               
              </div>
                </div>
              <br>
              </br>--%>
              <%--<div class="row mt-2" hidden="hidden">
                <div class="col-md-6">
                <label class="labels">PREVIOUS ENROLLEMENT</label>
                    <asp:Label ID="Label43" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_prev_enrollement")%>'></asp:Label>
                
              </div>
                  
                  
                <div class="col-md-6">
                <label class="labels">PREVIOUS DISMISSED</label>
                    <asp:Label ID="Label44" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_prev_dismissed")%>'></asp:Label>
               
               
              </div>
                </div>
              <br>
              </br>--%>
              <%--<div class="row mt-2" hidden="hidden">
                <div class="col-md-6">
                <label class="labels">NEXT OF KIN</label>
                    <asp:Label ID="Label45" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_next_of_kin")%>'></asp:Label>
                
              </div>
               
               
          
                  <div class="col-md-6">
                <label class="labels">MOBILE NUMBER</label>
                    <asp:Label ID="Label47" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_next_of_kin_phoneno")%>' ></asp:Label>
               
               
              </div>
                </div>
              <br>
              </br>--%>
            <%--<div class="row mt-2" hidden="hidden">
                <div class="col-md-12">
                <label class="labels">NEXT OF KIN ADDRESS</label>
                    <asp:Label ID="Label46" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_next_of_kin_address")%>'></asp:Label>
                
              </div>
                </div>
            <br />--%>
              <%--<div class="row mt-2" hidden="hidden">
                <div class="col-md-6">
                <label class="labels">IFSC NUMBER</label>
                    <asp:Label ID="Label29" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_ifsc")%>'></asp:Label>
                
              </div>
                <div class="col-md-6">
                <label class="labels">ACCOUNT NUMBER</label>
                    <asp:Label ID="Label30" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_accountno")%>'></asp:Label>
               
              </div>
          </div>
              <br>
              </br>--%>
              <%--<div class="row mt-2" hidden="hidden">
               <div class="col-md-6">
                <label class="labels">AADHAR NUMBER</label>
                   <asp:Label ID="Label31" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_aadharno")%>'></asp:Label>
              </div>
                <div class="col-md-6">
                <label class="labels">PAN NUMBER</label>
                    <asp:Label ID="Label32" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_panno")%>'></asp:Label>
                
              </div>
                </div>--%>
            
                            </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ItemStyle-HorizontalAlign="Center" ControlStyle-CssClass="btn btn-primary" ShowDeleteButton="True" >
<ControlStyle CssClass="btn btn-primary"></ControlStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:CommandField>
                </Fields>
                <PagerSettings Position="TopAndBottom" />
                <PagerStyle BackColor="Black" ForeColor="White" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [cadet] WHERE [cid] = @cid" InsertCommand="INSERT INTO [cadet] ([c_fname], [c_mname], [c_lname], [c_nationality], [c_dob], [c_fathers_fname], [c_fathers_mname], [c_fathers_lname], [c_mothers_fname], [c_mothers_mname], [c_mothers_lname], [c_address], [c_landmark], [c_state], [c_district], [c_taluk], [c_city], [c_pincode], [c_gender], [c_mobileno], [c_emailid], [c_bloodgroup], [c_nearest_railway_station], [c_nearest_police_station], [c_conviction_report], [c_qualification], [c_stream], [c_course], [c_courseyear], [c_batch], [c_collegeschool], [c_marks], [c_identification_mark], [c_enrollement_permission], [c_ncc_unit], [c_prev_enrollement], [c_prev_dismissed], [c_next_of_kin], [c_next_of_kin_address], [c_next_of_kin_phoneno], [c_accountno], [c_ifsc], [c_aadharno], [c_panno], [c_photo], [c_declarationform], [c_status], [c_regid]) VALUES (@c_fname, @c_mname, @c_lname, @c_nationality, @c_dob, @c_fathers_fname, @c_fathers_mname, @c_fathers_lname, @c_mothers_fname, @c_mothers_mname, @c_mothers_lname, @c_address, @c_landmark, @c_state, @c_district, @c_taluk, @c_city, @c_pincode, @c_gender, @c_mobileno, @c_emailid, @c_bloodgroup, @c_nearest_railway_station, @c_nearest_police_station, @c_conviction_report, @c_qualification, @c_stream, @c_course, @c_courseyear, @c_batch, @c_collegeschool, @c_marks, @c_identification_mark, @c_enrollement_permission, @c_ncc_unit, @c_prev_enrollement, @c_prev_dismissed, @c_next_of_kin, @c_next_of_kin_address, @c_next_of_kin_phoneno, @c_accountno, @c_ifsc, @c_aadharno, @c_panno, @c_photo, @c_declarationform, @c_status, @c_regid)" UpdateCommand="UPDATE [cadet] SET [c_fname] = @c_fname, [c_mname] = @c_mname, [c_lname] = @c_lname, [c_nationality] = @c_nationality, [c_dob] = @c_dob, [c_fathers_fname] = @c_fathers_fname, [c_fathers_mname] = @c_fathers_mname, [c_fathers_lname] = @c_fathers_lname, [c_mothers_fname] = @c_mothers_fname, [c_mothers_mname] = @c_mothers_mname, [c_mothers_lname] = @c_mothers_lname, [c_address] = @c_address, [c_landmark] = @c_landmark, [c_state] = @c_state, [c_district] = @c_district, [c_taluk] = @c_taluk, [c_city] = @c_city, [c_pincode] = @c_pincode, [c_gender] = @c_gender, [c_mobileno] = @c_mobileno, [c_emailid] = @c_emailid, [c_bloodgroup] = @c_bloodgroup, [c_nearest_railway_station] = @c_nearest_railway_station, [c_nearest_police_station] = @c_nearest_police_station, [c_conviction_report] = @c_conviction_report, [c_qualification] = @c_qualification, [c_stream] = @c_stream, [c_course] = @c_course, [c_courseyear] = @c_courseyear, [c_batch] = @c_batch, [c_collegeschool] = @c_collegeschool, [c_marks] = @c_marks, [c_identification_mark] = @c_identification_mark, [c_enrollement_permission] = @c_enrollement_permission, [c_ncc_unit] = @c_ncc_unit, [c_prev_enrollement] = @c_prev_enrollement, [c_prev_dismissed] = @c_prev_dismissed, [c_next_of_kin] = @c_next_of_kin, [c_next_of_kin_address] = @c_next_of_kin_address, [c_next_of_kin_phoneno] = @c_next_of_kin_phoneno, [c_accountno] = @c_accountno, [c_ifsc] = @c_ifsc, [c_aadharno] = @c_aadharno, [c_panno] = @c_panno, [c_photo] = @c_photo, [c_declarationform] = @c_declarationform, [c_status] = @c_status, [c_regid] = @c_regid WHERE [cid] = @cid" SelectCommand="SELECT * FROM [cadet]">
                <DeleteParameters>
                    <asp:Parameter Name="cid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="c_fname" Type="String" />
                    <asp:Parameter Name="c_mname" Type="String" />
                    <asp:Parameter Name="c_lname" Type="String" />
                    <asp:Parameter Name="c_nationality" Type="String" />
                    <asp:Parameter Name="c_dob" Type="String" />
                    <asp:Parameter Name="c_fathers_fname" Type="String" />
                    <asp:Parameter Name="c_fathers_mname" Type="String" />
                    <asp:Parameter Name="c_fathers_lname" Type="String" />
                    <asp:Parameter Name="c_mothers_fname" Type="String" />
                    <asp:Parameter Name="c_mothers_mname" Type="String" />
                    <asp:Parameter Name="c_mothers_lname" Type="String" />
                    <asp:Parameter Name="c_address" Type="String" />
                    <asp:Parameter Name="c_landmark" Type="String" />
                    <asp:Parameter Name="c_state" Type="String" />
                    <asp:Parameter Name="c_district" Type="String" />
                    <asp:Parameter Name="c_taluk" Type="String" />
                    <asp:Parameter Name="c_city" Type="String" />
                    <asp:Parameter Name="c_pincode" Type="String" />
                    <asp:Parameter Name="c_gender" Type="String" />
                    <asp:Parameter Name="c_mobileno" Type="String" />
                    <asp:Parameter Name="c_emailid" Type="String" />
                    <asp:Parameter Name="c_bloodgroup" Type="String" />
                    <asp:Parameter Name="c_nearest_railway_station" Type="String" />
                    <asp:Parameter Name="c_nearest_police_station" Type="String" />
                    <asp:Parameter Name="c_conviction_report" Type="String" />
                    <asp:Parameter Name="c_qualification" Type="String" />
                    <asp:Parameter Name="c_stream" Type="String" />
                    <asp:Parameter Name="c_course" Type="String" />
                    <asp:Parameter Name="c_courseyear" Type="String" />
                    <asp:Parameter Name="c_batch" Type="String" />
                    <asp:Parameter Name="c_collegeschool" Type="String" />
                    <asp:Parameter Name="c_marks" Type="String" />
                    <asp:Parameter Name="c_identification_mark" Type="String" />
                    <asp:Parameter Name="c_enrollement_permission" Type="String" />
                    <asp:Parameter Name="c_ncc_unit" Type="String" />
                    <asp:Parameter Name="c_prev_enrollement" Type="String" />
                    <asp:Parameter Name="c_prev_dismissed" Type="String" />
                    <asp:Parameter Name="c_next_of_kin" Type="String" />
                    <asp:Parameter Name="c_next_of_kin_address" Type="String" />
                    <asp:Parameter Name="c_next_of_kin_phoneno" Type="String" />
                    <asp:Parameter Name="c_accountno" Type="String" />
                    <asp:Parameter Name="c_ifsc" Type="String" />
                    <asp:Parameter Name="c_aadharno" Type="String" />
                    <asp:Parameter Name="c_panno" Type="String" />
                    <asp:Parameter Name="c_photo" Type="String" />
                    <asp:Parameter Name="c_declarationform" Type="String" />
                    <asp:Parameter Name="c_status" Type="String" />
                    <asp:Parameter Name="c_regid" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="c_fname" Type="String" />
                    <asp:Parameter Name="c_mname" Type="String" />
                    <asp:Parameter Name="c_lname" Type="String" />
                    <asp:Parameter Name="c_nationality" Type="String" />
                    <asp:Parameter Name="c_dob" Type="String" />
                    <asp:Parameter Name="c_fathers_fname" Type="String" />
                    <asp:Parameter Name="c_fathers_mname" Type="String" />
                    <asp:Parameter Name="c_fathers_lname" Type="String" />
                    <asp:Parameter Name="c_mothers_fname" Type="String" />
                    <asp:Parameter Name="c_mothers_mname" Type="String" />
                    <asp:Parameter Name="c_mothers_lname" Type="String" />
                    <asp:Parameter Name="c_address" Type="String" />
                    <asp:Parameter Name="c_landmark" Type="String" />
                    <asp:Parameter Name="c_state" Type="String" />
                    <asp:Parameter Name="c_district" Type="String" />
                    <asp:Parameter Name="c_taluk" Type="String" />
                    <asp:Parameter Name="c_city" Type="String" />
                    <asp:Parameter Name="c_pincode" Type="String" />
                    <asp:Parameter Name="c_gender" Type="String" />
                    <asp:Parameter Name="c_mobileno" Type="String" />
                    <asp:Parameter Name="c_emailid" Type="String" />
                    <asp:Parameter Name="c_bloodgroup" Type="String" />
                    <asp:Parameter Name="c_nearest_railway_station" Type="String" />
                    <asp:Parameter Name="c_nearest_police_station" Type="String" />
                    <asp:Parameter Name="c_conviction_report" Type="String" />
                    <asp:Parameter Name="c_qualification" Type="String" />
                    <asp:Parameter Name="c_stream" Type="String" />
                    <asp:Parameter Name="c_course" Type="String" />
                    <asp:Parameter Name="c_courseyear" Type="String" />
                    <asp:Parameter Name="c_batch" Type="String" />
                    <asp:Parameter Name="c_collegeschool" Type="String" />
                    <asp:Parameter Name="c_marks" Type="String" />
                    <asp:Parameter Name="c_identification_mark" Type="String" />
                    <asp:Parameter Name="c_enrollement_permission" Type="String" />
                    <asp:Parameter Name="c_ncc_unit" Type="String" />
                    <asp:Parameter Name="c_prev_enrollement" Type="String" />
                    <asp:Parameter Name="c_prev_dismissed" Type="String" />
                    <asp:Parameter Name="c_next_of_kin" Type="String" />
                    <asp:Parameter Name="c_next_of_kin_address" Type="String" />
                    <asp:Parameter Name="c_next_of_kin_phoneno" Type="String" />
                    <asp:Parameter Name="c_accountno" Type="String" />
                    <asp:Parameter Name="c_ifsc" Type="String" />
                    <asp:Parameter Name="c_aadharno" Type="String" />
                    <asp:Parameter Name="c_panno" Type="String" />
                    <asp:Parameter Name="c_photo" Type="String" />
                    <asp:Parameter Name="c_declarationform" Type="String" />
                    <asp:Parameter Name="c_status" Type="String" />
                    <asp:Parameter Name="c_regid" Type="String" />
                    <asp:Parameter Name="cid" Type="Int32" />
                </UpdateParameters>
                
            </asp:SqlDataSource>
                
        
</center>
</div>
</div>


    </form>
</body>
</html>
