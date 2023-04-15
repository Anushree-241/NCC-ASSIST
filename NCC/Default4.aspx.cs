using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_Default4 : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {


            //  string em = Session["logname"].ToString();

            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
            String logname = Session["logname"].ToString();
            string s = "select * from cadet where  c_fname = " + "'" + logname + "'";// where emailid =" + "'" + em + "'";
            con.Open();
            SqlCommand cmd2 = new SqlCommand(s, con);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da = new SqlDataAdapter(cmd2);
            da.Fill(dt);
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
            

            con.Close();


            
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }

    }





    
    
}