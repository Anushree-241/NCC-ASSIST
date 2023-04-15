using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class NCC_campreg : System.Web.UI.Page
{
    SqlConnection con;
   // SqlConnection con1;




    protected void Page_Load(object sender, EventArgs e)
    {

        string logname = Session["logname"].ToString();
        string logid = Session["id"].ToString();
        TextBox12.Text = Request.QueryString.Get(0);
        TextBox13.Text = Request.QueryString.Get(1);

        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        try
        {

            string s = "select * from campreg";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader1;
            reader1 = cmd1.ExecuteReader();
            int ctr = 1;
            while (reader1.Read())
            {
                ctr++;

            }
            reader1.Close();
            con.Close();
            Label2.Text = ctr.ToString();



        }
        catch (Exception ex)
        {

            TextBox13.Text = ex.ToString();

        }


        string sp = "select * from cadet where cid=" + "'" + logid + "'";
        con.Open();
        SqlCommand cmd11 = new SqlCommand(sp, con);
        SqlDataReader reader;
        reader = cmd11.ExecuteReader();
        int ctr1 = 1;
        String cid = "",appno="", c_fname = "",c_mname="", c_lname = "", c_mobileno = "", c_emailid = "", c_batch = "", c_course = "", c_courseyear = "", c_collegeschool = "";
        while (reader.Read())
        {
            ctr1++;
            int c_id = reader.GetInt32(0);
            cid = Convert.ToString(c_id);
            c_fname = reader.GetString(1);
            c_mname = reader.GetString(2);
            c_lname = reader.GetString(3);
            c_mobileno = reader.GetString(20);
            c_emailid = reader.GetString(21);
            c_batch = reader.GetString(30);
            c_course = reader.GetString(28);
            c_courseyear = reader.GetString(29);
            c_collegeschool = reader.GetString(31);
            appno = reader.GetString(48);

        }
        reader.Close();
        con.Close();
        TextBox2.Text = c_fname.ToString();
        TextBox1.Text = cid.ToString();
        TextBox3.Text = c_mname.ToString();

        TextBox4.Text = c_lname.ToString();
        TextBox6.Text = c_mobileno.ToString();
        TextBox5.Text = c_emailid.ToString();
        TextBox8.Text = c_batch.ToString();
        TextBox9.Text = c_courseyear.ToString();
        TextBox10.Text = c_course.ToString();
        TextBox11.Text = c_collegeschool.ToString();
        TextBox14.Text = appno.ToString();

    }
        
    
    

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(@Server.MapPath("~/NCC/Uploades/Camp declaration form/" + FileUpload1.FileName));
                //FileUpload1.SaveAs(@"C:\Users\hp\OneDrive\Desktop\NCC-2022\NCC\Uploades\Camp declaration form\" + FileUpload1.FileName);
                //Label4.Text = "File Uploaded: " + FileUpload1.FileName;
            }
            else
            {
                Label4.Text = "No File Uploaded.";
                return;
            }



            //string logname = Session["logname"].ToString();

            //string s = "select * from cadet where c_fname="+"'"+logname+"'";
            //con.Open();

            //SqlCommand cmd1 = new SqlCommand(s, con);
            //SqlDataReader reader;
            //reader = cmd1.ExecuteReader();
            //int ctr2 = 0;
            //int cadet_id;
            //String cid = "";
            //while (reader.Read())
            //{
            //    ctr2++;
            //    cadet_id = reader.GetInt32(0);
            //    cid = Convert.ToString(cadet_id);
            //}
            //reader.Close();
            //con.Close();


            string s = "select * from campreg  where camp_id= " + "'" + TextBox13.Text + "'"+"and c_cid="+"'"+TextBox1.Text+"'";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int ctr = 0;
            String c_id = "", camp_id = "",c_cid="";
            while (reader.Read())
            {
                ctr++;
                c_id = reader.GetString(0);
                c_cid = reader.GetString(1);
                camp_id = reader.GetString(4);

            }
            reader.Close();
            con.Close();

            //SqlCommand commandToCheckcname = new SqlCommand("select camp_id  from campreg where camp_id=" + "'" + TextBox13.Text + "'", con);
            //con.Open();
            //string lid = (string)commandToCheckcname.ExecuteScalar();


            //SqlCommand commandToCheckc_regid = new SqlCommand("select c_cid  from campreg where c_cid=" + "'" + TextBox1.Text + "'", con);
            ////con.Open();
            //string id = (string)commandToCheckc_regid.ExecuteScalar();


            ////bool checkid = Convert.ToBoolean(id); 
            //reader = cmd1.ExecuteReader();

            //int ctr1 = 0;
            ////String c_regid = "";


            //while (reader.Read())
            //{
            //    ctr1++;
            //    // c_regid = reader.GetString(46);


            //}

            //reader.Close();
            //con.Close();

            if (c_cid == TextBox1.Text && camp_id == TextBox13.Text )
            {
                Response.Write("<script>alert('You Have Already Registered!!');window.location='viewcamps.aspx';</script>");



            }
            else
            {




                s = "insert into campreg values(@1,@2,@3,@4,@5)";
                //Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.AddWithValue("@1", Label2.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@3", TextBox7.Text);
                cmd1.Parameters.AddWithValue("@4", FileUpload1.FileName);
                cmd1.Parameters.AddWithValue("@5", TextBox13.Text);
                






                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registered successfully!!!');window.location='cadethome.aspx';</script>");



            }
            
        }
        catch (Exception ex)
        {

            Label5.Text = ex.ToString();

        }
    }
}