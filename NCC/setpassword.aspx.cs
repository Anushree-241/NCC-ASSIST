using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_setpassword : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        TextBox1.Text = Request.QueryString.Get(0);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string logid = Session["logid"].ToString();
            string s = "select * from cadet where appno=" + "'" + logid + "'";

            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            string c_fname = "",cid="", appno="";
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();

            int ctr = 0;
            
            while (reader.Read())
            {
                ctr++;
                int c_id = reader.GetInt32(0);
                cid = Convert.ToString(c_id);
                c_fname = reader.GetString(1);
                appno = reader.GetString(48);
            }
            reader.Close();
            con.Close();
            //string loginid = ctr.ToString();



            if (ctr == 1)
            {

                if (TextBox2.Text == TextBox3.Text)
                {



                    //s = "insert into physialtest(ptid,pt_run,pt_pushup,pt_situps,pt_crunches) values(@1,@2,@3,@4,@5)";
                    //Response.Write(s);
                    //s = "insert into cadetlogin(username)select (c_fname) from cadet";
                    s = "insert into cadetlogin(loginid,userid,password) values(@1,@2,@3)";

                    cmd1 = new SqlCommand(s, con);

                    cmd1.Parameters.AddWithValue("@1", cid);
                    cmd1.Parameters.AddWithValue("@2", appno);
                    cmd1.Parameters.AddWithValue("@3", TextBox3.Text);




                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();


                    TextBox1.Text = "";
                    TextBox2.Text = "";


                    Response.Write("<script>alert('Password Updated successfully!!!');window.location='cadetlogin.aspx';</script>");


                }
                else
                {
                    Response.Write("<script>alert('PASSWORD DOES NOT MATCH');</script>");
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }


            }
            else
            {
                Response.Write("<script>alert('You have already registered with us..');window.location='appstatus.aspx';</script>");
                //   "You have already registered with us..";

            }
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