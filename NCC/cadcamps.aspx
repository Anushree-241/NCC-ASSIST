<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadcamps.aspx.cs" Debug="true" EnableEventValidation="false"  Inherits="NCC_cadcamps" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cadet camps</title>
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
        #GridView1{
            margin-top:-0rem;
            margin-left:10rem;
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
        }
         #Button1,#Button2,#Button3{
            padding:7px;
            border-style:none;
            color:white;
            background-color:black;
            border-radius:10px;
            margin-right:1rem;
        }
        #Button1:hover{
            transition:ease ;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        #Button2:hover{
            transition:ease ;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        #Button3:hover{
            transition:ease ;
            box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
        .attbtn{
            box-shadow:rgba(0,0,0,0.5) 3px 3px 3px 3px;
            padding:5px;
            background-color:brown;
            border-radius:10px;
            color:white;
            text-decoration:none;
        }
        .attbtn:hover{
            background-color:brown;
            color:white;
            text-decoration:none;
        }
        

    </style>

</head>
<body>
    <form id="form1" runat="server">
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
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            <div align="center">           
              <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="EXPORT AS EXCEL" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="EXPORT AS PDF" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="EXPORT AS DOCUMENT" />
            </div>  

            <br /><br /><br />
            <div>
                <div style="margin-left:10rem;">
                <asp:Label ID="Label2" runat="server" Text="SORT BY CAMP TYPE"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                <asp:ListItem Selected="True" Hidden="hidden" Value="0">Choose Camp type</asp:ListItem>
                <asp:ListItem Value="Mandatory">Mandatory</asp:ListItem>
                <asp:ListItem Value="Non-Mandatory">Non-Mandatory</asp:ListItem>

            </asp:DropDownList>
                    </div>
                <div style="margin-left:38rem;margin-top:-2rem;">
                <asp:Label ID="Label3" runat="server" Text="SORT BY CAMP STARTING DATE"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/NCC/img/calendar.png" Height="30" Width="30" CausesValidation= "false" OnClick="ImageButton1_Click" />
            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>

            <asp:Button ID="Button4" runat="server" Text="SEARCH" OnClick="Button4_Click" />
            <asp:Button ID="Button5" runat="server" Text="CLEAR" OnClick="Button5_Click" />
                    </div>
                </div>
            <br /><br />
            <center>
            <asp:Label ID="Label4" runat="server" Align="center" ></asp:Label>
                </center>
            <br />
            <asp:GridView ID="GridView1" runat="server" Height="489px"  Width="1172px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateColumns="False" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="camp_id" HeaderText="ID" />
            <asp:BoundField DataField="camp_name" HeaderText="Name" />
            <asp:BoundField DataField="camp_desc" HeaderText="Description" />
            <asp:BoundField DataField="camp_startingdate" HeaderText="Starting Date" />
            
            
            <asp:BoundField DataField="camp_endingdate" HeaderText="Ending Date" >
            
            </asp:BoundField>
            <asp:BoundField DataField="camp_duration" HeaderText="Duration" />
            <asp:BoundField DataField="camp_type" HeaderText="Type" />
            <asp:BoundField DataField="camp_location" HeaderText="Location" />
            <asp:BoundField DataField="camp_purpose" HeaderText="Purpose" />
            <asp:BoundField DataField="camp_firing" HeaderText="Firing" />
            <asp:BoundField DataField="camp_amount" HeaderText="Amount" />
            
            <%--<asp:TemplateField HeaderText="IMAGE" >
                <ItemTemplate>
                    <img src="Uploades/Camp photos/<%#Eval("camp_photos")%>" height="100" width="100" />
                </ItemTemplate>
            </asp:TemplateField>--%>
            
            <asp:TemplateField HeaderText="ATTENDANCE" >
                <ItemTemplate>
                    <asp:HyperLink CssClass="attbtn" Enabled="true" ID="HyperLink1" NavigateUrl='<%# String.Format("campattendance.aspx?name={0}&sd={1}&ed={2}&du={3}&ty={4}&id={5}", Eval("camp_name"), Eval("camp_startingdate"), Eval("camp_endingdate"),Eval("camp_duration"),Eval("camp_type"),Eval("camp_id")) %>' runat="server">UPDATE ATTENDANCE</asp:HyperLink>
                    
                </ItemTemplate>
                <ItemStyle Width="300px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="EDIT ATTENDANCE" >
                <ItemTemplate>
                    <asp:HyperLink CssClass="editbtn" Enabled="true" ID="HyperLink2" NavigateUrl='<%# String.Format("editcampattendance.aspx?name={0}&sd={1}&ed={2}&du={3}&ty={4}&id={5}", Eval("camp_name"), Eval("camp_startingdate"), Eval("camp_endingdate"),Eval("camp_duration"),Eval("camp_type"),Eval("camp_id")) %>' runat="server">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/NCC/img/edit1.png" Height="50" Width="50" /></asp:HyperLink>
                    
                </ItemTemplate>
                
            </asp:TemplateField>
            
        </Columns>
                <EditRowStyle HorizontalAlign="Center" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:Label ID="Label1" runat="server"></asp:Label>
            
            

            
           

            
        </div>
    </div>
	


        
    
        
</form>
    </body>
</html>