<%@ Page Language="C#" AutoEventWireup="true" CodeFile="appstatus.aspx.cs" Debug="true" Inherits="NCC_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Application status</title>
     
     <link href="css/StyleSheet.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style type="text/css">
       
        .mobile{
            border:3px solid;
           
        }


        table{
            border:none;
            
        }
        
        td{
            
            padding:20px;
            font-size:large;
        }

        #TextBox1{
            text-align:center;
           border-style:ridge;
           border-radius:10px;
        }

        .status{
            text-align:center;
            font-weight:800;
            
        }
        .status td{
            font-size:x-large;
        }
        #Label3 td{
            text-align:center;
        }
        #Label2 td{
            text-align:center;
        }
        .status1{
            text-align:center;
           
            
        }
        .status2{
            text-align:center;
            
            
        }
        .link1{
            text-align:center;
            
            
        }
        .button {
            padding:10px;
        }
        #Button1{
             border-style:none;
            padding:5px;
           border-radius:10px;
           color:#fff;
           background-color:forestgreen;
           
            
        }
        #Button2{
            border-style:none;
            border-radius:10px;
            padding:5px;
            color:#fff;
            background-color:orangered;
            
        }
        #Button3{
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
    <form id="form1" runat="server" >
        <a id="Button3" href="index.aspx">HOME</a>
        
        <div class="container">
            <center>
    <div class="card" style="width:75%;background-color:aliceblue">
        <div class="card-body">



     <center ><h1>CHECK APPLICATION STATUS
         </h1></center>  
        </div>
         <div>
             <center>
             <table >
                 <tr class="mobile" >
                     <td class="auto-style2" >APPLICATION NO.</td>
                     <td class="auto-style3">
                         <asp:TextBox ID="TextBox1" runat="server" Width="215px"></asp:TextBox>
                     </td>
                     <td class="auto-style4">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                     <td class="auto-style7">
                         
                     </td>
                 </tr>
                 <tr class="status">
                     <td colspan="4">APPLICATION STATUS</td>
                 </tr>
                 <tr class="status1">
                     <td colspan="4">
                         <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
                     </td>
                 </tr>
                 <tr class="status2">
                     <td colspan="4">
                         <asp:Image ID="Image1" ImageUrl="img/approved.png" height="100" width="100"  Visible="false"  runat="server" />
                         
                         <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
                     </td>
                 </tr>
                 <tr class="link1">
                     <td colspan="4">
                         <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue">[HyperLink1]</asp:HyperLink>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="4" class="button">
                         <center>
                       <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="CHECK STATUS" OnClick="Button1_Click"  />
                           
                         <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" OnClick="Button2_Click" Text="CLEAR" />
                          </center>
                     </td>
                 </tr>
             </table>
                 </center>
             <br />
             <asp:Label ID="Label1" runat="server"></asp:Label>
           
        </div>
        </div>
                </center>
        </div>
</form>
 </body>  

</html>
