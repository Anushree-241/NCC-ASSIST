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

public partial class NCC_events : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        try
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
            

                string s = "select * from event";
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
                TextBox1.Text = ctr.ToString();
            
        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

             if (FileUpload1.HasFile)
            {
                string fname = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.SaveAs(@Server.MapPath("~/NCC/Uploades/Event photos/" + fname));
                //FileUpload1.SaveAs(@"C:\Users\hp\OneDrive\Desktop\NCC-2022\NCC\Uploades\Event photos\" + fname);
                Label1.Text = "File Uploaded: " + FileUpload1.FileName;
            }
            else
            {
                Label1.Text = "No File Uploaded.";
                return;
            }

            string s = "select * from event where event_id= " + "'" + TextBox1.Text + "'";
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
            if (ctr == 0)
            {

                s = "insert into event values(@1,@2,@3,@4,@5,@6,@7,@8)";
                //Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.AddWithValue("@1", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@3", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@4", TextBox4.Text);
                cmd1.Parameters.AddWithValue("@5", TextBox5.Text);
                cmd1.Parameters.AddWithValue("@6", FileUpload1.FileName);
                if (RadioButtonList1.SelectedIndex == 0)
                {
                    cmd1.Parameters.AddWithValue("@7", RadioButtonList1.SelectedValue);
                }
                else
                {
                    cmd1.Parameters.AddWithValue("@7", RadioButtonList1.SelectedValue);
                }

                cmd1.Parameters.AddWithValue("@8", TextBox7.Text);

                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Events Added successfully!!!');window.location='events.aspx';</script>");

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                //TextBox6.Text = "";
                TextBox7.Text = "";




            }
            else
            {
                Response.Write("<script>alert('couldn't add event details.Details already exist ');window.location='events.aspx';</script>");
                //   "You have already registered with us..";

            }
            //Session["name"] = TextBox1.Text.Trim();
            //Session["address"] = TextBox6.Text.Trim();
            //Session["mobile"] = TextBox2.Text.Trim();


        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox4.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
           
            e.Cell.ForeColor = System.Drawing.Color.Red;
            e.Cell.BackColor = System.Drawing.Color.LightGray;

            // e.Cell.Font.Strikeout = true;
        }
        else
        {
            e.Cell.ForeColor = System.Drawing.Color.Black;
            e.Cell.BackColor = System.Drawing.Color.White;

        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }
}