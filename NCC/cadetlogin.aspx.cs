using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_cadetlogin : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    //String loginid = "", username = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        //HyperLink1.NavigateUrl = "forgotpassword.aspx" ;

    }

    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select * from cadetlogin where userid=" + "'" + TextBox2.Text + "'" + " and  password=" + "'" + TextBox1.Text + "'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            string userid = "", loginid = "";
            while (reader.Read())
            {
                ctr++;
                loginid = reader.GetString(0);
                userid = reader.GetString(1);
                //  name = reader.GetString(0);
                //    mobile = reader.GetString(2);
                //address = reader.GetString(7);

            }


            reader.Close();


            //con.Close();


            if (ctr == 1)
            {
                // Label1.Text = "success";
                string str = "select * from cadet where appno="+"'"+TextBox2.Text+"'";
                

                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataReader reader1;
                reader1 = cmd.ExecuteReader();
                int ctr1 = 0;
                string  c_fname = "",appno="";
                while (reader1.Read())
                {
                    ctr1++;
                    
                    c_fname = reader1.GetString(1);
                    //appno = reader.GetString(48);
                    //  name = reader.GetString(0);
                    //    mobile = reader.GetString(2);
                    //address = reader.GetString(7);

                }

                
                reader.Close();



                Session["logname"] = c_fname;
                //Session["logname"] = TextBox2.Text.Trim();
                Session["id"] = loginid;
                Session["appno"] = TextBox2.Text;
                
                //Session["address"] = address;
                //   Session["mobile"] = mobile;

                //Response.Write("c===" + Session["logname"].ToString());
                //Response.Write("<br>" + Session["name"].ToString());
                //Response.Write("<br>" + Session["mobile"].ToString());



                Response.Redirect("cadethome.aspx");

            }
            else
            {

                Response.Write("<script>alert('Sorry!Login Fails,INVALID USERNAME OR PASSWORD');window.location='cadetlogin.aspx';</script>");
            }



        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}