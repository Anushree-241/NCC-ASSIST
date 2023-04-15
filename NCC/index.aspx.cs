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

public partial class NCC_index : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    int nocadet;
    int eventno;
    int campno;
    int paradeno;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);

            //no. of cadets

            string str = "select  cid from cadet where c_status='APPROVED'";
            con.Open();

            SqlCommand cmd2 = new SqlCommand(str, con);

            con.Close();


            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd2);
            adapter.Fill(dt);
            foreach (DataRow row in dt.Rows)
            {

                nocadet = dt.Rows.Count;

            }
            Label1.Text = nocadet.ToString();

            //no. of events

            string str1 = "select  event_id from event ";
            con.Open();

            SqlCommand cmd3 = new SqlCommand(str1, con);

            con.Close();


            DataTable dt1 = new DataTable();
            SqlDataAdapter adapter1 = new SqlDataAdapter(cmd3);
            adapter1.Fill(dt1);
            foreach (DataRow row in dt1.Rows)
            {

                eventno = dt1.Rows.Count;

            }
            Label2.Text = eventno.ToString();

            //no. of camps

            string str2 = "select  camp_id from camp ";
            con.Open();

            SqlCommand cmd4 = new SqlCommand(str2, con);

            con.Close();


            DataTable dt2 = new DataTable();
            SqlDataAdapter adapter2 = new SqlDataAdapter(cmd4);
            adapter2.Fill(dt2);
            foreach (DataRow row in dt2.Rows)
            {

                campno = dt2.Rows.Count;

            }
            Label3.Text = campno.ToString();

            //no. of camps

            string str3 = "select  p_id from parade ";
            con.Open();

            SqlCommand cmd5 = new SqlCommand(str3, con);

            con.Close();


            DataTable dt3 = new DataTable();
            SqlDataAdapter adapter3 = new SqlDataAdapter(cmd5);
            adapter3.Fill(dt3);
            foreach (DataRow row in dt3.Rows)
            {

                paradeno = dt3.Rows.Count;

            }
            Label4.Text = paradeno.ToString();
            
        }
        catch (Exception ex)
        {
            string exe = ex.ToString();
        }

    }
}