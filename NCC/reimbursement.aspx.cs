using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class NCC_reimbursement : System.Web.UI.Page
{

    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        try
        {
            string s = "select * from cadet where appno=" + "'" + DropDownList2.Text + "'";
            //Response.Write(s);
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            string c_fname = "", c_mname = "", c_lname = "", c_course = "", c_courseyear = "", c_batch = "", appno = "";
            while (reader.Read())
            {
                c_fname = reader.GetString(1);
                c_mname = reader.GetString(2);
                c_lname = reader.GetString(3);
                c_course = reader.GetString(28);
                c_courseyear = reader.GetString(29);
                c_batch = reader.GetString(30);
                appno = reader.GetString(48);
                ctr++;
            }
            reader.Close();
            con.Close();

            Label1.Text = c_fname;
            Label2.Text = c_mname;
            Label3.Text = c_lname;
            Label4.Text = c_course;
            Label5.Text = c_courseyear;
            Label6.Text = c_batch;
            Label10.Text = appno;


            ///////////////////////////////////////////////////////////////////////////////////////////
            ///
            try 
            { 
            string str = "select * from camp where camp_name=" + "'" + DropDownList1.Text + "'";
            //Response.Write(s);
            con.Open();

            SqlCommand cmd11 = new SqlCommand(str, con);
            SqlDataReader reader1;
            reader1 = cmd11.ExecuteReader();
            int ctr1 = 0;
            string camp_name = "", camp_startingdate = "", camp_amount = "", camp_id = "";
            while (reader1.Read())
            {
                camp_id = reader1.GetString(0);
                camp_name = reader1.GetString(1);
                camp_startingdate = reader1.GetString(3);
                camp_amount = reader1.GetString(11);

                ctr1++;
            }
            reader1.Close();
            con.Close();
            Label11.Text = camp_id;
            Label7.Text = camp_name;
            Label8.Text = camp_startingdate;
            Label9.Text = camp_amount;
            }
            catch(Exception ex)
            {
                string exe = ex.ToString();
            }

        }
        catch (Exception ex)
        {
            string Exe = ex.ToString();
        }
        
            



        
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        int campfee = Convert.ToInt32(Label9.Text);
        int rembfee = Convert.ToInt32(TextBox1.Text);

       if(campfee >= rembfee)
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);

            string s = "insert into campreimbursement(cadet_regid,camp_id,amt_reimburst) values(@1,@2,@3)";
            SqlCommand cmd12 = new SqlCommand(s, con);
            cmd12 = new SqlCommand(s, con);
            cmd12.Parameters.AddWithValue("@1", Label10.Text);
            cmd12.Parameters.AddWithValue("@2", Label11.Text);
            cmd12.Parameters.AddWithValue("@3", TextBox1.Text);

            con.Open();
            cmd12.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Reimbursement successful!!!');window.location='reimbursement.aspx';</script>");

            Label10.Text = "";
            Label11.Text = "";
            TextBox1.Text = "";
       }
        else
        {
            Label12.ForeColor = System.Drawing.Color.Red;
            Label12.Text = "Reimbursement fees is exceeding camp fees ";
        }
        

        
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        DropDownList2.Items.Clear();
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("Select Register ID", "0"));
    }
}