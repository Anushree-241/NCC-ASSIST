<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="myprofile.aspx.cs" Inherits="NCC_myprofile" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My profile</title>
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> 
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta
      name="viewport"
      content="width=
		, initial-scale=1.0"
    />
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
                            <a href="cadviewcampreg.aspx"  style="background-color:#317773;color:white;text-decoration:none;"  onmouseover="this.style.backgroundColor='#425c84'" onmouseout="this.style.backgroundColor='#317773'">REGISTERED CAMPS </a>
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
       <center><h1>MY PROFILE</h1>
           <p>&nbsp;</p></center> 
    </div>

        <p>
            &nbsp;</p>
        <asp:Label ID="Label1" runat="server"></asp:Label>

        <div>
            <center>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="cid" DataSourceID="SqlDataSource2" Height="111px" Width="1361px">
                <Fields>
                    <asp:TemplateField>
                        

                        <ItemTemplate>
                        <div class="container rounded bg-white mt-5 mb-5">
      <div class="row">
        <div class="col-md-4 border-right">
          <div
            class="d-flex flex-column align-items-center text-center p-3 py-5 ">
             <asp:DataList ID="DataList2" runat="server" CssClass="rounded-square mt-5" DataSourceID="SqlDataSource3" Height="45px" Width="45px">
                  <ItemTemplate>
                      <img height="200" width="200"
              class="rounded-square mt-5"
              src="Uploades/Candidate photos/<%#Eval ("c_photo") %>"
            />
                  </ItemTemplate>
              </asp:DataList>
           <h5><asp:Label ID="Label34" runat="server" Text='<%#Eval("c_fname")%>'></asp:Label> <asp:Label ID="Label35" runat="server" Text='<%#Eval("c_mname")%>'></asp:Label> <asp:Label ID="Label36" runat="server" Text='<%#Eval("c_lname")%>'></asp:Label></h5>
      
              <asp:Label ID="Label33" runat="server"  Text='<%#Bind("c_emailid")%>'></asp:Label>
            <%--<span class="font-weight-bold">Amelly</span>
            <span class="text-black-50">amelly12@bbb.com</span>--%>
            <span> </span>
          </div>
        </div>
        <div class="col-md-7 border-right">
          <div class="p-3 py-5">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h4 class="text-right">Profile </h4>
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
              </br>
              <div class="row mt-2">
                <div class="col-md-12">
                <label class="labels">ADDRESS</label>
                    <asp:Label ID="Label11" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_address")%>'></asp:Label>
               
              </div>
                  </div>
              </br>
              <div class="row mt-2">
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
              </br>
              <div class="row mt-2">
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
              </br>
              <div class="row mt-2">
                <div class="col-md-6">
                <label class="labels">GENDER</label>
                    <asp:Label ID="Label38" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_gender")%>'></asp:Label>
               
              </div>
                <div class="col-md-6">
                <label class="labels">BLOOD GROUP</label>
                    <asp:Label ID="Label39" runat="server" Class="form-control"
                  Text='<%#Bind("c_bloodgroup")%>' ></asp:Label>
               
              </div>
            </div>
              </br>
                  <div class="row mt-2">
                <div class="col-md-6">
                <label class="labels">MOBILE NUMBER</label>
                    <asp:Label ID="Label18" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_mobileno")%>'></asp:Label>
               
              </div>
                <div class="col-md-6">
                <label class="labels">EMAIL ID</label>
                    <asp:Label ID="Label19" runat="server" Class="form-control"
                  Text='<%#Bind("c_emailid")%>' ></asp:Label>
               
              </div>
            </div>
              </br>
              <div class="row mt-2">
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
              </br>
              <div class="row mt-2">
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
              </br>
              <div class="row mt-2">
                <div class="col-md-4">
                <label class="labels">COURSE</label>
                    <asp:Label ID="Label24" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_course")%>'></asp:Label>
                
              </div>
                <div class="col-md-4">
                <label class="labels">COURSE YEAR</label>
                    <asp:Label ID="Label25" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_courseyear")%>'></asp:Label>
                
              </div>
                  
                <div class="col-md-4">
                <label class="labels">BATCH YEAR</label>
                    <asp:Label ID="Label26" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_batch")%>'></asp:Label>
               
              </div>
                  </div>
              </br>
              <div class="row mt-2">
                <div class="col-md-6">
                <label class="labels">COLLEGE/SCHOOL</label>
                    <asp:Label ID="Label27" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_collegeschool")%>'></asp:Label>
                
              </div>
                  
                  
                <div class="col-md-6">
                <label class="labels">NCC UNIT TO BE ENROLLED</label>
                    <asp:Label ID="Label28" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_ncc_unit")%>'></asp:Label>
               
               
              </div>
                </div>
              </br>
              <div class="row mt-2">
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
              </br>
              <div class="row mt-2">
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
              </br>
              <div class="row mt-2">
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
              </br>
            <div class="row mt-2">
                <div class="col-md-12">
                <label class="labels">NEXT OF KIN ADDRESS</label>
                    <asp:Label ID="Label46" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_next_of_kin_address")%>'></asp:Label>
                
              </div>
                </div>
            <br />
              <div class="row mt-2">
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
              </br>
              <div class="row mt-2">
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
                </div>
            
                            </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cid], [c_fname], [c_mname], [c_lname], [c_nationality],[c_dob], [c_fathers_fname], [c_fathers_mname], [c_fathers_lname], [c_mothers_fname], [c_mothers_mname], [c_mothers_lname], [c_address], [c_landmark], [c_state], [c_district], [c_taluk], [c_city], [c_pincode],[c_gender],[c_bloodgroup], [c_mobileno], [c_emailid], [c_nearest_railway_station], [c_nearest_police_station], [c_qualification], [c_stream], [c_course], [c_courseyear], [c_batch], [c_collegeschool],[c_marks],[c_identification_mark],[c_enrollement_permission],[c_ncc_unit],[c_prev_enrollement],[c_prev_dismissed],[c_next_of_kin],[c_next_of_kin_address],[c_next_of_kin_phoneno], [c_ifsc], [c_accountno], [c_aadharno], [c_panno] FROM [cadet] WHERE ([c_fname] = @c_fname)" DeleteCommand="DELETE FROM [cadet] WHERE [cid] = @cid" InsertCommand="INSERT INTO [cadet] ([c_fname], [c_mname], [c_lname], [c_nationality], [c_fathers_fname], [c_fathers_mname], [c_fathers_lname], [c_mothers_fname], [c_mothers_mname], [c_mothers_lname], [c_address], [c_landmark], [c_state], [c_district], [c_taluk], [c_city], [c_pincode], [c_mobileno], [c_emailid], [c_nearest_railway_station], [c_nearest_police_station], [c_qualification], [c_stream], [c_course], [c_courseyear], [c_batch], [c_collegeschool], [c_ncc_unit], [c_ifsc], [c_accountno], [c_aadharno], [c_panno]) VALUES (@c_fname, @c_mname, @c_lname, @c_nationality, @c_fathers_fname, @c_fathers_mname, @c_fathers_lname, @c_mothers_fname, @c_mothers_mname, @c_mothers_lname, @c_address, @c_landmark, @c_state, @c_district, @c_taluk, @c_city, @c_pincode, @c_mobileno, @c_emailid, @c_nearest_railway_station, @c_nearest_police_station, @c_qualification, @c_stream, @c_course, @c_courseyear, @c_batch, @c_collegeschool, @c_ncc_unit, @c_ifsc, @c_accountno, @c_aadharno, @c_panno)" UpdateCommand="UPDATE [cadet] SET [c_fname] = @c_fname, [c_mname] = @c_mname, [c_lname] = @c_lname, [c_nationality] = @c_nationality, [c_fathers_fname] = @c_fathers_fname, [c_fathers_mname] = @c_fathers_mname, [c_fathers_lname] = @c_fathers_lname, [c_mothers_fname] = @c_mothers_fname, [c_mothers_mname] = @c_mothers_mname, [c_mothers_lname] = @c_mothers_lname, [c_address] = @c_address, [c_landmark] = @c_landmark, [c_state] = @c_state, [c_district] = @c_district, [c_taluk] = @c_taluk, [c_city] = @c_city, [c_pincode] = @c_pincode, [c_mobileno] = @c_mobileno, [c_emailid] = @c_emailid, [c_nearest_railway_station] = @c_nearest_railway_station, [c_nearest_police_station] = @c_nearest_police_station, [c_qualification] = @c_qualification, [c_stream] = @c_stream, [c_course] = @c_course, [c_courseyear] = @c_courseyear, [c_batch] = @c_batch, [c_collegeschool] = @c_collegeschool, [c_ncc_unit] = @c_ncc_unit, [c_ifsc] = @c_ifsc, [c_accountno] = @c_accountno, [c_aadharno] = @c_aadharno, [c_panno] = @c_panno WHERE [cid] = @cid">
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
                    <asp:Parameter Name="c_next_of_kin_phoneno" Type="String" />
                    <asp:Parameter Name="c_ncc_unit" Type="String" />
                    <asp:Parameter Name="c_ifsc" Type="String" />
                    <asp:Parameter Name="c_accountno" Type="String" />
                    <asp:Parameter Name="c_aadharno" Type="String" />
                    <asp:Parameter Name="c_panno" Type="String" />
                    <asp:Parameter Name="c_photo" Type="String" />


                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="c_fname" SessionField="logname" Type="String" />
                </SelectParameters>
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
                    <asp:Parameter Name="c_next_of_kin_phoneno" Type="String" />
                    <asp:Parameter Name="c_ncc_unit" Type="String" />
                    <asp:Parameter Name="c_ifsc" Type="String" />
                    <asp:Parameter Name="c_accountno" Type="String" />
                    <asp:Parameter Name="c_aadharno" Type="String" />
                    <asp:Parameter Name="c_panno" Type="String" />
                    <asp:Parameter Name="c_photo" Type="String" />
                    <asp:Parameter Name="cid" Type="Int32" />
                </UpdateParameters>
                
            </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [c_photo] FROM [cadet] WHERE ([cid] = @cid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="cid" SessionField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
</center>
        </div>

        </div>
    </div>
        
    
    </form>
    
</body>
</html>

