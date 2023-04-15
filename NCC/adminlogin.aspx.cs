using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class adminlogin : System.Web.UI.Page
{

    SqlConnection con;
    //SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "forgotadminpwd.aspx";
    }

    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select * from adminlogin where username=" + "'" + TextBox2.Text + "'" + " and  password=" + "'" + TextBox1.Text + "'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            //String name = "", mobile = "", address = "";
            while (reader.Read())
            {
                ctr++;
                //  name = reader.GetString(0);
                //    mobile = reader.GetString(2);
                //address = reader.GetString(7);

            }
            reader.Close();
            con.Close();
            if (ctr == 1)
            {
                // Label1.Text = "success";
                Session["logname"] = TextBox2.Text.Trim();
                //   Session["name"] = name;
                //Session["address"] = address;
                //   Session["mobile"] = mobile;

                //Response.Write("c===" + Session["logname"].ToString());
                //Response.Write("<br>" + Session["name"].ToString());
                //Response.Write("<br>" + Session["mobile"].ToString());
                Response.Redirect("adminhome.aspx");
            }
            else
            {
                Response.Write("<script>alert('Sorry,Login Fails');window.location='adminlogin.aspx';</script>");
            }


        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
}