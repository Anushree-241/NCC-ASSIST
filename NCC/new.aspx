<%@ Page Language="C#" AutoEventWireup="true" CodeFile="new.aspx.cs" Inherits="NCC_new" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href='https://fonts.googleapis.com/css?family=RobotoDraft' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
html,body,h1,h2,h3,h4,h5 {font-family: "RobotoDraft", "Roboto", sans-serif}
.w3-bar-block .w3-bar-item {padding: 16px}
</style>
</head>
<body>

<!-- Side Navigation -->
<nav class="w3-sidebar w3-bar-block w3-collapse w3-white w3-animate-left w3-card" style=" background-color:cadetblue;z-index:3;width:320px;" id="mySidebar">
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-border-bottom w3-large">
      <div class="w3-col s8 w3-bar">
      <h4><span><strong>MENU</strong></span></h4>
    </div></a>
  <a href="javascript:void(0)" onclick="w3_close()" title="Close Sidemenu" 
  class="w3-bar-item w3-button w3-hide-large w3-large">Close <i class="fa fa-remove"></i></a>
  
    <%-- camps --%>
    <a class="w3-bar-item w3-button w3-padding btn dropdown-toggle  dropdown mt-2"  style="font-size:larger" href="#" role="button" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-campground fa-fw w3-margin-right"></i> Camps
  </a>

  <ul class="dropdown-menu dropdown-menu-xxl-end" aria-labelledby="dropdownMenuLink">
    <li><a class="dropdown-item" href="camps.aspx">Add Camps</a></li>
    <li><a class="dropdown-item" href="cadcamps.aspx">View Camps</a></li>
    <li><a class="dropdown-item" href="editcamps.aspx">Edit Camps</a></li>
  </ul>

    <%-- Events --%>
     <a class="w3-bar-item w3-button w3-padding btn dropdown-toggle  dropdown mt-2" style="font-size:larger" href="#" role="button" id="dropdownMenuLink1" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fa fa-calendar-check-o fa-fw w3-margin-right"></i> Events
  </a>

  <ul class="dropdown-menu dropdown-menu-xxl-end" aria-labelledby="dropdownMenuLink1">
    <li><a class="dropdown-item" href="events.aspx">Add Events</a></li>
    <li><a class="dropdown-item" href="cadevents.aspx">View Events</a></li>
    <li><a class="dropdown-item" href="editevents.aspx">Edit Events</a></li>
  </ul>
    
    <%--<div id="Demo1" class="w3-hide w3-animate-left">
    
  </div>--%>
    <%-- parade --%>
     <a class="w3-bar-item w3-button w3-padding btn dropdown-toggle  dropdown mt-2" style="font-size:larger" href="#" role="button" id="dropdownMenuLink2" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-drum fa-fw w3-margin-right"></i> Parade
  </a>

  <ul class="dropdown-menu dropdown-menu-xxl-end" aria-labelledby="dropdownMenuLink2">
    <li><a class="dropdown-item" href="parade.aspx">Add Parade</a></li>
    <li><a class="dropdown-item" href="cadparade.aspx">View Parade</a></li>
    <li><a class="dropdown-item" href="editparade.aspx">Edit Parade</a></li>
  </ul>

    <%-- Rank Holders --%>
    <a class="w3-bar-item w3-button w3-padding btn dropdown-toggle  dropdown mt-2" style="font-size:larger" href="#" role="button" id="dropdownMenuLink6" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fas fa-medal fa-fw w3-margin-right"></i> Rank Holders
  </a>

  <ul class="dropdown-menu dropdown-menu-xxl-end" aria-labelledby="dropdownMenuLink2">
    <li><a class="dropdown-item" href="Rankholders.aspx">Update Rank</a></li>
    <li><a class="dropdown-item" href="view rankholders.aspx">View Rankholders</a></li>
  </ul>

    <%-- Cadet Selection --%>
<a class="w3-bar-item w3-button w3-padding btn dropdown-toggle  dropdown mt-2" href="#" style="font-size:larger" role="button" id="dropdownMenuLink4" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fa fa-users w3-margin-right"></i> Cadet Selection
  </a>
<ul class="dropdown-menu dropdown-menu-xxl-end" aria-labelledby="dropdownMenuLink4">
    <li><a class="dropdown-item" href="cadetselection.aspx">Update Marks</a></li>
    <li><a class="dropdown-item" href="cadetapproval.aspx">Approve Candidates</a></li>
    <li><a class="dropdown-item" href="deletecadet.aspx">Delete Candidate's Database</a></li>
  </ul>
    <%-- Reimbursement --%>
<a class="w3-bar-item w3-button w3-padding btn dropdown-toggle  dropdown mt-2" href="#" style="font-size:larger" role="button" id="dropdownMenuLink3" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fa fa-money fa-fw w3-margin-right"></i> Reimbursement
  </a>

  <ul class="dropdown-menu dropdown-menu-xxl-end" aria-labelledby="dropdownMenuLink3">
    <li><a class="dropdown-item" href="reimbursement.aspx">Camp Reimbursement</a></li>
    <li><a class="dropdown-item" href="eventreimbursement.aspx">Event Reimbursement</a></li>
    <li><a class="dropdown-item" href="cadcampreimbuse.aspx">View Camp Reimbursement</a></li>
    <li><a class="dropdown-item" href="cadeventreimbuse.aspx">View Event Reimbursement</a></li>
  </ul>
<%-- Attendance --%>
     <a class="w3-bar-item w3-button w3-padding btn dropdown-toggle  dropdown mt-2" href="#" style="font-size:larger" role="button" id="dropdownMenuLink5" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fa fa-address-book w3-margin-right"></i> Attendance
  </a>

  <ul class="dropdown-menu dropdown-menu-xxl-end" aria-labelledby="dropdownMenuLink3">
    <li><a class="dropdown-item" href="campatt.aspx">Camp Attendance</a></li>
    <li><a class="dropdown-item" href="eventatt.aspx">Event Attendance</a></li>
    <li><a class="dropdown-item" href="paradeatt.aspx">Parade Attendance</a></li>
  </ul>

    <%-- Photo Gallery --%>
<a class="w3-bar-item w3-button w3-padding btn dropdown-toggle  dropdown mt-2" href="#" style="font-size:larger" role="button" id="dropdownMenuLink7" data-bs-toggle="dropdown" aria-expanded="false">
    <i class="fa fa-camera w3-margin-right"></i>  Photo Gallery
  </a>

  <ul class="dropdown-menu dropdown-menu-xxl-end" aria-labelledby="dropdownMenuLink3">

    <li><a class="dropdown-item" href="folders.aspx">Folders</a></li>
    <li><a class="dropdown-item" href="photo.aspx">Upload Camp Photos</a></li>
    <li><a class="dropdown-item" href="eventphoto.aspx">Upload Event Photos</a></li>
    <li><a class="dropdown-item" href="paradephoto.aspx">Upload Parade Photos</a></li>
  </ul>

    <%-- Cadet DB --%>
    <a href="cadetdb.aspx" style="font-size:larger" class="w3-bar-item w3-button w3-padding mt-2"><i class="fa fa-users w3-margin-right"></i> Cadet DataBase</a>
   <%-- Key highlights --%>
<a href="keyhighlights.aspx" style="font-size:larger" class="w3-bar-item w3-button w3-padding mt-2"><i class="fas fa-bahai w3-margin-right"></i> Key Highlights</a>
      <%-- Achievements --%>
    <a href="achievements.aspx" style="font-size:larger" class="w3-bar-item w3-button w3-padding mt-2"><i class="fa fa-trophy w3-margin-right"></i> Achievements</a>
     
    <%-- Logout --%>
  <a href="adminhome.aspx" style="font-size:larger" class="w3-bar-item w3-button w3-padding mt-2"><i class="fas fa-sign-out-alt w3-margin-right"></i> Log Out</a>
    
</nav>

<!-- Modal that pops up when you click on "New Message" -->
<%--<div id="id01" class="w3-modal" style="z-index:4">
  <div class="w3-modal-content w3-animate-zoom">
    <div class="w3-container w3-padding w3-red">
       <span onclick="document.getElementById('id01').style.display='none'"
       class="w3-button w3-red w3-right w3-xxlarge"><i class="fa fa-remove"></i></span>
      <h2>Send Mail</h2>
    </div>
    <div class="w3-panel">
      <label>To</label>
      <input class="w3-input w3-border w3-margin-bottom" type="text">
      <label>From</label>
      <input class="w3-input w3-border w3-margin-bottom" type="text">
      <label>Subject</label>
      <input class="w3-input w3-border w3-margin-bottom" type="text">
      <input class="w3-input w3-border w3-margin-bottom" style="height:150px" placeholder="What's on your mind?">
      <div class="w3-section">
        <a class="w3-button w3-red" onclick="document.getElementById('id01').style.display='none'">Cancel  <i class="fa fa-remove"></i></a>
        <a class="w3-button w3-light-grey w3-right" onclick="document.getElementById('id01').style.display='none'">Send  <i class="fa fa-paper-plane"></i></a> 
      </div>    
    </div>
  </div>
</div>--%>

<!-- Overlay effect when opening the side navigation on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="Close Sidemenu" id="myOverlay"></div>

<!-- Page content -->
<div class="w3-main" style="margin-left:320px;">
<i class="fa fa-bars w3-button w3-white w3-hide-large w3-xlarge w3-margin-left w3-margin-top" onclick="w3_open()"></i>
<%--<a href="javascript:void(0)" class="w3-hide-large w3-red w3-button w3-right w3-margin-top w3-margin-right" onclick="document.getElementById('id01').style.display='block'"><i class="fa fa-pencil"></i></a>--%>

<div id="Borge" class="w3-container person">
  <br>
  <header class="w3-container" style="padding-top:15px">
      <div class="w3-col s8 w3-bar">
      <h4><span>Welcome, <strong>Admin</strong></span></h4><br/>
          <h5><b><i class="fa fa-dashboard"></i> My Dashboard</b></h5>
    </div><br />
    
  </header>
</div>
<div class="w3-row-padding w3-margin-bottom">
    <div class="w3-quarter">
      <div class="w3-container w3-red w3-padding-16">
        <div class="w3-left"><i class="fa fa-users fa-fw w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>
              <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Total No. Of Cadets</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left"><i class="fa fa-eye w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>
              <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Rank Holders</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-teal w3-padding-16">
        <div class="w3-left"><i class="fa fa-share-alt w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>
              <asp:Label ID="Label3" runat="server" Text=""></asp:Label></h3>
        </div>
        <div class="w3-clear"></div>
        <h6><asp:Label ID="Label4" runat="server" Font-Size="small" Text=""></asp:Label> Participants</h6>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"><i class="fa fa-users w3-xlarge"></i></div>
        <div class="w3-right">
          <h3></h3>
        </div>
        <div class="w3-clear"></div>
        <h5>8 KAR BN BANGALORE 'B' GROUP</h5>
      </div>
    </div>
  </div>

  <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third">
        <h5>National Cadet Corps</h5>
            <img src="img/NCClogo.png" style="width:100%;height:30rem;" alt="Google Regional Map"/>
          </div>
          <div class="w3-twothird">
            <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/ncc12.jpg" class="d-block w-100" height="500" alt="..."/>
        </div>
        <div class="carousel-item">
          <img src="img/ncc7.jpg" class="d-block w-100" height="500" alt="..."/>
        </div>
        <div class="carousel-item">
          <img src="img/ncc4.jpg" class="d-block w-100" height="500" alt="..."/>
        </div>
      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>
      </div>
    </div>
  </div>
  <hr/>
  <div class="w3-container">
      
      <div class="card text-center">
  <div class="card-header">
    ENROLLMENTS 
  </div>
  <div class="card-body">
    <h5 class="card-title">LATEST ENROLLMENTS</h5>
    <p class="card-text ">View Latest Enrollments of NCC UNIT <span>8 KAR BN BANGALORE 'B' GROUP</span></p>
    <a href="registeredcandidates.aspx" class="btn btn-primary">Navigate <i class="fa fa-arrow-right"></i></a>
  </div>
</div>
  </div>    
      
      <!---->


    
  <hr/>
  <div class="w3-container">
      
      <div class="card text-center">
  <div class="card-header">
    CAMP REGISTRATION
  </div>
  <div class="card-body">
    <h5 class="card-title">
        <center>
            <asp:DataList ID="DataList1" DataSourceID="SqlDataSource2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label5"  runat="server" Text='<%#Eval("camp_name")%>'></asp:Label>
            </ItemTemplate>
            
        </asp:DataList>
        </center>
        
        </h5>
    <center>
        <asp:DataList ID="DataList2" DataSourceID="SqlDataSource2" runat="server">
            <ItemTemplate>
               <p class="card-text ">View Enrollments of  <asp:Label ID="Label5"  runat="server" Text='<%#Eval("camp_name")%>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>

   </center>
    <a href="registeredcamp.aspx" class="btn btn-primary">Navigate <i class="fa fa-arrow-right"></i></a>
  </div>
</div>
  <hr/>

  <div class="w3-container">
    <h5></h5>
      <center>
    <div class="w3-row ">
      <div class="w3-col  text-center">
        <center><img class="w3-circle" src="img/collegelogo.png" style="width:200px;height:200px"/></center>
      </div>
      <div class="w3-col mt-3  m13 w3-container">
        <h4>SURANA COLLEGE <span>Southend Road</span></h4>

        <p>NCC UNIT 8 KAR BN BANGALORE 'B' GROUP</p><br/>
      </div>
    </div>
</center>
   </div> 
  <br/>
 </div>
</div>

<script>
    var openInbox = document.getElementById("myBtn");
    openInbox.click();

    function w3_open() {
        document.getElementById("mySidebar").style.display = "block";
        document.getElementById("myOverlay").style.display = "block";
    }

    function w3_close() {
        document.getElementById("mySidebar").style.display = "none";
        document.getElementById("myOverlay").style.display = "none";
    }

    function myFunc(id) {
        var x = document.getElementById(id);
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
            x.previousElementSibling.className += " w3-red";
        } else {
            x.className = x.className.replace(" w3-show", "");
            x.previousElementSibling.className =
                x.previousElementSibling.className.replace(" w3-red", "");
        }
    }

    openMail("Borge")
    function openMail(personName) {
        var i;
        var x = document.getElementsByClassName("person");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x = document.getElementsByClassName("test");
        for (i = 0; i < x.length; i++) {
            x[i].className = x[i].className.replace(" w3-light-grey", "");
        }
        document.getElementById(personName).style.display = "block";
        event.currentTarget.className += " w3-light-grey";
    }
</script>

<script>
    var openTab = document.getElementById("firstTab");
    openTab.click();
</script>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [message]"></asp:SqlDataSource>
	<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 1 * FROM [camp] order by camp_id desc"></asp:SqlDataSource>
	
</body>
</html> 
