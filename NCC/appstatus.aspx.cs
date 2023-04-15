using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);


        string s = "select * from cadet ";


        con.Open();

        SqlCommand cmd1 = new SqlCommand(s, con);
        SqlDataReader reader;
        reader = cmd1.ExecuteReader();
        int ctr = 0;
        //String c_id = "";
        
        while (reader.Read())
        {
            ctr++;
           // c_id = reader.GetString(0);

            //    mobile = reader.GetString(2);
            //address = reader.GetString(7);

        }


        reader.Close();
        con.Close();
        HyperLink1.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select * from cadet where appno=" + "'" + TextBox1.Text + "'" ;


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            String  c_fname = "", c_status = "", appno="";
            //Response.Write(reg_emailid.ToString());
            while (reader.Read())
            {
                ctr++;
                //c_id = reader.GetString(0);     
                c_fname = reader.GetString(1);     
                  c_status = reader.GetString(47);
                    c_fname = reader.GetString(1);
                    appno = reader.GetString(48);

                //address = reader.GetString(7);

            }
            reader.Close();
            con.Close();
            if (ctr == 1 && c_status != "Pending")
            {

                Session["logid"] = appno;



                SqlCommand commandToCheckc_regid = new SqlCommand("select userid from cadetlogin where userid=" + "'" + TextBox1.Text + "'", con);
                con.Open();
                string id = (string)commandToCheckc_regid.ExecuteScalar();

                if(id != TextBox1.Text)
                { 




                Label2.Text = c_status.ToString();
                Image1.Visible = true;
                HyperLink1.Text = "CLICK HERE TO SET PASSWORD";
                HyperLink1.NavigateUrl = "setpassword.aspx?f="+appno ;
                    //Response.Write("<div class=link ><a  style=color:blue; href=setpassword.aspx?id=" + c_id + "  > CLICK HERE TO SET PASSWORD</a></div>");



                    //Response.Write( Label2.Text);
                }
                else
                {
                    Image1.Visible = false;
                    Label2.Text = "YOU HAVE ALREADY SET YOUR PASSWORD.CLICK ON THE LINK BELOW TO LOGIN";
                    HyperLink1.Text = "Click here to login";
                    HyperLink1.NavigateUrl = "cadetlogin.aspx";
                }

            }
            else if (c_status == "Pending")
            {
                HyperLink1.Text = "";
                Label3.Text = "YOUR APPLICATION IS NOT YET PROCESSED OR YOU HAVE NOT REGISTERED WITH US!";
                
                
            }
            

        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        HyperLink1.Text = "";
        Image1.Visible = false;
        TextBox1.Text = "";
        TextBox1.Text = string.Empty;
        Label2.Text = "";
        Label3.Text = "";
    }
}
