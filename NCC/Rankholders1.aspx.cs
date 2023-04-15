using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_Rankholders1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        Label1.Text = Request.QueryString.Get(0);        
        Label9.Text = Request.QueryString.Get(1);        
        Label17.Text = Request.QueryString.Get(2);
        Label10.Text = Request.QueryString.Get(3);
        Label11.Text = Request.QueryString.Get(4);
        Label12.Text = Request.QueryString.Get(5);
        Label16.Text = Request.QueryString.Get(6);
        

        try
        {
            string s = "select * from cadet";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 1;
            //String c_id = "";
            while (reader.Read())
            {

                ctr++;
                //c_id = reader.GetString(0);

            }

            reader.Close();
            con.Close();


            if (DropDownList1.SelectedValue == "Choose Rank")
            {
                Label14.Text = "";
            }
            else
            {
                Label14.Text = DropDownList1.Text;
            }
            
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

        
        try
        {


            string s = "select * from rankholders ";

            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader1;
            reader1 = cmd1.ExecuteReader();
           
            String r_rank="",r_cid="";
            int ctr1 = 0;
            while (reader1.Read())
            {
                ctr1++;
                
                r_rank = reader1.GetString(1);
                r_cid = reader1.GetString(2);


            }
            reader1.Close();
            con.Close();






             s = "select * from cadet where c_fname=" + "'" + Label9.Text + "'";

            con.Open();
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd.ExecuteReader();
            int cid;
            String c_cid = "";
            int ctr = 0;
            while (reader.Read())
            {
                ctr++;
                cid = reader.GetInt32(0);
                c_cid = Convert.ToString(cid);

            }
            reader.Close();
            con.Close();

                SqlCommand commandToCheckc_regid = new SqlCommand("select r_cid from rankholders where r_cid=" + "'" + c_cid + "'", con);
                con.Open();
                string id = (string)commandToCheckc_regid.ExecuteScalar();

                
                reader = commandToCheckc_regid.ExecuteReader();
            con.Close();

            if (id == c_cid)
                {


                    s = "UPDATE rankholders SET r_rank=@r_rank where r_cid=" + "'" + c_cid + "'";
                SqlCommand cmd2 = new SqlCommand(s, con);
                
                cmd2.Parameters.AddWithValue("@r_rank", DropDownList1.Text);


                con.Open();
                cmd2.ExecuteNonQuery();
                con.Close();

                    Response.Write("<script>alert('Rank updated successful!!!');window.location='rankholders.aspx';</script>");


                }
                else
                { 

                    s = "insert into rankholders(r_rank,r_cid) values(@1,@2)";
                    cmd1 = new SqlCommand(s, con);
                    cmd1.Parameters.AddWithValue("@1", DropDownList1.Text);
                    cmd1.Parameters.AddWithValue("@2", c_cid);
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Rank added successful!!!');window.location='rankholders.aspx';</script>");
                    Label14.Text = "";

                }
            
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }

    }
}

