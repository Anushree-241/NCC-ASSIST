using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_physicaltest : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;

    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        Label9.Text = Request.QueryString.Get(0);
        //Label10.Text = Request.QueryString.Get(1);
        //Label11.Text = Request.QueryString.Get(2);
        //Label12.Text = Request.QueryString.Get(3);
        //Label14.Text = Request.QueryString.Get(4);


        try
        {

            string s = "select * from cadet where cid="+"'"+Label9.Text+"'";
            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            string c_fname = "", course = "", courseyear = "", batch = "",appno="";
            while (reader.Read())
            {
                c_fname = reader.GetString(1);
                course = reader.GetString(28);
                courseyear = reader.GetString(29);
                batch = reader.GetString(30);
                appno = reader.GetString(48);

            }
            reader.Close();

            con.Close();

            //Label9.Text = Convert.ToString(reader[0]);
            Label10.Text = c_fname;
            Label11.Text = course;
            Label12.Text = courseyear;
            Label14.Text = batch;
            Label5.Text = appno;
            //Label9.Text =
                //TextBox1.Text = ctr.ToString();
        }
        catch (Exception ex)
        {

            Label13.Text = ex.ToString();

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {

            string s = "select * from cadet";

            con.Open();
            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            while (reader.Read())
            {
                ctr++;

            }
            reader.Close();
            con.Close();


            SqlCommand commandToCheckc_regid = new SqlCommand("select pt_id,wt_id,it_id from physicaltest,writtentest,interview where pt_id=" + "'" + Label9.Text + "'"+"and wt_id=" + "'" + Label9.Text + "'"+"and it_id=" + "'" + Label9.Text + "'", con);
            con.Open();
            string id = (string)commandToCheckc_regid.ExecuteScalar();

            //SqlDataReader reader;
            reader = commandToCheckc_regid.ExecuteReader();

            //int ctr1 = 0;
            ////String c_regid = "";


            //while (reader.Read())
            //{
            //    ctr1++;
            //    // c_regid = reader.GetString(46);


            //}

            //reader.Close();
            con.Close();

            if (id == Label9.Text)
            {
                //s = "update  physicaltest set pt_id=@pt_id where pt_id="+""+Label9.Text+"";
                s = "update  physicaltest set pt_id=@1,pt_run=@2,pt_pushup=@3,pt_situps=@4,pt_crunches=@5,pt_total=@6 where pt_id="+"'"+Label9.Text+"'";


                int Text1 = Convert.ToInt32(TextBox1.Text);
                int Text2 = Convert.ToInt32(TextBox2.Text);
                int Text3 = Convert.ToInt32(TextBox3.Text);
                int Text4 = Convert.ToInt32(TextBox4.Text);
                int Total = Text1 + Text2 + Text3 + Text4;


                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.AddWithValue("@1", Label9.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@3", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@4", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@5", TextBox4.Text);
                cmd1.Parameters.AddWithValue("@6", Total.ToString());



                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();


                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

                //s = "update  writtentest set  wt_id=select (reg_id) from register";
                s = "update writtentest set wt_id=@1,wt_score=@2,wt_total=@3 where wt_id=" + "'" + Label9.Text + "'";

                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.AddWithValue("@1", Label9.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox5.Text);
                cmd1.Parameters.AddWithValue("@3", TextBox5.Text);




                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                TextBox5.Text = "";


                //s = "update interview( it_id)select (reg_id) from register";
                s = "update interview set it_id=@1,it_communication=@2,it_knowledge=@3,it_confidence=@4,it_total=@5  where it_id=" + "'" + Label9.Text + "'";
                int Text5 = Convert.ToInt32(TextBox6.Text);
                int Text6 = Convert.ToInt32(TextBox7.Text);
                int Text7 = Convert.ToInt32(TextBox8.Text);
                int Total1 = Text5 + Text6 + Text7;
                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.AddWithValue("@1", Label9.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox6.Text);
                cmd1.Parameters.AddWithValue("@3", TextBox7.Text);
                cmd1.Parameters.AddWithValue("@4", TextBox8.Text);
                cmd1.Parameters.AddWithValue("@5", Total1.ToString());





                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated successfully!!!');window.location='cadetselection.aspx';</script>");

                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";







            }
            else
            {


                //s = "insert into physialtest(ptid,pt_run,pt_pushup,pt_situps,pt_crunches) values(@1,@2,@3,@4,@5)";
                //Response.Write(s);
                s = "insert into physicaltest( pt_id)select (reg_id) from register";
                s = "insert into physicaltest(pt_id,pt_run,pt_pushup,pt_situps,pt_crunches,pt_total) values(@1,@2,@3,@4,@5,@6)";
                int Text1 = Convert.ToInt32(TextBox1.Text);
                int Text2 = Convert.ToInt32(TextBox2.Text);
                int Text3 = Convert.ToInt32(TextBox3.Text);
                int Text4 = Convert.ToInt32(TextBox4.Text);
                int Total = Text1 + Text2 + Text3 + Text4;


                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.AddWithValue("@1", Label9.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@3", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@4", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@5", TextBox4.Text);
                cmd1.Parameters.AddWithValue("@6", Total.ToString());



                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();


                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

                s = "insert into writtentest( wt_id)select (reg_id) from register";
                s = "insert into writtentest(wt_id,wt_score,wt_total) values(@1,@2,@3)";

                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.AddWithValue("@1", Label9.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox5.Text);
                cmd1.Parameters.AddWithValue("@3", TextBox5.Text);




                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                TextBox5.Text = "";


                s = "insert into interview( it_id)select (reg_id) from register";
                s = "insert into interview(it_id,it_communication,it_knowledge,it_confidence,it_total) values(@1,@2,@3,@4,@5)";
                int Text5 = Convert.ToInt32(TextBox6.Text);
                int Text6 = Convert.ToInt32(TextBox7.Text);
                int Text7 = Convert.ToInt32(TextBox8.Text);
                int Total1 = Text5 + Text6 + Text7;
                cmd1 = new SqlCommand(s, con);

                cmd1.Parameters.AddWithValue("@1", Label9.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox6.Text);
                cmd1.Parameters.AddWithValue("@3", TextBox7.Text);
                cmd1.Parameters.AddWithValue("@4", TextBox8.Text);
                cmd1.Parameters.AddWithValue("@5", Total1.ToString());





                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Updated scores successfully!!!');window.location='cadetselection.aspx';</script>");

                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";



            }
            
            //Session["name"] = TextBox1.Text.Trim();
            //Session["address"] = TextBox6.Text.Trim();
            //Session["mobile"] = TextBox2.Text.Trim();
            

        }
        catch (Exception ex)
        {

            Label13.Text = ex.ToString();

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}