<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cadetlogin.aspx.cs" Inherits="NCC_cadetlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>cadet login</title>
    
    <meta charset="UTF-8" />
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge" />--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1.0" />--%>
    <link href="css/login.css" rel="Stylesheet" />
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
           position:absolute;

           margin-left:1rem;
           margin-top:-1rem;
           box-shadow:rgba(0,0,0,0.5) 5px 5px 5px 5px;
           /*margin-bottom:3rem;*/
            
        }
        
        
        td .head{
            width:20%;
        }
        td .txt{
            width:min-content;
            text-align:center;
        }
        td .req{
            width:5%;
        }
    </style>


</head>
    
<body >
    
   


   
        
        
    
    
         <div class="Main-container">
              <a id="Button2" href="index.aspx">HOME</a>
      <div class="container-login">
         
        <div class="wrap-login">
          <div class="login-pic">
            <img src="img/DUTY.png" alt="IMG" />
          </div>

          <form id="form1" class="login-form" runat="server">

    




            <span class="login-form-title">Login</span>

            <div class="wrap-input">
              <%--<input
                type="text"
                class="input"
                name="email"
                placeholder="Email"
                required="required"
              />--%>
                <asp:TextBox ID="TextBox2" type="text"
                class="input"
                name="email"
                placeholder="User ID"
                required="required" runat="server"></asp:TextBox>
              <span class="focus-input"></span>
              <span class="symbol-input">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>
            <div class="wrap-input">
              <%--<input
                type="password"
                class="input"
                name="pass"
                placeholder="Password"
                required="required"
              />--%>
                <asp:TextBox ID="TextBox1" type="password"
                class="input"
                name="pass"
                placeholder="Password"
                required="required" runat="server"></asp:TextBox>
              <span class="focus-input"></span>
              <span class="symbol-input">
                <i class="fa fa-lock" aria-hidden="true"></i>
              </span>
            </div>

            <div class="login-form-btn-container">
                <asp:Button ID="Button1" runat="server" class="login-form-btn" Text="Login" OnClick="Button1_Click1" />
              
            </div>

            <div class="text-center p-t-1">
              <span class="txt1">Forgot</span>
              <a href="forgotpassword.aspx" class="txt2"> Password ?</a>
            </div>
            <div class="text-center p-t-2">
              <a href="cadetreg.aspx" class="txt2"
                >Not Registered Yet? Register Now!
                <i class="fa fa-long-arrow-right" aria-hidden="true"></i
              ></a>
            </div>
          </form>
        </div>
      </div>
    </div>
  



        <!--old -->
    <%--<div class="container" >
        <br /><br />
        <h1 >LOGIN AS CADET</h1>
    
        <center>
        <table >
           <tr >
                <td class="head">USER NAME</td>
                <td class="txt">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="req" >
                    <asp:RequiredFieldValidator ID="v1" runat="server"  ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
               
           <tr >
                <td >&nbsp;</td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="INVALID USERNAME!" ForeColor="Red" ValidationExpression="[A-Z][a-z][A-Za-z]*$"></asp:RegularExpressionValidator>
                </td>
                <td >
                    &nbsp;</td>
            </tr>
               
            <tr >
                <td class="head">PASSWORD</td>
                <td class="txt">
                    <asp:TextBox ID="TextBox1" type="password"  runat="server"></asp:TextBox>
                </td>
                <td class="req">
                    <asp:RequiredFieldValidator ID="v2" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr >
                <td class="head">&nbsp;</td>
                <td class="txt">
                    &nbsp;</td>
                <td class="req">
                    &nbsp;</td>
            </tr>
           
            <tr >
                <td colspan="3"  >
                   <center><asp:HyperLink style="color:indianred;" ID="HyperLink1" runat="server">Forgot Password?</asp:HyperLink></center> 
                </td>
            </tr>
           
        </table>
            
            <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
            
        <br />
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </center>
        <br /><br /><br />
    
    </div>--%>
    
    
</body>
   
</html>
