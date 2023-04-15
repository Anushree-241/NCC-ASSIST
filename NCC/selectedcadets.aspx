<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selectedcadets.aspx.cs" Inherits="NCC_selected" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>selected cadets</title>
    <link href="css/adminhome.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar fixed-top shadow-sm navbar-expand-lg bg-dark navbar-dark ">
        <a href="index.html" class="navbar-brand  ">
                <img class="logo" src="img/NCClogo.png"/>
         </a>   
                <a href="adminhome.aspx" class="nav-item nav-link">Home</a>
                <a href="events.aspx" class="nav-item nav-link">Events</a>
                <a href="camps.aspx" class="nav-item nav-link">Camps</a>
                <a href="parade.aspx" class="nav-item nav-link">Parade</a>
                <a href="cadetdb.aspx" class="nav-item nav-link">cadet database</a>
                <a href="cadetselection.aspx" class="nav-item nav-link">cadet selection</a>
                <a href="adminlogin.aspx" class="nav-item nav-link">Logout</a>
                <img src="img/collegelogo.png" class="clogo"/>
    </nav>
    <form id="form1" runat="server">
        <div>
            <br /><br />
            <center>            
                
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </center>

        </div>
    </form>
</body>
</html>
