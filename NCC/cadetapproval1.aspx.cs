using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class NCC_cadetapproval1 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        String pid = "";
        pid = Request.QueryString.Get(0);

        SqlConnection con;



        try
        {

            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            

           con = new SqlConnection(strcon);
        //    //string s = "select * from cadet where  c_regid = " + "'" + pid + "'";
        //    //String c_regid = "";
        //    //if (c_regid.ToString() == pid.ToString())
        //    //{
        //    //    Response.Write("<script>alert('CANDIDATE IS ALREADY APPROVED!!');window.location='cadetapproval.aspx';</script>");
        //    //}




              string s = "select * from cadet where  cid = " + "'" + pid + "'";




               con.Open();

                SqlCommand cmd1 = new SqlCommand(s, con);
               SqlDataReader reader;
        reader = cmd1.ExecuteReader();

        int ctr = 0;
        String c_status = "";
                while (reader.Read())
        {
            ctr++;
         c_status= reader.GetString(47);


            //reg_address = reader.GetString(7);

        }

        //  string c_id = ctr.ToString();



        reader.Close();
        con.Close();







        SqlCommand commandToCheckc_regid = new SqlCommand("select c_status  from cadet where c_status='APPROVED' and cid="+"'"+pid+"'",con);
            con.Open();
            string id = (string)commandToCheckc_regid.ExecuteScalar();

            reader = cmd1.ExecuteReader();

            int ctr1 = 0;
            //String c_regid = "";


            while (reader.Read())
            {
                ctr1++;
               // c_regid = reader.GetString(46);


            }

            reader.Close();
            //con.Close();

            if (id == c_status.ToString())
            {
                Response.Write("<script>alert('CANDIDATE IS ALREADY APPROVED!!');window.location='cadetapproval.aspx';</script>");
            }
            else
            {

            s = "update cadet set c_status=@1 where cid="+"'"+pid+"'";
                cmd1 = new SqlCommand(s, con);
                //cmd1.Parameters.Add("@c_id", c_id);
                
                

                string new_status = "APPROVED";

                cmd1.Parameters.AddWithValue("@1", new_status);
                
                //con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                // Response.Write("<script>window.location='cadetapproval.aspx';</script>");
                Response.Write("<script>alert('CANDIDATE APPROVED SUCCESSFULLY!!');window.location='cadetapproval.aspx';</script>");

            }

                
                //Response.Write("<script>alert('CANDIDATE REJECTED SUCCESSFULLY!!');window.location='cadetapproval.aspx';</script>");
            
            
                //Response.Write("<script>alert('CANDIDATE IS ALREADY APPROVED!!');window.location='cadetapproval.aspx';</script>");
            

        }
        catch (Exception ex)
        {

            Response.Write(ex);

        }
    }

}