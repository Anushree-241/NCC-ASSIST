using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class NCC_eventattendance : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    string att_status;
    string cadetid;

    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);

        Label1.Text = Request.QueryString.Get(4);
        Label2.Text = Request.QueryString.Get(0);
        Label3.Text = Request.QueryString.Get(1);
        Label4.Text = Request.QueryString.Get(2);
        Label5.Text = Request.QueryString.Get(3);
        

        DateTime datenow = DateTime.Now;
        Label6.Text = Convert.ToString(datenow);

        




    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {


            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[5].FindControl("CheckBox1") as CheckBox);
                cadetid = row.Cells[0].Text;
                if (status.Checked)
                {
                    att_status = "True";

                    string s = "insert into eventatt values(@cadetid ,@eventid ,@att_status,@updateddate)";

                    //con.Open();
                    SqlCommand cmd1 = new SqlCommand(s, con);

                    cmd1 = new SqlCommand(s, con);



                    cmd1.Parameters.AddWithValue("@cadetid", cadetid);
                    cmd1.Parameters.AddWithValue("@eventid", Label1.Text);
                    cmd1.Parameters.AddWithValue("@att_status", att_status);
                    cmd1.Parameters.AddWithValue("@updateddate", Label6.Text);
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Data Has Been Saved Successfully');window.location='cadevents.aspx';</script>");


                   


                }
                else
                {
                    att_status = "False";
                    string s = "insert into eventatt values(@cadetid ,@eventid ,@att_status,@updateddate)";

                    //con.Open();
                    SqlCommand cmd1 = new SqlCommand(s, con);

                    cmd1 = new SqlCommand(s, con);



                    cmd1.Parameters.AddWithValue("@cadetid", cadetid);
                    cmd1.Parameters.AddWithValue("@eventid", Label1.Text);
                    cmd1.Parameters.AddWithValue("@att_status", att_status);
                    cmd1.Parameters.AddWithValue("@updateddate", Label6.Text);
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Data Has Been Saved Successfully');window.location='cadevents.aspx';</script>");




                }

            }






        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
}