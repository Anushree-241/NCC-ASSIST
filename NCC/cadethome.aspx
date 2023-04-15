<%@ Page Language="C#" AutoEventWireup="true" Debug="true" EnableEventValidation="true" CodeFile="cadethome.aspx.cs" Inherits="NCC_Default" %>
<!DOCTYPE html>
<html>
<head>
<title>Cadet home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style>
html, body, h1, h2, h3, h4, h5 {font-family: "Open Sans", sans-serif}

</style>
</head>
<body class="w3-theme-l5">

    <form id="form1" runat="server">

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
  <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large w3-theme-d4">
      <asp:DataList ID="DataList7" runat="server" DataKeyField="cid" DataSourceID="SqlDataSource1">
                 <ItemTemplate>
                     <i class="fa fa-home w3-margin-right"></i>WELCOME !
                     <asp:Label ID="Label1"  runat="server" Text='<%#Eval ("c_fname")%>'></asp:Label>
                      
                </ItemTemplate>
            </asp:DataList>

  </a>
     
  <a href="#announcements" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="News">
      <i class="fa fa-globe"></i></a>
     

  <a href="editprofile.aspx" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Account Settings"><i class="fa fa-user"></i></a>
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button w3-padding-large" title="Notifications"><i class="fa fa-bell"></i>
        <asp:Label ID="Label7" runat="server" class="w3-badge w3-right w3-small w3-green" Text="1"></asp:Label>
        <%--<span class="w3-badge w3-right w3-small w3-green">3</span>--%></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:350px">
        <asp:DataList ID="DataList10" runat="server" DataSourceID="SqlDataSource4">
            <ItemTemplate>
                <a href="viewcamps.aspx" class="w3-bar-item w3-button" ><%#Eval ("camp_name") %><img src="img/new.png" height="30" width="30"/></a>
            </ItemTemplate>
            
        </asp:DataList>
      
        <asp:DataList ID="DataList11" runat="server" DataSourceID="SqlDataSource3">
            <ItemTemplate>
                <a href="viewevents.aspx" class="w3-bar-item w3-button">Event: <%#Eval ("event_name") %><img src="img/new.png" height="30" width="30"/></a>
            </ItemTemplate>
        </asp:DataList>
      
        <asp:DataList ID="DataList12" runat="server" DataSourceID="SqlDataSource3">
            <ItemTemplate>

            </ItemTemplate>
        </asp:DataList>
        <asp:DataList ID="DataList14" runat="server" DataSourceID="SqlDataSource7">
            <ItemTemplate>
                <a href="viewparade.aspx" class="w3-bar-item w3-button">Parade: <%#Eval ("p_date") %> <%#Eval ("p_starttime") %><img src="img/new.png" height="30" width="30"/></a>
            </ItemTemplate>
        </asp:DataList>
      
    </div>
  </div>



     <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button w3-padding-large" title="Downloades">Downloads
        <asp:Label ID="Label8" runat="server" class="w3-badge w3-right w3-small w3-green" Text=""></asp:Label>
        <%--<span class="w3-badge w3-right w3-small w3-green">3</span>--%></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:250px">
        
      <a href="../DECLARATION form-1.pdf"  class="w3-bar-item w3-button" download="download" ><img  src="Icons/file.png" height="25" width="25" />DECLARATION FORM</a>
      <a href="../volunteer form.pdf"  class="w3-bar-item w3-button" download="download" ><img  src="Icons/file.png" height="25" width="25" /> VOLUNTEER FORM</a>
    </div>
  </div>



  
     <a href="cadetlogin.aspx" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Log out">Log Out</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" title="My Account">
      <asp:DataList ID="DataList2" runat="server" DataKeyField="cid" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <img src="Uploades/Candidate photos/<%#Eval ("c_photo")%>" class="w3-circle"  style="height:23px;width:23px" alt="Avatar" />
                </ItemTemplate>
            </asp:DataList>
   
  </a>
     
 </div>
    
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
  <a href="viewcamps.aspx" class="w3-bar-item w3-button w3-padding-large">Camps</a>
  <a href="viewevents.aspx" class="w3-bar-item w3-button w3-padding-large">Events</a>
  <a href="viewparade.aspx" class="w3-bar-item w3-button w3-padding-large">Parade</a>
  <a href="myprofile.aspx" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
  <a href="cadetlogin.aspx" class="w3-bar-item w3-button w3-padding-large">Log Out</a>

</div>

<!-- Page Container -->
    
<div class="w3-container w3-content" style="max-width:1600px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
      
    <div class="w3-col m2">
        <div class="w3-card w3-round w3-white w3-padding-32 w3-center mb-4">
        <p><img src="img/NCClogo.png" height="150" width="150" /></p>
      </div>
    <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
          <p>Upcoming Camps:</p>

            <asp:DataList ID="DataList9" runat="server" DataSourceID="SqlDataSource4">

                <ItemTemplate>
                    <img src="Uploades/Camp photos/<%#Eval("camp_photos") %>" alt="Forest" style="width:100%;">
                    <p><strong><%#Eval ("camp_name")%></strong></p>
                    <p><%#Eval ("camp_startingdate")%></p>
                    <p><%#Eval ("camp_duration")%></p>
                </ItemTemplate>

            </asp:DataList>

          
          <p>
              <asp:HyperLink ID="HyperLink2" class="w3-button w3-block w3-theme-l4" NavigateUrl="~/NCC/viewcamps.aspx" runat="server">Info</asp:HyperLink></p>
        </div>
      </div>
      <br>
      
      <div class="w3-card w3-round w3-white w3-center">
        <div class="w3-container">
            <p>Upcoming Events:</p>

            <asp:DataList ID="DataList8" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                    <img src="Uploades/Event photos/<%#Eval ("event_photos") %>" alt="Forest" style="width:100%;" >
          <p><strong><%#Eval ("event_name")%></strong></p>
          <p><%#Eval ("event_date")%> <%#Eval ("event_time")%></p>
                </ItemTemplate>
            </asp:DataList>

          
          <p>
              <asp:HyperLink ID="HyperLink1" class="w3-button w3-block w3-theme-l4"  NavigateUrl="~/NCC/viewevents.aspx" runat="server">Info</asp:HyperLink></p>
            
        </div>
      </div>
      <br>
      
      <div class="w3-card w3-round w3-white  w3-center">
        <div class="w3-container">
            <p>Upcoming Parade:</p>
            
            <asp:DataList ID="DataList15" runat="server" DataSourceID="SqlDataSource7">
                <ItemTemplate>
                    
                        <p><strong><%#Eval ("p_date")%></strong></p>
            <p><%#Eval ("p_starttime")%> TO <%#Eval ("p_endtime")%></p>
            <p><%#Eval ("p_venue")%></p>
                    
            
                </ItemTemplate>
            </asp:DataList>
                
          
          <p>
              <asp:HyperLink ID="HyperLink3" class="w3-button w3-block w3-theme-l4"  NavigateUrl="~/NCC/viewparade.aspx" runat="server">Info</asp:HyperLink></p>
            
        </div>
      </div>
      <br>
        
      
    
    <!-- End Left Column -->
    </div>
    
    <!-- Middle Column -->
    <div class="w3-col m7">
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card w3-round w3-white">
            <div class="w3-container w3-padding">
              <!--carousal-->
                <div class="container">
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/ncc7.jpg" class="d-block w-100" height="500" style="object-fit:cover" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <h5></h5>
            <p></p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/ncc10.jpg" class="d-block w-100" height="500" style="object-fit:cover" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <h5></h5>
            <p></p>
          </div>
        </div>
        <div class="carousel-item">
          <img src="img/ncc13.jpg" class="d-block w-100" height="500" style="object-fit:cover" alt="...">
          <div class="carousel-caption d-none d-md-block">
            <h5></h5>
            <p></p>
          </div>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
    </div>
              <!--carousal-->
            </div>
          </div>
        </div>
      </div>
      
      <div id="attendance" class="w3-container w3-card w3-white w3-round w3-margin"><br>

          <!--attendance cards-->
          
          <div  class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card bg-danger text-white">
      <div class="card-body">
        <h5 class="card-title "><center><strong>No. Of Camps Attended</strong> </center></h5>
        <h1 class="card-text">
            <center>
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                </center>
        </h1>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card bg-primary text-white">
      <div class="card-body">
        <h5 class="card-title "><center><strong>No. Of Events Attended</strong></center></h5>
        <h1 class="card-text">
            <center>
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
            </center>
        </h1>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card bg-info text-white">
      <div class="card-body">
        <h5 class="card-title justify-content-center"><center><strong>No. Of Parade Attended</strong></center></h5>
        <h1 class="card-text">
            <center>
                <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
            </center>  
        </h1>
      </div>
    </div>
  </div>
</div>
     <br />     
</div>

      <!--attendance cards-->

      

      <div class="w3-container w3-card  w3-center w3-round w3-margin w3-theme-d2" style="height:43rem;"><br>
          
              <h3 style="color:white;font-weight:700">ACHIEVEMENTS OF 5/3 COY</h3>
           <marquee direction="up" height="500" scrollamount=1>
            <asp:DataList ID="DataList13"  runat="server" DataSourceID="SqlDataSource5" RepeatLayout="Flow">
                
                <ItemTemplate>
                    <i class="fas fa-bahai"></i>
                   <asp:Label ForeColor="White" ID="quoteLabel" runat="server" Text='<%# Eval("achievement") %>' />
                    <br />

                </ItemTemplate>

            </asp:DataList></marquee>
          
          <br />

      </div>


        
      

    <!-- End Middle Column -->
    </div>
    
    <!-- Right Column -->
    <div class="w3-col m3">
      
        <!-- Profile -->
      <div class="w3-card w3-round w3-white" Datasource="">
        <div class="w3-container">
         <h4 class="w3-center my-1">My Profile</h4>
           
         <p class="w3-center">
             <center>
             <asp:DataList ID="DataList1" runat="server" DataKeyField="cid" DataSourceID="SqlDataSource1">
                 <ItemTemplate>
                    <img src="Uploades/Candidate photos/<%#Eval ("c_photo")%>" class="w3-circle"  style="height:106px;width:106px" alt="Avatar" /><br />
                     <asp:Label ID="Label13"  runat="server" Text='<%#Eval ("appno")%>'></asp:Label>
                     
                 </ItemTemplate>
            </asp:DataList>
                 </center>
         </p>
         <hr>
         <h5>
             <asp:DataList ID="DataList3" runat="server" DataKeyField="cid" DataSourceID="SqlDataSource1">
                 <ItemTemplate>
                     <img  src="Icons/user.png" height="25" width="25" /><i class="w3-margin-right w3-text-theme"></i>
                     <asp:Label ID="Label1"  runat="server" Text='<%#Eval ("c_fname")%>'></asp:Label>
                      <asp:Label ID="Label3"  runat="server" Text='<%#Eval ("c_mname")%>'></asp:Label>
                      <asp:Label ID="Label4"  runat="server" Text='<%#Eval ("c_lname")%>'></asp:Label>
                </ItemTemplate>
            </asp:DataList>
               
             
            </h5>
            <h6>
                 <asp:DataList ID="DataList6" runat="server" DataKeyField="r_id" DataSourceID="SqlDataSource2">
                 <ItemTemplate>
                     <img  src="Icons/rank.png" height="27" width="27" /><i class=" fa-fw w3-margin-right w3-text-theme my-3"></i>
                     <asp:Label ID="Label6" runat="server"  Text='<%#Eval ("r_rank")%>'></asp:Label>
                </ItemTemplate>
            </asp:DataList>
            </h6>
         <h5>
             
             <asp:DataList ID="DataList4" runat="server" DataKeyField="cid" DataSourceID="SqlDataSource1">
                 <ItemTemplate>
                     <img  src="Icons/batch.png" height="27" width="27" /><i class="w3-margin-right w3-text-theme my-3"></i>
                     <asp:Label ID="Label2" runat="server" Text='<%#Eval ("c_batch")%>'></asp:Label>
                </ItemTemplate>
            </asp:DataList>
                
             </h5>
         <h5><asp:DataList ID="DataList5" runat="server" DataKeyField="cid" DataSourceID="SqlDataSource1">
                 <ItemTemplate>
                     <i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i>
                     <asp:Label ID="Label5" runat="server" Text='<%#Eval ("c_dob")%>'></asp:Label>
                </ItemTemplate>
            </asp:DataList> </h5>
        </div>
      </div>
      <br>
      
      <!-- Accordion -->
      <div class="w3-card w3-round">
        <div class="w3-white">
            <asp:HyperLink ID="HyperLink4" NavigateUrl="~/NCC/viewcamps.aspx" class="w3-button w3-block w3-theme-l1 w3-left-align" runat="server"><img  src="Icons/camp1.png" height="20" width="20" /><i class="w3-margin-right"></i>Camps</asp:HyperLink>
          
            <asp:HyperLink ID="HyperLink5" NavigateUrl="~/NCC/viewevents.aspx" class="w3-button w3-block w3-theme-l1 w3-left-align" runat="server"><i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i>Events</asp:HyperLink>
          
            <asp:HyperLink ID="HyperLink6" NavigateUrl="~/NCC/viewparade.aspx" class="w3-button w3-block w3-theme-l1 w3-left-align" runat="server"><img  src="Icons/parade1.png" height="25" width="25" /><i class="w3-margin-right"></i>Parade</asp:HyperLink>

            <asp:HyperLink ID="HyperLink7" NavigateUrl="~/NCC/viewcampreimbuse.aspx" class="w3-button w3-block w3-theme-l1 w3-left-align" runat="server"><i class="fa fa-money fa-fw w3-margin-right"></i>Camp Reimbursement</asp:HyperLink>
            
            <asp:HyperLink ID="HyperLink8" NavigateUrl="~/NCC/vieweventreimburse.aspx" class="w3-button w3-block w3-theme-l1 w3-left-align" runat="server"><i class="fa fa-money fa-fw w3-margin-right"></i>Event Reimbursement</asp:HyperLink>

            <asp:HyperLink ID="HyperLink9"  NavigateUrl="~/NCC/campregcadet.aspx" class="w3-button w3-block w3-theme-l1 w3-left-align" runat="server"><i class="fa fa-bookmark fa-fw w3-margin-right"></i>Registered Camps</asp:HyperLink>
            
          <div id="Demo3" class="w3-hide w3-container">
         <div class="w3-row-padding">
         <br>
           <div class="w3-half">
             <img src="/w3images/lights.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/mountains.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/forest.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
           <div class="w3-half">
             <img src="/w3images/snow.jpg" style="width:100%" class="w3-margin-bottom">
           </div>
         </div>
          </div>
        </div>      
      </div>
      <br>
      
      <!-- Interests --> 
      <div id="announcements" class="w3-card w3-round w3-white w3-hide-small">
        <div class="w3-container">
          <center><i class="fa fa-bullhorn fa-2x"></i><br /><h6>Announcements</h6></center>

            <marquee direction="up" height="360"  scrollamount=1 >
              <center>
                      <asp:DataList ID="DataList16" runat="server"  DataSourceID="SqlDataSource6" >
                          
            <ItemTemplate >
                
                    
                <asp:Label ID="m_dateLabel" runat="server" Text='<%# Eval("m_date") %>' />
                    <img src="img/new.png" hight="50" width="50" />
                <br />
                <asp:Label ID="m_messageLabel" runat="server" Text='<%# Eval("m_message") %>' />
                <br />
                    <br />
                    
            </ItemTemplate>
                              
        </asp:DataList>


                    </marquee>
              



           
          <%--<p>
            <span class="w3-tag w3-small w3-theme-d5">News</span>
            <span class="w3-tag w3-small w3-theme-d4">W3Schools</span>
            <span class="w3-tag w3-small w3-theme-d3">Labels</span>
            <span class="w3-tag w3-small w3-theme-d2">Games</span>
            <span class="w3-tag w3-small w3-theme-d1">Friends</span>
            <span class="w3-tag w3-small w3-theme">Games</span>
            <span class="w3-tag w3-small w3-theme-l1">Friends</span>
            <span class="w3-tag w3-small w3-theme-l2">Food</span>
            <span class="w3-tag w3-small w3-theme-l3">Design</span>
            <span class="w3-tag w3-small w3-theme-l4">Art</span>
            <span class="w3-tag w3-small w3-theme-l5">Photos</span>
          </p>--%>
        </div>
      </div>
      <br>
      
        <div class="w3-card w3-round w3-white w3-hide-small"><br />
        <center><h4>REGISTERED CAMP</h4>
            <br />
          <asp:DataList ID="DataList17" runat="server" DataSourceID="SqlDataSource8">
              <ItemTemplate>

                  <asp:Label ID="Label12" runat="server" Text='<%#Eval("Camp_name")%>'></asp:Label>
                  <br />
                  <br />
                  <asp:HyperLink ID="HyperLink10" class="w3-button w3-block w3-theme-l4"  NavigateUrl="~/NCC/viewcamps.aspx" runat="server">Info</asp:HyperLink></p
                  <br />
                  <br />
              </ItemTemplate>
          </asp:DataList>
            </center>
      </div>
      
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>

<!-- Footer -->
<footer class="w3-container w3-theme-d3 w3-padding-16">
  <h5></h5>
</footer>

<footer class="w3-container w3-theme-d5">
  
</footer>
 
<script>
    // Accordion
    function myFunction(id) {
        var x = document.getElementById(id);
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
            x.previousElementSibling.className += " w3-theme-d1";
        } else {
            x.className = x.className.replace("w3-show", "");
            x.previousElementSibling.className =
                x.previousElementSibling.className.replace(" w3-theme-d1", "");
        }
    }

    // Used to toggle the menu on smaller screens when clicking on the menu button
    function openNav() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }

    var myModal = document.getElementById('modalbtn')
    var myInput = document.getElementById('staticBackdrop')

    myModal.addEventListener('shown.bs.modal', function () {
        myInput.focus()
    })
</script>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cadet] WHERE ([cid] = @c_id)">
            <SelectParameters>
                <asp:SessionParameter Name="c_id" SessionField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [rankholders] WHERE ([r_cid] = @r_cid)">
            <SelectParameters>
                <asp:SessionParameter Name="r_cid" SessionField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 1 * FROM [event] ORDER BY [event_id] DESC  "></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 1 * FROM [camp] ORDER BY [camp_id] DESC"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [achievement] FROM [achievements]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [message]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 1 * FROM [parade] ORDER BY [p_id] DESC"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 2 * FROM [campreg],[camp] WHERE ([c_id] = @c_id and campreg.camp_id = camp.camp_id )">
            <SelectParameters>
                <asp:SessionParameter Name="c_id" SessionField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>

</body>
</html> 
