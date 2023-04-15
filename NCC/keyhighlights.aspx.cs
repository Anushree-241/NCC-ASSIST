using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_keyhighlights : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);

            string  s = "insert into keyhighlights values(@1)";
            //Response.Write(s);
            SqlCommand cmd1 = new SqlCommand(s, con);
            //cmd1 = new SqlCommand(s, con);
            //cmd1.Parameters.Add("@1", Label1.Text);
            cmd1.Parameters.AddWithValue("@1", TextBox1.Text);





            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Message Added successfully!!!');window.location='keyhighlights.aspx';</script>");
            Label1.Text = "";
            TextBox1.Text = "";







            //Response.Write("<script>alert('couldn't add Message.');window.location='adminhome.aspx';</script>");
            //   "You have already registered with us..";


            //Session["name"] = TextBox1.Text.Trim();
            //Session["address"] = TextBox6.Text.Trim();
            //Session["mobile"] = TextBox2.Text.Trim();

        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
}