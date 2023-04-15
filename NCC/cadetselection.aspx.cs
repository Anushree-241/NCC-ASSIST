using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class NCC_cadetselection : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ANUSHREE\OneDrive\Desktop\NCC-2022\App_Data\NCC2022.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{

        //    String str = "select cid,c_fname,c_mname,c_lname,c_course,c_courseyear,c_batch from cadet";
        //    SqlCommand cm = new SqlCommand(str, conn);
        //    SqlDataReader reader;
           
        //    conn.Open();
        //    //  string cat = "", cat1 = "";
        //    reader = cm.ExecuteReader();
        //    Response.Write("<br/><br/><br/><br/><br/><br/><br/><br/><br/>");
        //    Response.Write("<h1 align=center>UPDATE TEST SCORE</h1>");

        //    Response.Write("<table class=cadetselect id=cadetselection align=center border=2><tr class=heading><td>REGISTER ID</td><td>CANDIDATE FIRST NAME</td><td>CANDIDATE MIDDLE NAME</td><td>CANDIDATE LAST NAME</td><td>COURSE</td><td>COURSE YEAR</td><td>BATCH</td><td>UPDATE SCORE</td></tr><tr>");

        //    int c_id;
        //    String s = "",  c_fname = "", c_mname = "", c_lname = "", c_course ="",c_courseyear="",c_batch ="";
        //    while (reader.Read())
        //    {
        //         c_id = reader.GetInt32(0);
        //        Response.Write(c_id);
        //        //cid = Convert.ToString(c_id);
        //        for (int i = 0; i <= 6; i++)
        //        {
        //            s = reader.GetString(i).Trim();
        //            if (i == 0)
        //            {
                        
        //                c_fname = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 1)
        //            {
        //                c_fname = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 2)
        //            {
        //                c_mname = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 3)
        //            {
                        
        //                c_lname = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 4)
        //            {

        //                c_course = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 5)
        //            {

        //                c_courseyear = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 6)
        //            {

        //                c_batch = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }

        //            else
        //            {

        //                Response.Write("<td>" + s + " </td>");


        //            }

                    
        //        }
                

        //        Response.Write("<td ><a id=update  href=test.aspx?id="+ c_fname +" >UPDATE SCORE</a></td>");
                

        //        Response.Write("</tr>");
        //    }
            
        //    Response.Write("</table>");
        //    conn.Close();
            
        //    //conn.Close();
        //}
        //catch (Exception ex)
        //{
        //    Response.Write(ex);
        //}

    }
}

            

        

    