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

public partial class NCC_viewrankholders : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            //  string em = Session["logname"].ToString();
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select * from rankholders";// where emailid =" + "'" + em + "'";


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


            if (ctr > 0)
            {
                /////////////////////

                //  string str11 = "select * from payment2  where  email=" + "'" + ln + "'";
                // string str11 = "select * from packbooking";// where clientemail =" + "'" + em + "'";



                //ownerid,fname,phone from owner WHERE ownerid =" + "'" + txtowner.Text + "'";
                con.Open();
                SqlCommand cmd2 = new SqlCommand(s, con);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter();
                da = new SqlDataAdapter(cmd2);
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();
            }
            else
            {
                Label1.Text = "Sorry No camp details yet...";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        //if (DropDownList1.SelectedValue != "Clear Options")
        //{
        //    String str4 = "select * from rankholders where r_rank=" + "'" + DropDownList1.SelectedValue + "'";
        //    SqlCommand cmd13 = new SqlCommand(str4, con);
        //    SqlDataAdapter da3 = new SqlDataAdapter();
        //    DataTable dt3 = new DataTable();
        //    da3 = new SqlDataAdapter(cmd13);
        //    da3.Fill(dt3);
        //    GridView1.DataSource = dt3;
        //    GridView1.DataBind();
        //}
        //else if (DropDownList2.SelectedValue != "Clear Options")
        //{
        //    String str5 = "select * from rankholders where r_course=" + "'" + DropDownList2.SelectedValue + "'";
        //    SqlCommand cmd13 = new SqlCommand(str5, con);
        //    SqlDataAdapter da4 = new SqlDataAdapter();
        //    DataTable dt4 = new DataTable();
        //    da4 = new SqlDataAdapter(cmd13);
        //    da4.Fill(dt4);
        //    GridView1.DataSource = dt4;
        //    GridView1.DataBind();
        //}



        //else if (DropDownList1.SelectedValue == "Clear Options" && DropDownList2.SelectedValue == "Clear Options")
        //{
        //    String str2 = "select * from rankholders ";
        //    SqlCommand cmd11 = new SqlCommand(str2, con);
        //    SqlDataAdapter daa = new SqlDataAdapter();
        //    DataTable dtt = new DataTable();
        //    daa = new SqlDataAdapter(cmd11);
        //    daa.Fill(dtt);
        //    GridView1.DataSource = dtt;
        //    GridView1.DataBind();
        //}
        //else
        //{



        String str1 = "select * from rankholders where r_rank= " + "'" + DropDownList1.SelectedValue + "'" + "and r_course=" + "'" + DropDownList2.SelectedValue + "'";
        SqlCommand cmd1 = new SqlCommand(str1, con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        da = new SqlDataAdapter(cmd1);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Label2.Text ="Search results for " + DropDownList1.Text+" in "+DropDownList2.Text;
        //}

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        
            String str5 = "select * from rankholders where r_course=" + "'" + DropDownList2.SelectedValue + "'";
            SqlCommand cmd13 = new SqlCommand(str5, con);
            SqlDataAdapter da4 = new SqlDataAdapter();
            DataTable dt4 = new DataTable();
            da4 = new SqlDataAdapter(cmd13);
            da4.Fill(dt4);
            GridView1.DataSource = dt4;
            GridView1.DataBind();
        Label2.Text="Search results for " + DropDownList2.Text;

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        
        String str4 = "select * from rankholders where r_rank=" + "'" + DropDownList1.SelectedValue + "'";
        SqlCommand cmd13 = new SqlCommand(str4, con);
        SqlDataAdapter da3 = new SqlDataAdapter();
        DataTable dt3 = new DataTable();
        da3 = new SqlDataAdapter(cmd13);
        da3.Fill(dt3);
        GridView1.DataSource = dt3;
        GridView1.DataBind();
        Label2.Text="Search results for " + DropDownList1.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        Label2.Text = "";

    }
}


    