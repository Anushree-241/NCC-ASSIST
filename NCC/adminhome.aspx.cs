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
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

public partial class adminhome : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    int nocadet;
    int rankno;
    int campcard;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            //  string em = Session["logname"].ToString();
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select * from adminlogin";// where emailid =" + "'" + em + "'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 1;

            while (reader.Read())
            {

                ctr++;


            }
            reader.Close();
            con.Close();



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


            //no. rank holders
            string str1 = "select  r_id from rankholders  where r_rank !='Cadet' ";
            con.Open();

            SqlCommand cmd3 = new SqlCommand(str1, con);

            con.Close();


            DataTable dt1 = new DataTable();
            SqlDataAdapter adapter1 = new SqlDataAdapter(cmd3);
            adapter1.Fill(dt1);
            foreach (DataRow row in dt1.Rows)
            {

                rankno = dt1.Rows.Count;

            }

            Label2.Text = rankno.ToString();

            //cadets reg for camp
            string str3 = "select  r_id from rankholders where  r_rank !='Cadet' ";
            con.Open();

            SqlCommand cmd4 = new SqlCommand(str3, con);

            con.Close();


            DataTable dt2 = new DataTable();
            SqlDataAdapter adapter2 = new SqlDataAdapter(cmd4);
            adapter2.Fill(dt2);
            foreach (DataRow row in dt2.Rows)
            {

                rankno = dt2.Rows.Count;

            }

            Label2.Text = rankno.ToString();


            // camp reg card dashboard

            //string camp = "select * from campreg,camp where campreg.camp_id = camp.camp_id order by camp_id desc  ";// where emailid =" + "'" + em + "'";


            //con.Open();

            //SqlCommand cmd5 = new SqlCommand(camp, con);
            //SqlDataReader reader1;
            //reader1 = cmd5.ExecuteReader();
            //int ctr1 = 1;
            //string camp_id = "",camp_name="";

            //while (reader1.Read())
            //{

            //    ctr1++;
            //    camp_id = reader1.GetString(5);
            //    camp_name = reader1.GetString(4);


            //}
            //reader.Close();
            //con.Close();

            //Label4.Text = camp_name.ToString();

            //string str4 = "select  c_cid from campreg where camp_id ="+"'"+camp_id+"'";
            //con.Open();

            //SqlCommand cmd6 = new SqlCommand(str4, con);

            //con.Close();


            //DataTable dt3 = new DataTable();
            //SqlDataAdapter adapter3 = new SqlDataAdapter(cmd6);
            //adapter3.Fill(dt3);
            //foreach (DataRow row in dt3.Rows)
            //{

            //    campcard = dt3.Rows.Count;

            //}

            //Label3.Text = campcard.ToString();





        }
        catch (Exception ex)
        {
            string exe = ex.ToString();
        }
    }
}