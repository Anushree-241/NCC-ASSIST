using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_Default8 : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    String eid = "", s = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        //eid = Session["logname"].ToString();
    }
    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {

            s = "select * from cadet where appno=" + "'" + TextBox1.Text + "'";
            //Response.Write(s);
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            string c_emailid = "", appno = "";
            while (reader.Read())
            {
                appno = reader.GetString(48);
                c_emailid = reader.GetString(21);
                ctr++;
            }
            reader.Close();
            con.Close();
            //string username = c_fname.ToString();

            if (ctr == 1)
            {


                s = "update cadetlogin  set password=@p where userid=@appno";
                SqlCommand cmd11 = new SqlCommand(s, con);
                cmd11.Parameters.AddWithValue("@p", TextBox3.Text);
                cmd11.Parameters.AddWithValue("@appno", appno);


                con.Open();
                cmd11.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Password Updated Successfully...');window.location='cadetlogin.aspx';</script>");



            }
            else
            {
                Label1.Text = "Something has gone wrong pls chk...";
            }
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();
        }
    }

    
}