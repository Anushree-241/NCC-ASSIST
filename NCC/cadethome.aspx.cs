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
    //SqlConnection con1;
    int denominator, numerator, denominator1, numerator1, denominator2, numerator2;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        try
        {
            string loginname= Session["logname"].ToString();
            string s = "select * from cadet where c_fname=" + "'" + loginname+ "'";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 1;
            String c_fname = "", c_photo = "";
            while (reader.Read())
            {
                ctr++;

                c_fname = reader.GetString(1);
                c_photo = reader.GetString(45);
            }
            reader.Close();



            con.Close();



        }
        catch (Exception ex)
        {

            string exc = ex.ToString();

        }



        string logid = Session["id"].ToString();
        string str = "select  distinct campid from campatt ";
        con.Open();

        SqlCommand cmd2 = new SqlCommand(str, con);
        
        con.Close();

        
        DataTable dt = new DataTable();
        SqlDataAdapter adapter = new SqlDataAdapter(cmd2);
        adapter.Fill(dt);
        foreach (DataRow row in dt.Rows)
        {
            
                denominator = dt.Rows.Count;
            
        }

        
        string str1 = "select * from campatt where cadetid="+"'"+logid+"'"+"and att_status='True'";
        con.Open();

        SqlCommand cmd3 = new SqlCommand(str1, con);

        con.Close();

        //String denominator = "", numerator = "";
        DataTable dt1 = new DataTable();
        SqlDataAdapter adapter1 = new SqlDataAdapter(cmd3);
        adapter1.Fill(dt1);
        foreach (DataRow row in dt1.Rows)
        {

                numerator = dt1.Rows.Count;

        }

        Label9.Text = numerator.ToString() + "/" + denominator.ToString();

        //event attendance

        
        string  str2 = "select  distinct eventid from eventatt ";
        con.Open();

        SqlCommand cmd4 = new SqlCommand(str2, con);

        con.Close();


        DataTable dt2 = new DataTable();
        SqlDataAdapter adapter2 = new SqlDataAdapter(cmd4);
        adapter2.Fill(dt2);
        foreach (DataRow row in dt2.Rows)
        {

             denominator1 = dt2.Rows.Count;

        }


        string str3 = "select * from eventatt where cadetid=" + "'" + logid + "'" + "and att_status='True'";
        con.Open();

        SqlCommand cmd5 = new SqlCommand(str3, con);

        con.Close();

        //String denominator = "", numerator = "";
        DataTable dt3 = new DataTable();
        SqlDataAdapter adapter3 = new SqlDataAdapter(cmd5);
        adapter3.Fill(dt3);
        foreach (DataRow row in dt3.Rows)
        {

             numerator1 = dt3.Rows.Count;

        }

        Label10.Text = numerator1.ToString() + "/" + denominator1.ToString();

        //parade attendance
        string str4 = "select  distinct paradeid from paradeatt ";
        con.Open();

        SqlCommand cmd6 = new SqlCommand(str4, con);

        con.Close();


        DataTable dt4 = new DataTable();
        SqlDataAdapter adapter4 = new SqlDataAdapter(cmd6);
        adapter4.Fill(dt4);
        foreach (DataRow row in dt4.Rows)
        {

            denominator2 = dt4.Rows.Count;

        }


        string str5 = "select * from paradeatt where cadetid=" + "'" + logid + "'" + "and att_status='True'";
        con.Open();

        SqlCommand cmd7 = new SqlCommand(str5, con);

        con.Close();

        //String denominator = "", numerator = "";
        DataTable dt5 = new DataTable();
        SqlDataAdapter adapter5 = new SqlDataAdapter(cmd7);
        adapter5.Fill(dt5);
        foreach (DataRow row in dt5.Rows)
        {

            numerator2 = dt5.Rows.Count;

        }

        Label11.Text = numerator2.ToString() + "/" + denominator2.ToString();



    }
}