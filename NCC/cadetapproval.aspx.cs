using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_cadetapproval : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ANUSHREE\OneDrive\Desktop\NCC-2022\App_Data\NCC2022.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

        //try
        //{

        //    String str = "select appno,c_fname,c_course,c_courseyear,c_batch,pt_run,pt_pushup,pt_situps,pt_crunches,pt_total,wt_score,it_communication,it_knowledge,it_confidence,it_total from cadet,physicaltest,writtentest,interview where cadet.cid= physicaltest.pt_id and cadet.cid = writtentest.wt_id and cadet.cid = interview.it_id";
        //    SqlCommand cm = new SqlCommand(str, conn);
        //    SqlDataReader reader;
        //    conn.Open();
        //    //  string cat = "", cat1 = "";
        //    reader = cm.ExecuteReader();

        //    Response.Write("<h1 style=margin-top:7rem align=center>CANDIDATE APPROVAL</h1>");

        //    Response.Write("<table  align=center border=2><tr class=heading><td>ID</td><td>CANDIDATE NAME</td><td>COURSE</td><td>COURSE YEAR</td><td>BATCH</td><td>1600 M RUNNING SCORE</td><td>PUSHUP SCORE</td><td>SITUP SCORE</td><td>CRUNCHES SCORE</td><td>PHYSICAL TEST TOTAL SCORE</td><td>WRITTEN TEST SCORE</td><td>COMMUNICATION </td><td>KNOWLEDGE</td><td>CONFIDENCE</td><td>INTERVIEW TOTAL SCORE</td><td COLSPAN = 2 >STATUS</td></tr><tr>");

            
        //    String s = "",appno="",  c_fname = "", c_course = "", c_courseyear = "", c_batch = "", pt_run="",pt_pushup="",
        //        pt_situps="",pt_crunches="",pt_total="",wt_score="",it_communication="",it_knowledge="",it_confidence="",it_total="";

        //    while (reader.Read())
        //    {
        //        for (int i = 0; i <=14; i++)
        //        {
        //            s = reader.GetString(i).Trim();
        //            if (i == 0)
        //            {
                        
        //                appno = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 1)
        //            {
        //                c_fname = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 2)
        //            {
        //                c_course = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 3)
        //            {

        //                c_courseyear = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 4)
        //            {

        //                c_batch = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 5)
        //            {

        //                pt_run = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 6)
        //            {

        //                pt_pushup = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 7)
        //            {

        //                pt_situps = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 8)
        //            {

        //                pt_crunches = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 9)
        //            {

        //                pt_total = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 10)
        //            {

        //                wt_score = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 11)
        //            {

        //                it_communication = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 12)
        //            {

        //                it_knowledge = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 13)
        //            {

        //                it_confidence = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else if (i == 14)
        //            {

        //                it_total = s;
        //                Response.Write("<td>" + s + " </td>");
        //            }
        //            else
        //            {

        //                Response.Write("<td>" + s + " </td>");


        //            }


        //        }


                
        //        Response.Write("<td><a id=approve href=cadetapproval1.aspx?id="+appno+">APPROVE</a></td>");
        //        Response.Write("<td><a id=reject href=cadetreject.aspx?id="+appno+">REJECT</a></td>");


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








