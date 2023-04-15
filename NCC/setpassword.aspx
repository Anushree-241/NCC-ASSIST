<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="setpassword.aspx.cs" Inherits="NCC_setpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/setpwd.css" rel="stylesheet" />
    <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous" />--%>
    <style type="text/css">
        
        
    </style>
	
</head>
<body>
    

        <%--<div id="content">

            <nav class="navbar navbar-expand-lg " style="background-color:#22395D;border-radius:10px">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html" style="color:white"><strong>HOME</strong></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

        </div>--%>


        <div class="login">
	<h1>Create Password</h1>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" name="u" Style="text-align:center" ReadOnly="true" ForeColor="White" runat="server"></asp:TextBox>
    	
        
        
        <asp:TextBox ID="TextBox2" type="password"  placeholder="Enter Password" name="p" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" runat="server" Font-Size="Medium" ForeColor="White" ErrorMessage="REQUIRED!"></asp:RequiredFieldValidator>
        
        <asp:TextBox ID="TextBox3" type="password" name="p" placeholder="Re-enter Password" runat="server"></asp:TextBox>
        <%--<input   placeholder="Password" required="required" />--%>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBox3" runat="server" Font-Size="Medium" ForeColor="White" ErrorMessage="REQUIRED!"></asp:RequiredFieldValidator>
        
        <asp:Button ID="Button1" CssClass="btn btn-primary btn-block btn-large" OnClick="Button1_Click" runat="server" Text="SUBMIT" />
        <%--<button type="submit" >SUBMIT</button>--%>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="White" ControlToValidate="TextBox2" Font-Size="Medium" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"    runat="server" ErrorMessage="Password Must Contain Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:"></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="White" ControlToValidate="TextBox3" Font-Size="Medium" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"   runat="server" ErrorMessage="Password Must Contain Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:"></asp:RegularExpressionValidator>
        
    </form>
</div>

        <!---->
    <a href="index.aspx" style="font-size:medium;text-decoration:none;font-weight:600" class="btn btn-primary" >HOME</a>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                <asp:Label ID="Label2" runat="server"></asp:Label>
    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
   
</body>
</html>
