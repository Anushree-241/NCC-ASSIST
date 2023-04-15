using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class NCC_editattendance : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    string att_status;
    string cadetid;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!IsPostBack)
        {
            
            Gridtable();
        }
        Label3.Text = DateTime.Now.ToString();

    }

    
    
    private void Gridtable()
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        con = new SqlConnection(strcon);
        string s = "select * from campatt";
        con.Open();
        SqlCommand cmd1 = new SqlCommand(s, con);
        SqlDataReader reader;
        reader = cmd1.ExecuteReader();
        int ctr = 1;
        String att_status = "";
        while (reader.Read())
        {

            ctr++;
            att_status = reader.GetString(2);


        }
        reader.Close();
        con.Close();

        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox check = row.Cells[6].FindControl("CheckBox1") as CheckBox;
            string ckecklabel = row.Cells[6].Text;

            SqlCommand commandToCheckc_regid = new SqlCommand("select att_status  from campatt where  att_status= 'True'", con);
            con.Open();
            string id = (string)commandToCheckc_regid.ExecuteScalar();
            con.Close();

            if ( id == check.Text)
            {
                check.Checked = true;
                check.Text = "PRESENT";
                check.ForeColor = System.Drawing.Color.Green;
            }
            else 
            {
                check.Checked = false;
                check.ForeColor = System.Drawing.Color.Green;
                check.Text = "PRESENT";
            }


        }
        
       
    }





    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);

            foreach (GridViewRow row in GridView1.Rows)
            {
                
                CheckBox status = (row.Cells[6].FindControl("CheckBox1") as CheckBox);
                cadetid = row.Cells[0].Text;
                string campname = row.Cells[4].Text;
                
                string s = "select * from camp where camp_name="+"'"+ campname + "'";

                con.Open();
                SqlCommand cmd = new SqlCommand(s, con);
                SqlDataReader reader;
                reader = cmd.ExecuteReader();
                String camp_id = "";
                int ctr = 0;
                while (reader.Read())
                {
                    ctr++;
                    camp_id = reader.GetString(0);
                }
                reader.Close();
                con.Close();


                 s = "select * from campatt where campid=" + "'"+ camp_id + "'";

                con.Open();
                SqlCommand cmd2 = new SqlCommand(s, con);
                //SqlDataReader reader;
                reader = cmd2.ExecuteReader();
                int ctr1 = 0;
                String updateddate = "";
                while (reader.Read())
                {
                    ctr1++;
                    updateddate = reader.GetString(3);
                }
                reader.Close();
                con.Close();





                if (status.Checked)
                {
                    att_status = "True";

                     s = "update  campatt set cadetid=@cadetid ,campid=@campid ,att_status=@att_status,updateddate=@updateddate where cadetid="+"'"+ cadetid+"'"+"and campid="+"'"+camp_id+"'";

                    //con.Open();
                    SqlCommand cmd1 = new SqlCommand(s, con);
                    cmd1.Parameters.AddWithValue("@cadetid", cadetid);
                    cmd1.Parameters.AddWithValue("@campid", camp_id);
                    cmd1.Parameters.AddWithValue("@att_status", att_status);
                    cmd1.Parameters.AddWithValue("@updateddate", Label3.Text);
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Data Has Been UPDATED Successfully');window.location='cadcamps.aspx';</script>");


                }
                else
                {
                    att_status = "False";

                    s = "update  campatt set cadetid=@cadetid ,campid=@campid ,att_status=@att_status,updateddate=@updateddate where cadetid=" + "'" + cadetid + "'" + "and campid=" + "'" + camp_id + "'";

                    //con.Open();
                    SqlCommand cmd1 = new SqlCommand(s, con);
                    cmd1.Parameters.AddWithValue("@cadetid", cadetid);
                    cmd1.Parameters.AddWithValue("@campid", camp_id);
                    cmd1.Parameters.AddWithValue("@att_status", att_status);
                    cmd1.Parameters.AddWithValue("@updateddate", Label3.Text);
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Data Has Been UPDATED Successfully');window.location='cadcamps.aspx';</script>");



                }

            }
        }
        catch (Exception ex)
        {
            Label3.Text = ex.ToString();
        }
    }
    
}