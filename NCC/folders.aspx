<%@ Page Language="C#" AutoEventWireup="true" CodeFile="folders.aspx.cs" Inherits="NCC_folders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/NCC/img/cancel.png" Height="50" Width="50"  OnClick="ImageButton1_Click"/>
            
            <div class="mt-5">
               <center><h1>FOLDERS</h1> </center> 
            </div>

            <div class="container mt-5">
                <div class="row">
                    <div class="col">
                        <div class="card" style="width: 20rem;">
                            <div class="card-header">
                            <a href="picsfolder.aspx" style="text-decoration:none;color:black"><img src="img/icons8-folder-240.png" class="card-img-top" alt="..."/></a>
                                <div class="card-body ">
                                   <a href="picsfolder.aspx" style="text-decoration:none;color:black"> <h3 class="card-text text-center">CAMP PICTURES </h3></a>
                                </div>
                                </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 20rem;">
                            <div class="card-header">
                            <a href="eventpicsfolder.aspx" style="text-decoration:none;color:black"><img src="img/icons8-folder-240.png" class="card-img-top" alt="..."/></a>
                                <div class="card-body">
                                    <a href="eventpicsfolder.aspx" style="text-decoration:none;color:black"><h3 class="card-text text-center">EVENT PICTURES </h3></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 20rem;">
                            <div class="card-header">
                            <a href="paradepicsfolder.aspx" style="text-decoration:none;color:black"><img src="img/icons8-folder-240.png" class="card-img-top" alt="..."/></a>
                                <div class="card-body">
                                    <a href="paradepicsfolder.aspx" style="text-decoration:none;color:black"><h3 class="card-text text-center">PARADE PICTURES </h3></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
