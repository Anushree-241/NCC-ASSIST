<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewcamps.aspx.cs" Debug="true" Inherits="NCC_viewcamps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
           
        
         #DataList1{
            background-color:white;
             box-shadow:none;
             background-image:none;
             height:40rem;
             width:40rem;
         }
         

    </style>

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
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [camp] WHERE ([camp_startingdate] &gt; @camp_startingdate)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="Label2" Name="camp_startingdate" PropertyName="Text" Type="String" />
                 </SelectParameters>
            </asp:SqlDataSource>
        <center>
            <asp:Label ID="Label21" runat="server"></asp:Label>
            <asp:Label ID="Label2" Visible="false" runat="server" ></asp:Label>
        <asp:DataList ID="DataList1" runat="server"  DataSourceID="SqlDataSource1" BorderStyle="None" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>

        
  <div class="card" style="width: 18rem;margin-right:5rem;margin-bottom:3rem; box-shadow:rgba(0,0,0,0.5) 3px 3px 3px 3px;" runat="server">
  <img src="Uploades\Camp photos\<%# Eval("camp_photos") %>" style="height:20rem;" id="img1"  class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"><%# Eval("camp_name") %></h5>
    <p class="card-text"><%# Eval("camp_desc") %></p>
  </div>
  <ul class="list-group list-group-flush" style="color:black">
    <li class="list-group-item" >
        <asp:Label ID="Label1" runat="server" Text="START DATE  "></asp:Label>
         <asp:Label ID="Label23" runat="server" Style="margin-left:2rem;" Text='<%# Eval("camp_startingdate")%>'></asp:Label>
    </li>
    <li class="list-group-item">
        <asp:Label ID="Label22" runat="server" Text="END DATE  "></asp:Label>
        <asp:Label ID="Label24" runat="server" Style="margin-left:3rem;"  Text='<%# Eval("camp_endingdate") %>'></asp:Label>
    </li>
    <li class="list-group-item">
        <asp:Label ID="Label25" runat="server" Text="DURATION"></asp:Label>
         <asp:Label ID="Label26" runat="server" Style="margin-left:2.5rem;"   Text='<%# Eval("camp_duration") %>'></asp:Label>
    </li>
    <li class="list-group-item">
         <asp:Label ID="Label27" runat="server" Text="LOCATION"></asp:Label>
         <asp:Label ID="Label28" runat="server" Style="margin-left:2.5rem;" Text='<%# Eval("camp_location") %>'></asp:Label>
    </li>
    <li class="list-group-item">
        <asp:Label ID="Label29" runat="server" Text="TYPE"></asp:Label>
        <asp:Label ID="Label30" runat="server" Style="margin-left:5rem;" Text='<%# Eval("camp_type") %>'></asp:Label>
    </li>
    <li class="list-group-item">
        <asp:Label ID="Label31" runat="server" Text="FIRING"></asp:Label>
        <asp:Label ID="Label32" runat="server" Style="margin-left:5rem;" Text='<%# Eval("camp_firing") %>'></asp:Label>
    </li>
    <li class="list-group-item">
        <asp:Label ID="Label33" runat="server" Text="PURPOSE"></asp:Label>
        <asp:Label ID="Label34" runat="server" Style="margin-left:2rem;" Text='<%# Eval("camp_purpose") %>'></asp:Label>
    </li>
    <li class="list-group-item">
         <asp:Label ID="Label35" runat="server" Text="CAMP AMOUNT"></asp:Label>
        <asp:Label ID="Label36" runat="server" Style="margin-left:2rem;"  Text='<%# Eval("camp_amount") %>'></asp:Label>
    </li>
    
  </ul>
  <div class="card-body">
      <asp:HyperLink Text="REGISTER NOW" CssClass="btn btn-primary "  Enabled="true" ID="HyperLink2" NavigateUrl='<%# String.Format("campreg.aspx?campname={0}&campid={1}",Eval("camp_name"),Eval("camp_id")) %>' runat="server"></asp:HyperLink>
    
      
  </div>
</div>






                
            </ItemTemplate>
        </asp:DataList>
            </center>
        </div>
    </div>


        

       
    </form>
</body>
</html>