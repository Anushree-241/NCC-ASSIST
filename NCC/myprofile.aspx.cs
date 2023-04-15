using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class NCC_myprofile : System.Web.UI.Page
{

    //SqlConnection con;
    //SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        //    con = new SqlConnection(strcon);

        //    String logid = Session["id"].ToString();
        //    String s = " select * from cadet where  c_id =" + "'" + logid + "'";
        //    //Response.Write(s);


        //    con.Open();
        //    SqlCommand cmd2 = new SqlCommand(s, con);
        //    DataTable dt = new DataTable();
        //    SqlDataAdapter da = new SqlDataAdapter();
        //    da = new SqlDataAdapter(cmd2);
        //    da.Fill(dt);
        //    DetailsView1.DataSource = dt;
        //    DetailsView1.DataBind();

        //    con.Close();
        //}
        //catch (Exception ex)
        //{
        //    Label1.Text = "NO DATA ";
        //}


    }




    //protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
    //{
    //    DetailsView1.ChangeMode(e.NewMode);


    //    String logid = Session["id"].ToString();
    //    String s = " select * from cadet where  c_id =" + "'" + logid + "'";
    //    con.Open();
    //    SqlCommand cmd2 = new SqlCommand(s, con);
    //    DataTable dt = new DataTable();
    //    SqlDataAdapter da = new SqlDataAdapter();
    //    da = new SqlDataAdapter(cmd2);
    //    da.Fill(dt);
    //    DetailsView1.DataSource = dt;
    //    DetailsView1.DataBind();

    //    con.Close();
    //}

    //protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    //{





    //    string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    //    con = new SqlConnection(strcon);

    //    try
    //    {
    //        String logid = Session["id"].ToString();
    //        string s = "select * from cadet where cid=" + "'" + logid + "'";
    //        //Response.Write(s);
    //        con.Open();

    //        SqlCommand cmd1 = new SqlCommand(s, con);
    //        SqlDataReader reader;
    //        reader = cmd1.ExecuteReader();
    //        int ctr = 0;
    //        // string logid = "";
    //        while (reader.Read())
    //        {
    //            //  uname = reader.GetString(0);
    //            ctr++;
    //        }
    //        reader.Close();
    //        con.Close();
    //        if (ctr == 1)
    //        {
    //            s = "update cadet  set c_fname=@fname,c_mname=@mname,c_lname=@lname ";
    //            //s = "update  cadet set(@1=,@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13,@14,@15,@16,@17,@18,@19,@20,@21,@22,@23,@24,@25,@26,@27,@28,@29,@30,@31,@32,@33,@34,@35,@36,@37,@38,@39,@40,@41,@42,@43,@44,@45,@46)";
    //            // Response.Write(s);

    //            //cmd1.Parameters.Add("@id", e.NewValues["c_id"].ToString());
    //            cmd1.Parameters.AddWithValue("@fname", e.NewValues["c_fname"].ToString());
    //            cmd1.Parameters.AddWithValue("@mname", e.NewValues["c_mname"].ToString());
    //            cmd1.Parameters.AddWithValue("@lname", e.NewValues["c_lname"].ToString());
    //            //    //cmd1.Parameters.Add("@5", TextBox5.Text);
    //            //    //cmd1.Parameters.Add("@6", TextBox6.Text);
    //            //    //cmd1.Parameters.Add("@7", TextBox7.Text);
    //            //    //cmd1.Parameters.Add("@8", TextBox8.Text);
    //            //    //cmd1.Parameters.Add("@9", TextBox9.Text);
    //            //    //cmd1.Parameters.Add("@10", TextBox10.Text);
    //            //    //cmd1.Parameters.Add("@11", TextBox11.Text);
    //            //    //cmd1.Parameters.Add("@12", TextBox12.Text);
    //            //    //cmd1.Parameters.Add("@13", TextBox13.Text);
    //            //    //cmd1.Parameters.Add("@14", TextBox14.Text);
    //            //    //cmd1.Parameters.Add("@15", TextBox15.Text);
    //            //    //cmd1.Parameters.Add("@16", TextBox16.Text);
    //            //    //cmd1.Parameters.Add("@17", TextBox17.Text);
    //            //    //cmd1.Parameters.Add("@18", TextBox18.Text);
    //            //    //cmd1.Parameters.Add("@19", TextBox19.Text);

    //            //    //if (RadioButtonList1.SelectedIndex == 0)
    //            //    //{
    //            //    //    cmd1.Parameters.Add("@20", RadioButtonList1.SelectedValue);
    //            //    //}
    //            //    //else
    //            //    //{
    //            //    //    cmd1.Parameters.Add("@20", RadioButtonList1.SelectedValue);
    //            //    //}

    //            //    ////radiobutton
    //            //    //cmd1.Parameters.Add("@21", TextBox20.Text);
    //            //    //cmd1.Parameters.Add("@22", TextBox21.Text);
    //            //    //cmd1.Parameters.Add("@23", TextBox22.Text);
    //            //    //cmd1.Parameters.Add("@24", TextBox23.Text);
    //            //    //cmd1.Parameters.Add("@25", TextBox24.Text);
    //            //    //cmd1.Parameters.Add("@26", FileUpload1.FileName);
    //            //    //cmd1.Parameters.Add("@27", TextBox25.Text);
    //            //    //cmd1.Parameters.Add("@28", TextBox26.Text);
    //            //    //cmd1.Parameters.Add("@29", TextBox27.Text);
    //            //    //cmd1.Parameters.Add("@30", TextBox28.Text);
    //            //    //cmd1.Parameters.Add("@31", TextBox29.Text);
    //            //    //cmd1.Parameters.Add("@32", TextBox30.Text);
    //            //    //cmd1.Parameters.Add("@33", TextBox31.Text);

    //            //    //if (RadioButtonList2.SelectedIndex == 0)
    //            //    //{
    //            //    //    cmd1.Parameters.Add("@34", RadioButtonList2.SelectedValue);
    //            //    //}
    //            //    //else
    //            //    //{
    //            //    //    cmd1.Parameters.Add("@34", RadioButtonList2.SelectedValue);
    //            //    //}

    //            //    ////radiobutton
    //            //    //cmd1.Parameters.Add("@35", TextBox32.Text);
    //            //    //cmd1.Parameters.Add("@36", TextBox33.Text);
    //            //    //cmd1.Parameters.Add("@37", TextBox34.Text);
    //            //    //cmd1.Parameters.Add("@38", TextBox35.Text);
    //            //    //cmd1.Parameters.Add("@39", TextBox36.Text);
    //            //    //cmd1.Parameters.Add("@40", TextBox37.Text);
    //            //    //cmd1.Parameters.Add("@41", TextBox38.Text);
    //            //    //cmd1.Parameters.Add("@42", TextBox39.Text);
    //            //    //cmd1.Parameters.Add("@43", TextBox40.Text);
    //            //    //cmd1.Parameters.Add("@44", TextBox41.Text);
    //            //    //cmd1.Parameters.Add("@45", FileUpload2.FileName);
    //            //    //cmd1.Parameters.Add("@46", FileUpload3.FileName);



    //            //    ////cmd1.Parameters.Add("@pw", TextBox7.Text);





    //            con.Open();
    //            cmd1.ExecuteNonQuery();
    //            con.Close();

    //            Response.Write("<script>alert('UDATE successful!!!');window.location='cadethome.aspx';</script>");


    //            //        //TextBox6.Text = "";
    //            //        //TextBox2.Text = "";
    //            //        //TextBox3.Text = "";
    //            //        //TextBox4.Text = "";
    //            //        //TextBox5.Text = "";
    //            //        //TextBox1.Text = "";
    //            //        //TextBox7.Text = "";
    //            //        //TextBox8.Text = "";
    //            //        //TextBox9.Text = "";
    //            //        //TextBox10.Text = "";
    //            //        //TextBox11.Text = "";
    //            //        //TextBox12.Text = "";
    //            //        //TextBox13.Text = "";
    //            //        //TextBox14.Text = "";
    //            //        //TextBox15.Text = "";
    //            //        //TextBox16.Text = "";
    //            //        //TextBox17.Text = "";
    //            //        //TextBox18.Text = "";
    //            //        //TextBox19.Text = "";
    //            //        //TextBox20.Text = "";
    //            //        //TextBox21.Text = "";
    //            //        //TextBox22.Text = "";
    //            //        //TextBox23.Text = "";
    //            //        //TextBox24.Text = "";
    //            //        //TextBox25.Text = "";
    //            //        //TextBox26.Text = "";
    //            //        //TextBox27.Text = "";
    //            //        //TextBox28.Text = "";
    //            //        //TextBox29.Text = "";
    //            //        //TextBox30.Text = "";
    //            //        //TextBox31.Text = "";
    //            //        //TextBox32.Text = "";
    //            //        //TextBox33.Text = "";
    //            //        //TextBox34.Text = "";
    //            //        //TextBox35.Text = "";
    //            //        //TextBox36.Text = "";
    //            //        //TextBox37.Text = "";
    //            //        //TextBox38.Text = "";
    //            //        //TextBox39.Text = "";
    //            //        //TextBox40.Text = "";
    //            //        //TextBox41.Text = "";





    //        }
    //        else
    //        {
    //            Response.Write("<script>alert('You have already registered with us..');window.location='cadetreg.aspx';</script>");
    //            //"You have already registered with us..";

    //        }
    //        //    //Session["name"] = TextBox1.Text.Trim();
    //        //    //Session["address"] = TextBox6.Text.Trim();
    //        //    //Session["mobile"] = TextBox2.Text.Trim();


    //    }
    //        catch (Exception ex)
    //    {

    //        Label1.Text = ex.ToString();

    //    }
    //}

    //protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
}           //{
            //    DetailsView1.DataBind();
            //}
        