using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_picsfolder : System.Web.UI.Page
{

    

    protected void Page_Load(object sender, EventArgs e)
    {

    }




    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("folders.aspx");
    }
}

