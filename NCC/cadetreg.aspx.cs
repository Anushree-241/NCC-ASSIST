using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_cadetreg : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        DateTime thisyear = DateTime.Today;
        string year = thisyear.Year.ToString();
        try
        {

            string s = "select * from cadet";
            con.Open();

            SqlCommand cmd1 = new SqlCommand(s, con);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            int id = 1;
            while (reader.Read())
            {
                id++;
            }

            reader.Close();
            con.Close();
            Label2.Text = year.ToString()+"8KBNBG"+id.ToString().PadLeft(3,'0');

        }
        catch (Exception ex)
        {

            Label1.Text = ex.ToString();

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFile)
            {

                FileUpload1.SaveAs(@Server.MapPath("~/NCC/Uploades/Conviction report/" + FileUpload1.FileName));
                //FileUpload1.SaveAs(@"C:\Users\hp\OneDrive\Desktop\NCC-2022\NCC\Uploades\Conviction report\\" + FileUpload1.FileName);
                Label1.Text = "File Uploaded: " + FileUpload1.FileName;
            }
            


            if (FileUpload2.HasFile)
            {

                FileUpload2.SaveAs(@Server.MapPath("~/NCC/Uploades/Candidate photos/" + FileUpload2.FileName));
                //FileUpload2.SaveAs(@"C:\Users\hp\OneDrive\Desktop\NCC-2022\NCC\Uploades\Candidate photos\\" + FileUpload2.FileName);
                Label1.Text = "File Uploaded: " + FileUpload2.FileName;
            }
            else
            {
                Label1.Text = "No File Uploaded.";
                return;
            }
            if (FileUpload3.HasFile)
            {

                FileUpload3.SaveAs(@Server.MapPath("~/NCC/Uploades/Register Enrollment/" + FileUpload3.FileName));
                //FileUpload3.SaveAs(@"C:\Users\hp\OneDrive\Desktop\NCC-2022\NCC\Uploades\Register Enrollment\\" + FileUpload3.FileName);
                Label1.Text = "File Uploaded: " + FileUpload3.FileName;
            }
            else
            {
                Label1.Text = "No File Uploaded.";
                return;
            }

            string s = "select * from cadet where appno= " + "'" + Label2.Text + "'";
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
                

                s = "insert into cadet values(@2,@3,@4,@5,@6,@7,@8,@9,@10,@11,@12,@13,@14,@15,@16,@17,@18,@19,@20,@21,@22,@23,@24,@25,@26,@27,@28,@29,@30,@31,@32,@33,@34,@35,@36,@37,@38,@39,@40,@41,@42,@43,@44,@45,@46,@47,@48,@49)";
                // Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                //cmd1.Parameters.AddWithValue("@1", TextBox1.Text);
                cmd1.Parameters.AddWithValue("@2", TextBox2.Text);
                cmd1.Parameters.AddWithValue("@3", TextBox3.Text);
                cmd1.Parameters.AddWithValue("@4", TextBox4.Text);
                cmd1.Parameters.AddWithValue("@5", TextBox5.Text);
                cmd1.Parameters.AddWithValue("@6", TextBox6.Text);
                cmd1.Parameters.AddWithValue("@7", TextBox7.Text);
                cmd1.Parameters.AddWithValue("@8", TextBox8.Text);
                cmd1.Parameters.AddWithValue("@9", TextBox9.Text);
                cmd1.Parameters.AddWithValue("@10", TextBox10.Text);
                cmd1.Parameters.AddWithValue("@11", TextBox11.Text);
                cmd1.Parameters.AddWithValue("@12", TextBox12.Text);
                cmd1.Parameters.AddWithValue("@13", TextBox13.Text);
                cmd1.Parameters.AddWithValue("@14", TextBox14.Text);
                cmd1.Parameters.AddWithValue("@15", DropDownList2.Text);
                cmd1.Parameters.AddWithValue("@16", TextBox15.Text);







                cmd1.Parameters.AddWithValue("@17", TextBox17.Text);
                cmd1.Parameters.AddWithValue("@18", TextBox18.Text);
                cmd1.Parameters.AddWithValue("@19", TextBox19.Text);

                if (RadioButtonList1.SelectedIndex == 0)
                {
                    cmd1.Parameters.AddWithValue("@20", RadioButtonList1.SelectedValue);
                }
                else
                {
                    cmd1.Parameters.AddWithValue("@20", RadioButtonList1.SelectedValue);
                }

                //radiobutton
                cmd1.Parameters.AddWithValue("@21", TextBox20.Text);
                cmd1.Parameters.AddWithValue("@22", TextBox21.Text);
                cmd1.Parameters.AddWithValue("@23", DropDownList1.Text);



                cmd1.Parameters.AddWithValue("@24", TextBox23.Text);
                cmd1.Parameters.AddWithValue("@25", TextBox24.Text);
                cmd1.Parameters.AddWithValue("@26", FileUpload1.FileName);
                cmd1.Parameters.AddWithValue("@27", TextBox25.Text);
                cmd1.Parameters.AddWithValue("@28", DropDownList5.Text);




                cmd1.Parameters.AddWithValue("@29", DropDownList6.Text);

                cmd1.Parameters.AddWithValue("@30", DropDownList4.Text);
                cmd1.Parameters.AddWithValue("@31", TextBox42.Text);
                cmd1.Parameters.AddWithValue("@32", TextBox29.Text);
                cmd1.Parameters.AddWithValue("@33", TextBox30.Text);
                cmd1.Parameters.AddWithValue("@34", TextBox31.Text);

                if (RadioButtonList2.SelectedIndex == 0)
                {
                    cmd1.Parameters.AddWithValue("@35", RadioButtonList2.SelectedValue);
                }
                else
                {
                    cmd1.Parameters.AddWithValue("@35", RadioButtonList2.SelectedValue);
                }

                //radiobutton
                cmd1.Parameters.AddWithValue("@36", TextBox32.Text);
                cmd1.Parameters.AddWithValue("@37", TextBox33.Text);
                cmd1.Parameters.AddWithValue("@38", TextBox34.Text);
                cmd1.Parameters.AddWithValue("@39", TextBox35.Text);
                cmd1.Parameters.AddWithValue("@40", TextBox36.Text);
                cmd1.Parameters.AddWithValue("@41", TextBox37.Text);
                cmd1.Parameters.AddWithValue("@42", TextBox38.Text);
                cmd1.Parameters.AddWithValue("@43", TextBox39.Text);
                cmd1.Parameters.AddWithValue("@44", TextBox40.Text);
                cmd1.Parameters.AddWithValue("@45", TextBox41.Text);
                cmd1.Parameters.AddWithValue("@46", FileUpload2.FileName);
                cmd1.Parameters.AddWithValue("@47", FileUpload3.FileName);
                string status = "Pending";
                cmd1.Parameters.AddWithValue("@48", status.ToString());
                cmd1.Parameters.AddWithValue("@49", Label2.Text);
                //cmd1.Parameters.AddWithValue("@47", TextBox42.Text);
                //cmd1.Parameters.AddWithValue("@pw", TextBox7.Text);
                
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Registration successful!!!');</script>");
                
                
                Response.Redirect("confirmreg.aspx?No="+Label2.Text);
            }
            else
            {
                Response.Write("<script>alert('You have already registered with us..');window.location='cadetreg.aspx';</script>");
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

    protected void Button2_Click(object sender, EventArgs e)
    {

        TextBox6.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";

        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        //TextBox16.Text = "";
        TextBox17.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox20.Text = "";
        TextBox21.Text = "";
        //TextBox22.Text = "";
        TextBox23.Text = "";
        TextBox24.Text = "";
        TextBox25.Text = "";
        //TextBox26.Text = "";
        //TextBox27.Text = "";
        //TextBox28.Text = "";
        TextBox29.Text = "";
        TextBox30.Text = "";
        TextBox31.Text = "";
        //TextBox32.Text = "";
        TextBox33.Text = "";
        TextBox34.Text = "";
        TextBox35.Text = "";
        TextBox36.Text = "";
        TextBox37.Text = "";
        TextBox38.Text = "";
        TextBox39.Text = "";
        TextBox40.Text = "";
        TextBox41.Text = "";



    }
}