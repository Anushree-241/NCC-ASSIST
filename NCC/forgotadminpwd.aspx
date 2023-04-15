<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotadminpwd.aspx.cs" Inherits="NCC_forgotadminpwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
    <style type="text/css">
        
button{
    background:#27ae60;
    border:1px solid #1F8C4D;
    color:#fff;
    padding:20px 70px;
    font-size:24px;
    position:relative;
    outline:none;
    cursor:pointer;
    min-width:300px;
    -webkit-border-radius:3px;
    -moz-border-radius
border-radius:3px;
    -webkit-transition:background 0.2s ease-in-out;
    -moz-transition:background 0.2s ease-in-out;
    transition:background 0.2s ease-in-out;
    -webkit-box-shadow:0 2px 2px rgba(0,0,0,0.1);
    -moz-box-shadow:0 2px 2px rgba(0,0,0,0.1);
    box-shadow:0 2px 2px rgba(0,0,0,0.1), inset 0 1px 0 rgba(255,255,255,0.5);
}
button:not([disabled]):hover{
     background:#2ecc71;
}
button[disabled]{
  background: #3c7d57;
  color: #ffffff3b;
  cursor: default;
}
button:after{
    content:'';
    display:block;
    position:absolute;
    opacity:0;
    width:30px;
    height:30px;
    border:5px solid rgba(255,255,255,0.3);
    border-right-color:#fff;
    -webkit-border-radius:50%;
    -moz-border-radius:50%;
    border-radius:50%;
    left:-30px;
    top:15px;
    
    -webkit-transition-property: -webkit-transform;
    -webkit-transition-duration: .5s;

    -moz-transition-property: -moz-transform;
    -moz-transition-duration: .5s;
    
    -webkit-animation-name: rotate; 
    -webkit-animation-duration: .5s; 
    -webkit-animation-iteration-count: infinite;
    -webkit-animation-timing-function: linear;
    
    -moz-animation-name: rotate; 
    -moz-animation-duration: .5s; 
    -moz-animation-iteration-count: infinite;
    -moz-animation-timing-function: linear;
    
    transition:all 0.2s linear;
    -webkit-transform:scale(2);
    transform:scale(2);
}

button.loading:after {
    opacity:1;
    left:15px;
}

@-webkit-keyframes rotate {
    from {-webkit-transform: rotate(0deg);}
    to {-webkit-transform: rotate(360deg);}
}

@-moz-keyframes rotate {
    from {-moz-transform: rotate(0deg);}
    to {-moz-transform: rotate(360deg);}
}

*{
  -webkit-box-sizing:border-box;
  -moz-box-sizing:border-box;
  box-sizing:border-box;
}

body{
  background:#ededed;
  font-family:Arial, sans-serif;
}

a{
  color:#7f8c8d;
}

.form-container{
  padding: 50px 40px;
  background:#fff;
  width:400px;
  text-align:center;
  -webkit-box-shadow:0 2px 3px rgba(0,0,0,0.2);
  -moz-box-shadow:0 2px 3px rgba(0,0,0,0.2);
  box-shadow:0 2px 3px rgba(0,0,0,0.2);
  margin:0 auto;
  -webkit-transition:all 1s linear;
  -moz-transition:all 1s linear;
  transition:all 1s linear;
  position:absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.form-container:after{
  content:"";
  display:block;
  position:absolute;
  top:0;
  left:0;
  width:100px;
  height:10px;
  background:#e74c3c;
  -webkit-box-shadow:100px 0 0 #e67e22, 200px 0 0 #f1c40f, 300px 0 0 #1abc9c;
  -moz-box-shadow:100px 0 0 #e67e22, 200px 0 0 #f1c40f, 300px 0 0 #1abc9c;
  box-shadow:100px 0 0 #e67e22, 200px 0 0 #f1c40f, 300px 0 0 #1abc9c;
}

.done .login-form{
  display:none;
}

.form-container .thank-msg{
  display:none;
}

.done .thank-msg{
  display:block;
}

.form-container h3{
  font-size:32px;
  text-align:center;
  color:#666;
  margin:0 0 30px;
}

.form-container .login-form > div{
  margin-bottom:20px;
}

.form-container .login-form > div > input{
  border:2px solid #dedede;
  padding:20px;
  font-size:20px;
  min-width:300px;
  color:#666;
  -webkit-border-radius:3px;
  -moz-border-radius:3px;
  border-radius:3px;
  outline:none;
  -webkit-transition:border-color 0.2s linear;
  -moz-transition:border-color 0.2s linear;
  transition:border-color 0.2s linear;
}

.form-container .login-form > div > input:focus{
  border-color:#A5A5A5;
}

.page-container{
  min-height: 500px;
}

.credits{
  text-align:center;
  color:#999;
  padding:10px;
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div ng-app="App" class="page-container"> 
<div class="form-container" ng-class="done">
      <div class="login-form">
        <h3>RE-ENTER DETAILS</h3>
        
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TextBox2" Font-Size="Medium" runat="server" ErrorMessage="REQUIRED"></asp:RequiredFieldValidator>
            
            <asp:TextBox ID="TextBox2" type="password" placeholder="Enter Password" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="Red" ControlToValidate="TextBox2" Font-Size="XX-Small" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"   runat="server" ErrorMessage="Password Must Contain Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:"></asp:RegularExpressionValidator>

        </div>
          <div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" Font-Size="Medium" ControlToValidate="TextBox3" runat="server" ErrorMessage="REQUIRED"></asp:RequiredFieldValidator>
            
              <asp:TextBox ID="TextBox3" type="password" placeholder="Confirm Password" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" ControlToValidate="TextBox3" Font-Size="XX-Small" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"   runat="server" ErrorMessage="Password Must Contain Minimum eight characters, at least one uppercase letter, one lowercase letter, one number and one special character:"></asp:RegularExpressionValidator>

          </div>

          <asp:Button ID="Button1" Font-Size="X-Large" OnClick="Button1_Click" CssClass="btn btn-success " runat="server" Text="SUBMIT" />
        <%--<button data-loading-btn class="">
          <span data-loaded-msg="Thank you!">SUBMIT</span>
        </button>--%>
      </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
   
</div>
</div>
        <a href="cadetlogin.aspx" style="text-decoration:none;position:absolute;top:0rem;"><img src="Icons/cancel.png" height="50" width="50" style="margin-top:1rem;"/></a>
                
        
        
    </form>
</body>
</html>
