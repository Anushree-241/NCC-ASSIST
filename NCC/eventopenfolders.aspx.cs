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
using System.Text;

public partial class NCC_eventopenfolders : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    //string event_id = "";
    string imgnames;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);

        Label1.Text = Request.QueryString.Get(0);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.Visible = true;
        Button2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);

        string s = "select * from eventgallery where a_id=" + "'" + Label1.Text + "'";

        con.Open();
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader reader;
        reader = cmd.ExecuteReader();
        string a_name = "";
        int ctr = 0;
        while (reader.Read())
        {
            ctr++;

            a_name = reader.GetString(3);

        }
        reader.Close();
        con.Close();

        string imgext = Path.GetExtension(FileUpload1.FileName);
        if (imgext == ".jpg" || imgext == ".png" || imgext == ".jpeg")
        {


            foreach (HttpPostedFile selectedimgs in FileUpload1.PostedFiles)
            {
                imgnames = Path.GetFileName(selectedimgs.FileName);
                selectedimgs.SaveAs(Server.MapPath("/" + a_name + "/") + imgnames);
                ListBox1.Items.Add(imgnames);

            }


            for (int i = 0; i < ListBox1.Items.Count; i++)
            {
                string str = "insert into eventpictures (a_id,pic_loc) values(@1,@2)";
                con.Open();
                SqlCommand cmd1 = new SqlCommand(str, con);
                cmd1.Parameters.AddWithValue("@1", Label1.Text);
                cmd1.Parameters.AddWithValue("@2", ListBox1.Items[i].ToString());
                cmd1.ExecuteNonQuery();
                con.Close();
            }
            Response.Write("<script>alert('Photo Added Successfully!!!');window.location='eventpicsfolder.aspx';</script>");
            //Label2.Text = string.Format("{0}  Images are saved into " + txt1.Text + " Successfully", FileUpload1.PostedFiles.Count);
            //Label2.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "Only .jpg .jpeg and .png files are allowed! ";
        }

        //string  str = "insert into pictures(a_id,pic_loc) values(@1,@2)";

        //SqlCommand cmd1 = new SqlCommand(str, con);
        //cmd1.Parameters.Add("@1", a_id);
        //cmd1.Parameters.Add("@2", FileUpload1.FileName);


        //con.Open();
        //cmd1.ExecuteNonQuery();
        //con.Close();

        //

    }
}