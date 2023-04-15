using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
public partial class NCC_parade : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
        try
        {

            string s = "select * from parade";
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

            string s = "select * from parade where p_id= " + "'" + TextBox1.Text + "'";

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

                s = "insert into parade values(@1,@2,@3,@4,@5,@6,@7)";
                //Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.AddWithValue("@1", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@3", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@4", TextBox4.Text);
                cmd1.Parameters.AddWithValue("@5", TextBox5.Text);

                /*if (CheckBoxList1.SelectedIndex == 0)
                    
                {
                    cmd1.Parameters.Add("@6", CheckBoxList1.SelectedValue);
                }
                else
                {
                    cmd1.Parameters.Add("@6", CheckBoxList1.SelectedValue);
                }*/


                StringBuilder sbUserChoice = new StringBuilder();

                if (CheckBox1.Checked)
                {
                    sbUserChoice.Append(CheckBox1.Text);

                }

                if (CheckBox2.Checked)
                {
                    sbUserChoice.Append(" " + CheckBox2.Text);
                }



                cmd1.Parameters.AddWithValue("@6", sbUserChoice.ToString());


                cmd1.Parameters.AddWithValue("@7", TextBox6.Text);
                /*
                if (CheckBoxList1.SelectedValue == "Theory" && CheckBoxList1.SelectedValue == "Practicals")
                {
                    cmd1.Parameters.AddWithValue("@6", CheckBoxList1.SelectedValue);
                }
                else
                {
                    cmd1.Parameters.AddWithValue("@6", CheckBoxList1.SelectedValue);
                }
                cmd1.Parameters.AddWithValue("@7", TextBox6.Text);

                */

                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Parade Added successfully!!!');window.location='parade.aspx';</script>");

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";




            }
            else
            {
                Response.Write("<script>alert('couldn't add event details.Details already exist ');window.location='parade.aspx';</script>");
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
        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Red;
            e.Cell.BackColor = System.Drawing.Color.Gray;

            // e.Cell.Font.Strikeout = true;

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