<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editprofile.aspx.cs" Debug="true" Inherits="editprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit profile</title>
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
       <center><h1>EDIT PROFILE</h1>
           <p>&nbsp;</p></center> 
    </div>

        <p>
            &nbsp;</p>
        <asp:Label ID="Label1" runat="server"></asp:Label>

        <div>
            <center>
            <asp:DetailsView ID="DetailsView1" BorderStyle="None" runat="server" AutoGenerateRows="False" DataKeyNames="cid" DataSourceID="SqlDataSource2" Height="111px" OnItemUpdated="DetailsView1_ItemUpdated" Width="1361px">
                <Fields>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <div class="container rounded bg-white mt-5 mb-5">
      <div class="row">
        <div class="col-md-3 border-right" style="max-width:fit-content">
          <div
            class="d-flex flex-column align-items-center text-center p-3 py-5">
              <asp:DataList ID="DataList1" runat="server"  CssClass="rounded-square mt-5" DataSourceID="SqlDataSource3" >
                  <ItemTemplate>
                    <img src="Uploades/Candidate photos/<%#Eval ("c_photo")%>" style="height:200px;width:200px"  />
                </ItemTemplate>
              </asp:DataList>
              
             <h5><asp:Label ID="Label34" runat="server" Text='<%#Eval("c_fname")%>'></asp:Label> <asp:Label ID="Label35" runat="server" Text='<%#Eval("c_mname")%>'></asp:Label> <asp:Label ID="Label36" runat="server" Text='<%#Eval("c_lname")%>'></asp:Label></h5>
              
              <asp:Label ID="Label33" runat="server"  Text='<%#Bind("c_emailid")%>'></asp:Label>
            
<%--            <span class="font-weight-bold" Text="<%#Bind("c_fname")%>'></span>
            <span class="text-black-50">amelly12@bbb.com</span>--%>
            <span> </span>
          </div>
        </div>
        <div class="col-md-7 border-right" >
          <div class="p-3 py-5">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h4 class="text-right">EDIT</h4>
            </div>
              <div class="row mt-2">
              <div class="col-md-4">
                <label class="labels">CADET'S FIRST NAME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1"  ControlToValidate="TextBox2" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="TextBox2" runat="server" class="form-control"
                  placeholder="first name"
                  Text='<%#Bind("c_fname")%>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TextBox2" ForeColor="Red" runat="server" ErrorMessage="INVALID NAME!.Special characters are not allowed" ValidationExpression="[A-Z][a-z][A-Za-z]*$"></asp:RegularExpressionValidator>
                
              </div>
              <div class="col-md-4">
                <label class="labels">MIDDLE NAME</label>
                  <asp:TextBox ID="TextBox3" runat="server"  class="form-control"
                  placeholder="middle name"
                  Text='<%#Bind("c_mname")%>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="TextBox3" ForeColor="Red" runat="server" ErrorMessage="INVALID NAME!.Special characters are not allowed" ValidationExpression="\/*[A-Z][a-z]*$"></asp:RegularExpressionValidator>
              </div>
                <div class="col-md-4">
                <label class="labels">LAST NAME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control"
                  Text='<%#Bind("c_lname")%>'
                  placeholder="last name"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="TextBox4" ForeColor="Red" runat="server" ErrorMessage="INVALID NAME!.Special characters are not allowed" ValidationExpression="\/*[A-Z][a-z]*$"></asp:RegularExpressionValidator>
                   
               
              </div>
            </div>
              
            <div class="row mt-3">
              <div class="col-md-6">
                <label class="labels">NATONALITY</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Label4" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="Label4" runat="server"  CssClass="form-control"
                  placeholder="enter nationality"
                  Text='<%#Bind("c_nationality")%>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="Label4" ForeColor="Red" runat="server" ErrorMessage="INVALID NAME!.Special characters are not allowed" ValidationExpression="[A-Z][a-z][A-Za-z]*$"></asp:RegularExpressionValidator>
                
              </div>
                </div>
              
              <div class="row mt-2">
              <div class="col-md-4">
                <label class="labels">FATHER'S FIRST NAME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="TextBox5" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="TextBox5" runat="server"  class="form-control"
                  placeholder="enter father's first name"
                  Text='<%#Bind("c_fathers_fname")%>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="TextBox5" ForeColor="Red" runat="server" ErrorMessage="INVALID NAME!.Special characters are not allowed" ValidationExpression="[A-Z][a-z][A-Za-z]*$"></asp:RegularExpressionValidator>
               
              </div>
              <div class="col-md-4">
                <label class="labels">MIDDLE NAME</label>

                  <asp:TextBox ID="TextBox6" runat="server" class="form-control"
                  placeholder="enter father's middle name"
                  Text='<%#Bind("c_fathers_mname")%>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator6" ControlToValidate="TextBox6" ForeColor="Red" runat="server" ErrorMessage="INVALID NAME!.Special characters are not allowed" ValidationExpression="\/*[A-Z][a-z]*$"></asp:RegularExpressionValidator>
              
              </div>
              <div class="col-md-4">
                <label class="labels"> LAST NAME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="TextBox7" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="TextBox7" runat="server" class="form-control"
                  placeholder="enter father's last name"
                  Text='<%#Bind("c_fathers_lname")%>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="TextBox7" ForeColor="Red" runat="server" ErrorMessage="INVALID NAME!.Special characters are not allowed" ValidationExpression="\/*[A-Z][A-Za-z]*$"></asp:RegularExpressionValidator>
               
              </div>
            </div>
              
            <div class="row mt-3">
              <div class="col-md-4">
                <label class="labels">MOTHER'S FIRST NAME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="TextBox8" runat="server" class="form-control"
                  placeholder="enter mother's first name"
                  Text='<%#Bind("c_mothers_fname")%>' ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator8" ControlToValidate="TextBox8" ForeColor="Red" runat="server" ErrorMessage="INVALID NAME!.Special characters are not allowed" ValidationExpression="[A-Z][a-z][A-Za-z]*$"></asp:RegularExpressionValidator>
               
              </div>
              <div class="col-md-4">
                <label class="labels">MIDDLE NAME</label>
                  <asp:TextBox ID="TextBox9" runat="server" class="form-control"
                  placeholder="eneter mother's middle name"
                  Text='<%#Bind("c_mothers_mname")%>'></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator9" ControlToValidate="TextBox9" ForeColor="Red" runat="server" ErrorMessage="INVALID NAME!.Special characters are not allowed" ValidationExpression="\/*[A-Z][a-z]*$"></asp:RegularExpressionValidator>
              
              </div>
                <div class="col-md-4">
                <label class="labels">LAST NAME</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox10" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox10" runat="server"  class="form-control"
                  Text='<%#Bind("c_mothers_lname")%>'
                  placeholder="enter mother's last name"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator10" ControlToValidate="TextBox10" ForeColor="Red" runat="server" ErrorMessage="INVALID NAME!.Special characters are not allowed" ValidationExpression="\/*[A-Z][A-Za-z]*$"></asp:RegularExpressionValidator>
               
              </div>
          </div>
              
              <div class="row mt-2">
                <div class="col-md-12">
                <label class="labels">ADDRESS</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox11" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox11" runat="server"  class="form-control"
                  Text='<%#Bind("c_address")%>'
                  placeholder="enter address"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator11" ControlToValidate="TextBox11" ForeColor="Red" runat="server" ErrorMessage="INVALID ENTRY!" ValidationExpression="^[a-zA-Z0-9'/-@&amp;#,.\s]{2,100}$"></asp:RegularExpressionValidator>
               
              </div>
                  </div>
              
              <div class="row mt-2">
                <div class="col-md-4">
                <label class="labels">LANDMARK</label><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox12" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox12" runat="server" class="form-control"
                  Text='<%#Bind("c_landmark")%>'
                  placeholder="enter landmark" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator12" ControlToValidate="TextBox12" ForeColor="Red" runat="server" ErrorMessage="INVALID ENTRY!" ValidationExpression="^[a-zA-Z0-9'/-@&amp;#,.\s]{2,100}$"></asp:RegularExpressionValidator>
               
              </div>
                <div class="col-md-4">
                <label class="labels">STATE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox13" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox13" runat="server" class="form-control"
                  Text='<%#Bind("c_state")%>'
                  placeholder="enter state"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator13" ControlToValidate="TextBox13" ForeColor="Red" runat="server" ErrorMessage="INVALID ENTRY!" ValidationExpression="(\W|^)(Andhra Pradesh|Arunachal Pradesh|Assam|Bihar|Chattisgarh|Goa|Gujarat|Haryana|Himachal Pradesh|Jammu and Kashmir|Jharkhand|Karnataka|Kerala|Madhya Pradesh|Maharashtra|Manipur|Meghalaya|Mizoram|Nagaland|Odisha|Punjab|Rajasthan|Sikkim|Tamil Nadu|Telangana|Tripura|Uttar Pradesh|Uttarakhand|West Bengal)(\W|$)"></asp:RegularExpressionValidator>
               
              </div>
                  
                <div class="col-md-4">
                <label class="labels">DISTRICT</label><asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox14" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox14" runat="server"  class="form-control"
                  Text='<%#Bind("c_district")%>'
                  placeholder="enter district"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator14" ControlToValidate="TextBox14" ForeColor="Red" runat="server" ErrorMessage="INVALID ENTRY!" ValidationExpression="^[a-zA-Z0-9'/-@,.\s]{2,20}$"></asp:RegularExpressionValidator> 
                
                    
                
              </div>
              </div>
              
              <div class="row mt-2">
                <div class="col-md-4">
                <label class="labels">TALUK</label><asp:RequiredFieldValidator ID="RequiredFieldValidator12"  ControlToValidate="TextBox15" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox15" runat="server"  class="form-control"
                  Text='<%#Bind("c_taluk")%>'
                  placeholder="enter taluk"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator15" ControlToValidate="TextBox15" ForeColor="Red" runat="server" ErrorMessage="INVALID ENTRY!" ValidationExpression="^[a-zA-Z0-9'/-@,.\s]{2,20}$"></asp:RegularExpressionValidator> 
                
              </div>
                <div class="col-md-4">
                <label class="labels">CITY</label><asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox16" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox16" runat="server" class="form-control"
                  Text='<%#Bind("c_city")%>'
                  placeholder="enter city" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator16" ControlToValidate="TextBox16" ForeColor="Red" runat="server" ErrorMessage="INVALID ENTRY!" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                
              </div>
                <div class="col-md-4">
                <label class="labels">PINCODE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox17" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox17" runat="server" class="form-control"
                  Text='<%#Bind("c_pincode")%>'
                  placeholder="enter pincode"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator17" ControlToValidate="TextBox17" ForeColor="Red" runat="server" ErrorMessage="INVALID ENTRY!" ValidationExpression="([1-9]{1}[0-9]{5}|[1-9]{1}[0-9]{3}\\s[0-9]{3})"></asp:RegularExpressionValidator>
                
              </div>
                  </div>
              
                  <div class="row mt-2">
                <div class="col-md-6">
                <label class="labels">MOBILE NUMBER</label><asp:RequiredFieldValidator ID="RequiredFieldValidator15" ControlToValidate="TextBox18" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox18" runat="server" class="form-control"
                  Text='<%#Bind("c_mobileno")%>'
                  placeholder="enter mobileno"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator18" ControlToValidate="TextBox18" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
              
              </div>
                <div class="col-md-6">
                <label class="labels">EMAIL ID</label><asp:RequiredFieldValidator ID="RequiredFieldValidator16" ControlToValidate="TextBox19" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox19" runat="server"  class="form-control"
                  Text='<%#Bind("c_emailid")%>'
                  placeholder="enter emaildid"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator19" ControlToValidate="TextBox19" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               
              </div>
            </div>
              
              <div class="row mt-2">
                <div class="col-md-6">
                <label class="labels">NEAREST RAILWAY STATION</label><asp:RequiredFieldValidator ID="RequiredFieldValidator17" ControlToValidate="TextBox20" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox20" runat="server" class="form-control"
                  Text='<%#Bind("c_nearest_railway_station")%>'
                  placeholder="enter nearest railway station"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator20" ControlToValidate="TextBox20" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="^[a-zA-Z0-9'/-@&amp;#,.\s]{2,100}$"></asp:RegularExpressionValidator>
               
              </div>
                <div class="col-md-6">
                <label class="labels">NEAREST POLICE STATION</label><asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox21" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox21" runat="server" class="form-control"
                  Text='<%#Bind("c_nearest_police_station")%>'
                  placeholder="enter nearest police station" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator21" ControlToValidate="TextBox21" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="^[a-zA-Z0-9'/-@&amp;#,.\s]{2,100}$"></asp:RegularExpressionValidator>
               
              </div>
            </div>
              
              <div class="row mt-2">
              <div class="col-md-6">
                <label class="labels">QUALIFICATION</label><asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox22" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="TextBox22" runat="server" class="form-control"
                  Text='<%#Bind("c_qualification")%>'
                  placeholder="enter qualification"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator22" ControlToValidate="TextBox22" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="^[a-zA-Z0-9-.\s]{2,50}$"></asp:RegularExpressionValidator>
                
              </div>
                
              <div class="col-md-6">
                <label class="labels">STREAM</label><asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox23" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                  <asp:TextBox ID="TextBox23" runat="server" class="form-control"
                  Text='<%#Bind("c_stream")%>'
                  placeholder="enter your stream"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator23" ControlToValidate="TextBox23" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="(\W|^)(Science|Arts|Commerce)(\W|$)"></asp:RegularExpressionValidator>
               
              </div>
                  </div>
              
              <div class="row mt-2">
                <div class="col-md-4">
                <label class="labels">COURSE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox24" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox24" runat="server" class="form-control"
                  Text='<%#Bind("c_course")%>'
                  placeholder="enter your course" ></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator24" ControlToValidate="TextBox24" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="(\W|^)(BCA|BA|PUC|B.Sc|B.com|BBA|M.com)(\W|$)"></asp:RegularExpressionValidator>
                
              </div>
                <div class="col-md-4">
                <label class="labels">COURSE YEAR</label><asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox25" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox25" runat="server" class="form-control"
                  Text='<%#Bind("c_courseyear")%>'
                  placeholder="enter your courseyear"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator25" ControlToValidate="TextBox25" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="(\W|^)(1stYear|2ndYear|3rdYear|4thYear|5thYear|6thYear)(\W|$)"></asp:RegularExpressionValidator>
                
              </div>
                  
                <div class="col-md-4">
                <label class="labels">BATCH YEAR</label><asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox26" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox26" runat="server" class="form-control"
                  Text='<%#Bind("c_batch")%>'
                  placeholder="enter your batchyear"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator26" ControlToValidate="TextBox26" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT! Only numbers are allowed" ValidationExpression="^(20)[\d]{2,2}$"></asp:RegularExpressionValidator>
               
              </div>
                  </div>
              
              <div class="row mt-2">
                <div class="col-md-6">
                <label class="labels">COLLEGE/SCHOOL</label><asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBox27" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox27" runat="server" class="form-control"
                  Text='<%#Bind("c_collegeschool")%>'
                  placeholder="enter your college/school"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator27" ControlToValidate="TextBox27" ForeColor="Red" runat="server" ErrorMessage="INVALID ENTRY!" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                
              </div>
                  
                  
                <div class="col-md-6">
                <label class="labels">NCC UNIT TO BE ENROLLED</label><asp:RequiredFieldValidator ID="RequiredFieldValidator25" ControlToValidate="TextBox28" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox28" runat="server"  class="form-control"
                  Text='<%#Bind("c_ncc_unit")%>'
                  placeholder="NCC unit to be enrolled" ReadOnly="true"></asp:TextBox>
                
              </div>
                </div>
              
              <div class="row mt-2">
                <div class="col-md-6">
                <label class="labels">IFSC NUMBER</label><asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="TextBox29" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox29" runat="server" class="form-control"
                  Text='<%#Bind("c_ifsc")%>'
                  placeholder="enter your ifscno"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator29" ControlToValidate="TextBox29" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="^[A-Za-z]{4}\d{7}$"></asp:RegularExpressionValidator>
                    
               
              </div>
                <div class="col-md-6">
                <label class="labels">ACCOUNT NUMBER</label><asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="TextBox30" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox30" runat="server" class="form-control"
                  Text='<%#Bind("c_accountno")%>'
                   placeholder="enter your account number"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator30" ControlToValidate="TextBox30" ForeColor="Red" runat="server" ErrorMessage="INVALID ENTRY!" ValidationExpression="^\d{9,16}$"></asp:RegularExpressionValidator>
                
              </div>
          </div>
              
              <div class="row mt-2">
               <div class="col-md-6">
                <label class="labels">AADHAR NUMBER</label><asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="TextBox31" ForeColor="Red" ErrorMessage="*"></asp:RequiredFieldValidator>
                   <asp:TextBox ID="TextBox31" runat="server"  class="form-control"
                  Text='<%#Bind("c_aadharno")%>'
                  placeholder="enter your aadhar number"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator31" ControlToValidate="TextBox31" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="/(^[0-9]{4}[0-9]{4}[0-9]{4}$)|(^[0-9]{4}\s[0-9]{4}\s[0-9]{4}$)|(^[0-9]{4}-[0-9]{4}-[0-9]{4}$)/"></asp:RegularExpressionValidator>
                
              </div>
                <div class="col-md-6">
                <label class="labels">PAN NUMBER</label>
                    <asp:TextBox ID="TextBox32" runat="server"  class="form-control"
                  Text='<%#Bind("c_panno")%>'
                   placeholder="enter your pan number"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator32" ControlToValidate="TextBox32" ForeColor="Red" runat="server" ErrorMessage="INVALID FORMAT!" ValidationExpression="(^[A-Z]{5}[0-9]{4}[A-Z]{1}$)|(^[A-Z]{5}\s[0-9]{4}\s[A-Z]{1}$)|(^[A-Z]{5}-[0-9]{4}-[A-Z]{1}$) "></asp:RegularExpressionValidator>
                
              </div>
                </div>
            
          
            </div>
          </div>
        </div>
       

            
         
         </div> 
          </div>
        </div> 
      </div>
    </div>
                        </EditItemTemplate>


                        <ItemTemplate>
                        <div class="container rounded bg-white mt-5 mb-5">
      <div class="row">
        <div class="col-md-4 border-right">
          <div
            class="d-flex flex-column align-items-center text-center p-3 py-5 ">
             <asp:DataList ID="DataList2" runat="server" CssClass="rounded-square mt-5" DataSourceID="SqlDataSource3" Height="45px" Width="45px">
                  <ItemTemplate>
                      <img src="Uploades/Candidate photos/<%#Eval ("c_photo")%>" style="height:200px;width:200px"  />
                      <br />
                      <br />
                  </ItemTemplate>
              </asp:DataList>
        <h5><asp:Label ID="Label34" runat="server" Text='<%#Eval("c_fname")%>'></asp:Label> <asp:Label ID="Label35" runat="server" Text='<%#Eval("c_mname")%>'></asp:Label> <asp:Label ID="Label36" runat="server" Text='<%#Eval("c_lname")%>'></asp:Label></h5>  
 
              <asp:Label ID="Label33" runat="server"  Text='<%#Eval("c_emailid")%>'></asp:Label>
            <%--<span class="font-weight-bold">Amelly</span>
            <span class="text-black-50">amelly12@bbb.com</span>--%>
            <span> </span>
          </div>
        </div>
        <div class="col-md-7 border-right">
          <div class="p-3 py-5">
            <div class="d-flex justify-content-between align-items-center mb-3">
              <h4 class="text-right">MY PROFILE</h4>
            </div>
            <div class="row mt-2">
              <div class="col-md-4">
                <label class="labels">CADET'S FIRST NAME</label>
                  <asp:Label ID="TextBox1" runat="server" CssClass="form-control"
                  placeholder="first name"
                  Text='<%#Bind("c_fname")%>'></asp:Label>
                
              </div>
              <div class="col-md-4">
                <label class="labels">MIDDLE NAME</label>
                  <asp:Label ID="Label2" runat="server"  CssClass="form-control"
                  Text='<%#Bind("c_mname")%>'
                  placeholder="middle name"></asp:Label>
                
              </div>
                <div class="col-md-4">
                <label class="labels">LAST NAME</label>
                    <asp:Label ID="Label3" runat="server" CssClass="form-control"
                  Text='<%#Bind("c_lname")%>'
                  placeholder="last name" ></asp:Label>
               
              </div>
            </div>
              <br>
              </br>
              <div class="row mt-3">
                  <div class="col-md-6">
                      <label class="labels">
                      NATONALITY</label>
                      <asp:Label ID="Label4" runat="server" CssClass="form-control" placeholder="enter nationality" Text='<%#Bind("c_nationality")%>'></asp:Label>
                  </div>
              </div>
              <br>
              </br>
              <div class="row mt-2">
                  <div class="col-md-4">
                      <label class="labels">
                      FATHER'S FIRST NAME</label>
                      <asp:Label ID="Label5" runat="server" CssClass="form-control" placeholder="enter father's first name" Text='<%#Bind("c_fathers_fname")%>'></asp:Label>
                  </div>
                  <div class="col-md-4">
                      <label class="labels">
                      MIDDLE NAME</label>
                      <asp:Label ID="Label6" runat="server" CssClass="form-control" placeholder="enter father's second name" Text='<%#Bind("c_fathers_mname")%>'></asp:Label>
                  </div>
                  <div class="col-md-4">
                      <label class="labels">
                      LAST NAME</label>
                      <asp:Label ID="Label7" runat="server" CssClass="form-control" placeholder="enter father's last name" Text='<%#Bind("c_fathers_lname")%>'></asp:Label>
                  </div>
              </div>
              <br>
              </br>
              <div class="row mt-3">
                  <div class="col-md-4">
                      <label class="labels">
                      MOTHER&#39;S FIRST NAME</label>
                      <asp:Label ID="Label8" runat="server" CssClass="form-control" placeholder="enter mother's first name" Text='<%#Bind("c_mothers_fname")%>'></asp:Label>
                  </div>
                  <div class="col-md-4">
                      <label class="labels">
                      MIDDLE NAME</label>
                      <asp:Label ID="Label9" runat="server" CssClass="form-control" placeholder="enter mother's middle name" Text='<%#Bind("c_mothers_mname")%>'></asp:Label>
                  </div>
                  <div class="col-md-4">
                      <label class="labels">
                      LAST NAME</label>
                      <asp:Label ID="Label10" runat="server" CssClass="form-control" placeholder="enter mother's last name" Text='<%#Bind("c_mothers_lname")%>'></asp:Label>
                  </div>
              </div>
              <br>
              </br>
              <div class="row mt-2">
                  <div class="col-md-12">
                      <label class="labels">
                      ADDRESS</label>
                      <asp:Label ID="Label11" runat="server" CssClass="form-control" placeholder="enter address" Text='<%#Bind("c_address")%>'></asp:Label>
                  </div>
              </div>
              <br>
              </br>
              <div class="row mt-2">
                  <div class="col-md-12">
                      <label class="labels">
                      LANDMARK</label>
                      <asp:Label ID="Label12" runat="server" CssClass="form-control" placeholder="enter landmark" Text='<%#Bind("c_landmark")%>'></asp:Label>
                  </div>
                  
              </div>
              <br>
              
              <div class="row mt-2">
                  <div class="col-md-6">
                      <label class="labels">
                      STATE</label>
                      <asp:Label ID="Label13" runat="server" CssClass="form-control" placeholder="enter state" Text='<%#Bind("c_state")%>'></asp:Label>
                  </div>
                  <div class="col-md-6">
                      <label class="labels">
                      DISTRICT</label>
                      <asp:Label ID="Label14" runat="server" CssClass="form-control" placeholder="enter district" Text='<%#Bind("c_district")%>'></asp:Label>
                  </div>
                 </div>
              <div class="row mt-2">
                  <div class="col-md-4">
                      <label class="labels">
                      TALUK</label>
                      <asp:Label ID="Label15" runat="server" CssClass="form-control" placeholder="enter taluk" Text='<%#Bind("c_taluk")%>'></asp:Label>
                  </div>
                  <div class="col-md-4">
                      <label class="labels">
                      CITY</label>
                      <asp:Label ID="Label16" runat="server" CssClass="form-control" placeholder="enter city" Text='<%#Bind("c_city")%>'></asp:Label>
                  </div>
                  <div class="col-md-4">
                      <label class="labels">
                      PINCODE</label>
                      <asp:Label ID="Label17" runat="server" CssClass="form-control" placeholder="enter pincode" Text='<%#Bind("c_pincode")%>'></asp:Label>
                  </div>
              </div>
              <br>
</br>
              <div class="row mt-2">
                  <div class="col-md-6">
                      <label class="labels">
                      MOBILE NUMBER</label>
                      <asp:Label ID="Label18" runat="server" CssClass="form-control" placeholder="enter mobileno" Text='<%#Bind("c_mobileno")%>'></asp:Label>
                  </div>
                  <div class="col-md-6">
                      <label class="labels">
                      EMAIL ID</label>
                      <asp:Label ID="Label19" runat="server" Class="form-control" Text='<%#Bind("c_emailid")%>'></asp:Label>
                  </div>
              </div>
              <br>
              </br>
              <div class="row mt-2">
                  <div class="col-md-6">
                      <label class="labels">
                      NEAREST RAILWAY STATION</label>
                      <asp:Label ID="Label20" runat="server" CssClass="form-control" placeholder="enter nearest railway station" Text='<%#Bind("c_nearest_railway_station")%>'></asp:Label>
                  </div>
                  <div class="col-md-6">
                      <label class="labels">
                      NEAREST POLICE STATION</label>
                      <asp:Label ID="Label21" runat="server" CssClass="form-control" placeholder="enter nearest police station" Text='<%#Bind("c_nearest_police_station")%>'></asp:Label>
                  </div>
              </div>
              <br>
              </br>
              <div class="row mt-2">
                  <div class="col-md-6">
                      <label class="labels">
                      QUALIFICATION</label>
                      <asp:Label ID="Label22" runat="server" CssClass="form-control" placeholder="enter qualification" Text='<%#Bind("c_qualification")%>'></asp:Label>
                  </div>
                  <div class="col-md-6">
                      <label class="labels">
                      STREAM</label>
                      <asp:Label ID="Label23" runat="server" CssClass="form-control" placeholder="enter your stream" Text='<%#Bind("c_stream")%>'></asp:Label>
                  </div>
              </div>
              <br>
              </br>
              <div class="row mt-2">
                  <div class="col-md-4">
                      <label class="labels">
                      COURSE</label>
                      <asp:Label ID="Label24" runat="server" CssClass="form-control" placeholder="enter your course" Text='<%#Bind("c_course")%>'></asp:Label>
                  </div>
                  <div class="col-md-4">
                      <label class="labels">
                      COURSE YEAR</label>
                      <asp:Label ID="Label25" runat="server" CssClass="form-control" placeholder="enter your courseyear" Text='<%#Bind("c_courseyear")%>'></asp:Label>
                  </div>
                  <div class="col-md-4">
                      <label class="labels">
                      BATCH YEAR</label>
                      <asp:Label ID="Label26" runat="server" CssClass="form-control" placeholder="enter your batchyear" Text='<%#Bind("c_batch")%>'></asp:Label>
                  </div>
              </div>
              <br>
              </br>
              <div class="row mt-2">
                  <div class="col-md-6">
                      <label class="labels">
                      COLLEGE/SCHOOL</label>
                      <asp:Label ID="Label27" runat="server" CssClass="form-control" placeholder="enter your college/school" Text='<%#Bind("c_collegeschool")%>'></asp:Label>
                  </div>
                  <div class="col-md-6">
                      <label class="labels">
                      NCC UNIT TO BE ENROLLED</label>
                      <asp:Label ID="Label28" runat="server" CssClass="form-control" placeholder="NCC unit to be enrolled" Text='<%#Bind("c_ncc_unit")%>'></asp:Label>
                  </div>
              </div>
              <br>
              </br>
              <div class="row mt-2">
                  <div class="col-md-6">
                      <label class="labels">
                      IFSC NUMBER</label>
                      <asp:Label ID="Label29" runat="server" CssClass="form-control" placeholder="enter your ifscno" Text='<%#Bind("c_ifsc")%>'></asp:Label>
                  </div>
                  <div class="col-md-6">
                      <label class="labels">
                      ACCOUNT NUMBER</label>
                      <asp:Label ID="Label30" runat="server" CssClass="form-control" placeholder="enter your account number" Text='<%#Bind("c_accountno")%>'></asp:Label>
                  </div>
              </div>
              <br>
              </br>
              <div class="row mt-2">
                  <div class="col-md-6">
                      <label class="labels">
                      AADHAR NUMBER</label>
                      <asp:Label ID="Label31" runat="server" CssClass="form-control" placeholder="enter your aadhar number" Text='<%#Bind("c_aadharno")%>'></asp:Label>
                  </div>
                  <div class="col-md-6">
                      <label class="labels">
                      PAN NUMBER</label>
                      <asp:Label ID="Label32" runat="server" CssClass="form-control" placeholder="enter your pan number" Text='<%#Bind("c_panno")%>'></asp:Label>
                  </div>
              </div>
              
                            
                            </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField   ControlStyle-CssClass="btn btn-primary profile-button" ShowEditButton="True" >
<ControlStyle CssClass="btn btn-primary profile-button"></ControlStyle>
                    </asp:CommandField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [cid], [c_fname], [c_mname], [c_lname], [c_nationality], [c_fathers_fname], [c_fathers_mname], [c_fathers_lname], [c_mothers_fname], [c_mothers_mname], [c_mothers_lname], [c_address], [c_landmark], [c_state], [c_district], [c_taluk], [c_city], [c_pincode], [c_mobileno], [c_emailid], [c_nearest_railway_station], [c_nearest_police_station], [c_qualification], [c_stream], [c_course], [c_courseyear], [c_batch], [c_collegeschool], [c_ncc_unit], [c_ifsc], [c_accountno], [c_aadharno], [c_panno] FROM [cadet] WHERE ([c_fname] = @c_fname)" DeleteCommand="DELETE FROM [cadet] WHERE [cid] = @cid" InsertCommand="INSERT INTO [cadet] ([c_fname], [c_mname], [c_lname], [c_nationality], [c_fathers_fname], [c_fathers_mname], [c_fathers_lname], [c_mothers_fname], [c_mothers_mname], [c_mothers_lname], [c_address], [c_landmark], [c_state], [c_district], [c_taluk], [c_city], [c_pincode], [c_mobileno], [c_emailid], [c_nearest_railway_station], [c_nearest_police_station], [c_qualification], [c_stream], [c_course], [c_courseyear], [c_batch], [c_collegeschool], [c_ncc_unit], [c_ifsc], [c_accountno], [c_aadharno], [c_panno]) VALUES (@c_fname, @c_mname, @c_lname, @c_nationality, @c_fathers_fname, @c_fathers_mname, @c_fathers_lname, @c_mothers_fname, @c_mothers_mname, @c_mothers_lname, @c_address, @c_landmark, @c_state, @c_district, @c_taluk, @c_city, @c_pincode, @c_mobileno, @c_emailid, @c_nearest_railway_station, @c_nearest_police_station, @c_qualification, @c_stream, @c_course, @c_courseyear, @c_batch, @c_collegeschool, @c_ncc_unit, @c_ifsc, @c_accountno, @c_aadharno, @c_panno)" UpdateCommand="UPDATE [cadet] SET [c_fname] = @c_fname, [c_mname] = @c_mname, [c_lname] = @c_lname, [c_nationality] = @c_nationality, [c_fathers_fname] = @c_fathers_fname, [c_fathers_mname] = @c_fathers_mname, [c_fathers_lname] = @c_fathers_lname, [c_mothers_fname] = @c_mothers_fname, [c_mothers_mname] = @c_mothers_mname, [c_mothers_lname] = @c_mothers_lname, [c_address] = @c_address, [c_landmark] = @c_landmark, [c_state] = @c_state, [c_district] = @c_district, [c_taluk] = @c_taluk, [c_city] = @c_city, [c_pincode] = @c_pincode, [c_mobileno] = @c_mobileno, [c_emailid] = @c_emailid, [c_nearest_railway_station] = @c_nearest_railway_station, [c_nearest_police_station] = @c_nearest_police_station, [c_qualification] = @c_qualification, [c_stream] = @c_stream, [c_course] = @c_course, [c_courseyear] = @c_courseyear, [c_batch] = @c_batch, [c_collegeschool] = @c_collegeschool, [c_ncc_unit] = @c_ncc_unit, [c_ifsc] = @c_ifsc, [c_accountno] = @c_accountno, [c_aadharno] = @c_aadharno, [c_panno] = @c_panno WHERE [cid] = @cid">
                <DeleteParameters>
                    <asp:Parameter Name="cid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="c_fname" Type="String" />
                    <asp:Parameter Name="c_mname" Type="String" />
                    <asp:Parameter Name="c_lname" Type="String" />
                    <asp:Parameter Name="c_nationality" Type="String" />
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
                    <asp:Parameter Name="c_mobileno" Type="String" />
                    <asp:Parameter Name="c_emailid" Type="String" />
                    <asp:Parameter Name="c_nearest_railway_station" Type="String" />
                    <asp:Parameter Name="c_nearest_police_station" Type="String" />
                    <asp:Parameter Name="c_qualification" Type="String" />
                    <asp:Parameter Name="c_stream" Type="String" />
                    <asp:Parameter Name="c_course" Type="String" />
                    <asp:Parameter Name="c_courseyear" Type="String" />
                    <asp:Parameter Name="c_batch" Type="String" />
                    <asp:Parameter Name="c_collegeschool" Type="String" />
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
                    <asp:Parameter Name="c_mobileno" Type="String" />
                    <asp:Parameter Name="c_emailid" Type="String" />
                    <asp:Parameter Name="c_nearest_railway_station" Type="String" />
                    <asp:Parameter Name="c_nearest_police_station" Type="String" />
                    <asp:Parameter Name="c_qualification" Type="String" />
                    <asp:Parameter Name="c_stream" Type="String" />
                    <asp:Parameter Name="c_course" Type="String" />
                    <asp:Parameter Name="c_courseyear" Type="String" />
                    <asp:Parameter Name="c_batch" Type="String" />
                    <asp:Parameter Name="c_collegeschool" Type="String" />
                    <asp:Parameter Name="c_ncc_unit" Type="String" />
                    <asp:Parameter Name="c_ifsc" Type="String" />
                    <asp:Parameter Name="c_accountno" Type="String" />
                    <asp:Parameter Name="c_aadharno" Type="String" />
                    <asp:Parameter Name="c_panno" Type="String" />
                    

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






