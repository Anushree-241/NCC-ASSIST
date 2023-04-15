using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_message : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        Label1.Text = DateTime.Now.ToShortDateString();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            string s = "select * from message ";

            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            
            con.Close();
            

                s = "insert into message values(@1,@2)";
                //Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.AddWithValue("@1", Label1.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox1.Text);





                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Message Added successfully!!!');window.location='adminhome.aspx';</script>");
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
            Label2.Text = ex.ToString();
        }
    }
}