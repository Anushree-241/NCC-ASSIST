<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/adminlogin.css">

    <title>Admin Login</title>

      <style type="text/css">
        
        #Button2{
             border-style:none;
             padding-top:2px;
            padding:8px;
           border-radius:10px;
           color:#fff;
           font-size:xx-large;
           background-color:forestgreen;
           margin-left:1rem;
           margin-top:-3rem;
           text-decoration:none;
           box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
           
        }
    </style>

  </head>
  <body>
  <form id="form1" runat="server">
      
  <div class="d-md-flex half">
      
    <div class="bg" style="background-image: url('img/flag.png');"></div>
    <div class="contents">
        
      <div class="container">
          
          <a id="Button2" href="index.aspx">HOME</a>
      

        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <div class="form-block mx-auto">
              <div class="text-center mb-3">
              <h3>Login As <strong>Admin</strong></h3>
              <!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
              </div>
              
                <div class="form-group first">
                  <label for="username">Username</label>
                    <asp:TextBox ID="TextBox2" class="form-control" placeholder="Your Username" runat="server"></asp:TextBox>
                  <%--<input type="text" class="form-control" placeholder="your-email@gmail.com" id="username">--%>
                </div>
                <div class="form-group last mb-3">
                  <label for="password">Password</label>
                    <asp:TextBox type="password" ID="TextBox1" class="form-control" placeholder="Your Password" runat="server"></asp:TextBox>
                  <%--<input type="password" class="form-control" placeholder="Your Password" id="password">--%>
                </div>
                
                <div class="d-sm-flex mb-5 align-items-center">
                    
                  <span class="ml-auto">
                        <asp:HyperLink ID="HyperLink1"  class="forgot-pass" runat="server">Forgot Password?</asp:HyperLink></span> 
                </div>
                <asp:Button ID="Button1" runat="server" class="btn btn-block btn-primary" Text="Log In" OnClick="Button1_Click1" />
                <%--<input type="submit" value="Log In" class="btn btn-block btn-primary">--%>

              
            </div>

          </div>
           
        </div>
           
      </div>
    </div>

    
  </div>
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>

      <asp:Label ID="Label1" runat="server"></asp:Label>

</form>
  </body>
</html>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>admin login</title>
    <link href="css/login.css" rel="stylesheet" />
    <style type="text/css">
        .container{
            box-shadow:rgba(0,0,0,0.5) 10px 10px 10px 10px;
        }
        #Button2{
             border-style:none;
             padding-top:3px;
            padding:10px;
           border-radius:10px;
           color:#fff;
           font-size:xx-large;
           background-color:forestgreen;
           margin-left:1rem;
           margin-top:3rem;
           box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <a id="Button2" href="index.html">HOME</a>
    </div>
    <div class="container" >
        <br /><br />
        <h1 >LOGIN AS ADMIN</h1>
    
        <center>
        <table >
           <tr >
                <td >USER NAME</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="v1" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
               
            <tr >
                <td >PASSWORD</td>
                <td >
                    <asp:TextBox ID="TextBox1" type="password" runat="server"></asp:TextBox>
                </td>
                <td >
                    <asp:RequiredFieldValidator ID="v2" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr >
                <td colspan="3" >
                    <asp:HyperLink ID="HyperLink1" runat="server">Forgot Password?</asp:HyperLink>
                </td>
            </tr>
           
        </table>
            
        <br />
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </center>
        <br /><br /><br />
    </div>
        </form>
        
</body>
</html>--%>
