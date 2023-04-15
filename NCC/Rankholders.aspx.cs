using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class NCC_Rankholders : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ANUSHREE\OneDrive\Desktop\NCC-2022\App_Data\NCC2022.mdf;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {

    //    try
    //    {
    //        String str = "select c_fname,c_lname,c_fathers_fname,c_course,c_courseyear,c_batch from cadet";
    //        SqlCommand cm = new SqlCommand(str, conn);
    //        SqlDataReader reader;
    //        conn.Open();
    //        //  string cat = "", cat1 = "";
    //        reader = cm.ExecuteReader();
    //        Response.Write("<br/><br/><br/><br/><br/><br/><br/><br/><br/>");
    //        Response.Write("<h1  align=center>UPDATE RANKS</h1>");

    //        Response.Write("<table   align=center border=2> <tr class=heading><td>FIRST NAME</td><td>LAST NAME</td><td>FATHER'S NAME</td><td>COURSE</td><td>COURSE YEAR</td><td>BATCH</td><td>UPDATE RANK</td></tr><tr>");

    //        String s = "", c_fathers_fname = "",c_lname="", c_fname = "", c_course = "", c_courseyear = "",c_batch="";
    //        while (reader.Read())
    //        {
    //            for (int i = 0; i <= 5; i++)
    //            {
    //                s = reader.GetString(i).Trim();
    //                if (i == 0)
    //                {
    //                    c_fname = s;
    //                    Response.Write("<td>" + s + " </td>");
    //                }
    //                else if (i == 1)
    //                {
    //                    c_lname = s;
    //                    Response.Write("<td>" + s + " </td>");
    //                }else if (i == 2)
    //                {
    //                    c_fathers_fname = s;
    //                    Response.Write("<td>" + s + " </td>");
    //                }
    //                else if (i == 3)
    //                {
    //                    c_course = s;
    //                    Response.Write("<td>" + s + " </td>");
    //                }
    //                else if (i == 4)
    //                {

    //                    c_courseyear = s;
    //                    Response.Write("<td>" + s + " </td>");
    //                }else if (i == 5)
    //                {

    //                    c_batch = s;
    //                    Response.Write("<td>" + s + " </td>");
    //                }
    //                else
    //                {

    //                    Response.Write("<td>" + s + " </td>");


    //                }


    //            }

    //            Response.Write("<td><a id=updaterank href=Rankholders1.aspx?name="+ c_fname +"&cl="+c_lname + "&n=" + c_fathers_fname + "&a=" + c_course + "&b=" + c_courseyear +"&cb="+c_batch+ " >UPDATE RANK</a></td>");


    //            Response.Write("</tr>");
    //        }


    //        Response.Write("</table>");
    //        //Response.Write("<a href=rankholders.aspx> Home </a>");
    //        //conn.Close();

    //    }
    //    catch (Exception ex)
    //    {
    //        Response.Write(ex);
    //    }


    }
}