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

public partial class NCC_photo : System.Web.UI.Page
{
    
    
    SqlConnection con;
    SqlConnection con1;
    string camp_id = "";
    string imgnames;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        DateTime date = DateTime.Now;
        Label3.Text = date.ToString();

        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        string s = "select concat (camp_name, '-' ,camp_startingdate)as concatname   from camp where camp_name= " + "'" + DropDownList1.Text + "'";
        con.Open();
        SqlCommand cmd1 = new SqlCommand(s, con);
        SqlDataReader reader;
        reader = cmd1.ExecuteReader();

        if (reader.Read())
        {

            txt1.Text = reader.GetValue(0).ToString();
        }
        reader.Close();
        con.Close();


        
        
    }

    

    protected void Button1_Click1(object sender, EventArgs e)
    {

        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);

        string s = "select camp_id from camp where camp_name= " + "'" + DropDownList1.Text + "'";
        con.Open();
        SqlCommand cmd1 = new SqlCommand(s, con);
        SqlDataReader reader;
        reader = cmd1.ExecuteReader();
        int ctr = 0;
        string camp_id = "";
        while (reader.Read())
        {
            ctr++;
            camp_id = reader.GetString(0);
        }
        reader.Close();
        con.Close();


        SqlCommand commandToCheckc_regid = new SqlCommand("select a_name from photogallery where a_name=" + "'" + txt1.Text + "'", con);
        con.Open();
        string id = (string)commandToCheckc_regid.ExecuteScalar();
        con.Close();
        
            string createfolder = Server.MapPath(string.Format("~/{0}/", txt1.Text));

            if (!Directory.Exists(createfolder) && id != txt1.Text)
            {
                Directory.CreateDirectory(createfolder);
                Label1.Text = "Folder "+ txt1.Text + " is created Successfully!";
                Label1.ForeColor = System.Drawing.Color.Green;


                s = "insert into photogallery values(@1,@2,@3,@4,@5)";
                //Response.Write(s);
                cmd1 = new SqlCommand(s, con);
                cmd1.Parameters.AddWithValue("@1", camp_id);
                //camp_id == a_id
                cmd1.Parameters.AddWithValue("@2", camp_id);
                cmd1.Parameters.AddWithValue("@3", txt1.Text);
                cmd1.Parameters.AddWithValue("@4", Label3.Text);
                cmd1.Parameters.AddWithValue("@5", Label3.Text);




                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                Label1.Text = "Folder " + txt1.Text + " is created Successfully!";
                Label1.ForeColor = System.Drawing.Color.Green;
                GridView1.Visible = true;
                Label4.Visible = true;
                FileUpload1.Visible = true;
                Button2.Visible = true;

            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Folder " + txt1.Text + " Already Exist!";
            }
        //}

        //else
        //{
        //    Label1.Text = "if not working";
        //}








    }
        

    protected void Button2_Click(object sender, EventArgs e)
    {

        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        //con = new SqlConnection(strcon);

        string s = "select camp_id from camp where camp_name= " + "'" + DropDownList1.Text + "'";
        con.Open();
        SqlCommand cmd1 = new SqlCommand(s, con);
        SqlDataReader reader;
        reader = cmd1.ExecuteReader();
        int ctr = 0;
        string camp_id = "";
        while (reader.Read())
        {
            ctr++;
            camp_id = reader.GetString(0);
        }
        reader.Close();
        con.Close();



        string imgext = Path.GetExtension(FileUpload1.FileName);
        if(imgext==".jpg"||imgext==".png"||imgext==".jpeg")
        {
              

                foreach (HttpPostedFile selectedimgs in FileUpload1.PostedFiles)
                {
                    imgnames = Path.GetFileName(selectedimgs.FileName);
                    selectedimgs.SaveAs(Server.MapPath("/"+txt1.Text+"/") + imgnames);
                ListBox1.Items.Add(imgnames);

                }
                

            for (int i = 0; i<ListBox1.Items.Count;i++)
            {
                string str = "insert into pictures (a_id,pic_loc) values(@1,@2)";
                con.Open();
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@1", camp_id);
                cmd.Parameters.AddWithValue("@2", ListBox1.Items[i].ToString());
                cmd.ExecuteNonQuery();
                con.Close();
            }
            
            Label2.Text = string.Format("{0}  Images are saved into " + txt1.Text + " Successfully", FileUpload1.PostedFiles.Count);
            Label2.ForeColor = System.Drawing.Color.Green;
        }
        else
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "Only .jpg .jpeg and .png files are allowed! ";
        }

        Response.Redirect("picsfolder.aspx");
        
    }

        
}