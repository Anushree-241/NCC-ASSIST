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


public partial class NCC_viewcamps : System.Web.UI.Page
{

    SqlConnection con;
    //SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            //  string em = Session["logname"].ToString();
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select * from camp";// where emailid =" + "'" + em + "'";


            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 1;
            String camp_name = "";
            while (reader.Read())
            {

                ctr++;

                camp_name = reader.GetString(1);

            }
            reader.Close();
            con.Close();




            
        }
        catch (Exception ex)
        {
            Label21.Text = ex.ToString();
        }



        HyperLink regbtn = DataList1.FindControl("HyperLink2") as HyperLink;
        Label lblstartingdate = DataList1.FindControl("Label23") as Label;
                    //lblstartingdate.Text = (lblstartingdate as DateTime).ToString("dd/mm/yyyy");
                    //string campsdate = lblstartingdate.ToString();
                    //Response.Write(campsdate.ToString());
        DateTime presentdate = DateTime.Today;
                    //Response.Write(presentdate.ToShortDateString());
        Label2.Text = presentdate.ToShortDateString();
                    //if (lblstartingdate.Text == Label2.Text)
                    //{
                    //    regbtn.Enabled = false;
                    //}
                    //else
                    //{
                    //    regbtn.Enabled = true;
                    //}


    }
}