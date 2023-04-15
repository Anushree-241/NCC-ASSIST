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
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using GemBox.Spreadsheet;


public partial class NCC_cadetdb1 : System.Web.UI.Page
{
    SqlConnection con;
    //SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            //  string em = Session["logname"].ToString();
            string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);


            string s = "select * from cadet where c_status ='APPROVED'";

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


            if (ctr > 0)
            {
                /////////////////////

                //  string str11 = "select * from payment2  where  email=" + "'" + ln + "'";
                // string str11 = "select * from packbooking";// where clientemail =" + "'" + em + "'";



                //ownerid,fname,phone from owner WHERE ownerid =" + "'" + txtowner.Text + "'";
                con.Open();
                SqlCommand cmd2 = new SqlCommand(s, con);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter();
                da = new SqlDataAdapter(cmd2);
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();
            }
            else
            {
                Label1.Text = "Sorry No Order details yet...";
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.ToString();
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Get MyGridView control's HTML representation.
        var plainWriter = new StringWriter();
        var htmlWriter = new HtmlTextWriter(plainWriter);
        this.GridView1.RenderControl(htmlWriter);

        // Load HTML into ExcelFile.
        SpreadsheetInfo.SetLicense("FREE-LIMITED-KEY");
        var htmlOptions = new GemBox.Spreadsheet.HtmlLoadOptions();
        var htmlStream = new MemoryStream(htmlOptions.Encoding.GetBytes(plainWriter.ToString()));
        var excel = ExcelFile.Load(htmlStream, htmlOptions);


        // Download ExcelFile to current HttpResponse.
        excel.Save(this.Response, "Cadet Database.xlsx");

        //DataTable dt = new DataTable();

        //dt.Columns.Add("CADET ID");
        //dt.Columns.Add("REGISTER ID");
        //dt.Columns.Add("FIRST NAME");
        //dt.Columns.Add("MIDDLE NAME");
        //dt.Columns.Add("LAST NAME");
        //dt.Columns.Add("NATIONALITY");
        //dt.Columns.Add("DATE OF BIRTH");
        //dt.Columns.Add("FATHER'S FIRST NAME");
        //dt.Columns.Add("FATHER'S MIDDLE NAME");
        //dt.Columns.Add("FATHER'S LAST NAME");
        //dt.Columns.Add("MOTHER'S FIRST NAME");
        //dt.Columns.Add("MOTHER'S MIDDLE NAME");
        //dt.Columns.Add("MOTHER'S LAST NAME");
        //dt.Columns.Add("ADDRESS");
        //dt.Columns.Add("LANDMARK");
        //dt.Columns.Add("STATE");
        //dt.Columns.Add("DISTRICT");
        //dt.Columns.Add("TALUK");
        //dt.Columns.Add("CITY");
        //dt.Columns.Add("PINCODE");
        //dt.Columns.Add("GENDER");
        //dt.Columns.Add("MOBILE NO.");
        //dt.Columns.Add("EMAIL ID");
        //dt.Columns.Add("BLOOD GROUP");
        //dt.Columns.Add("NEAREST RAILWAY STATION");
        //dt.Columns.Add("NEAREST POLICE STATION");
        //dt.Columns.Add("QUALIFICATION");
        //dt.Columns.Add("STREAM");
        //dt.Columns.Add("COURSE");
        //dt.Columns.Add("COURSE YEAR");
        //dt.Columns.Add("COLLEGE/SCHOOL");
        //dt.Columns.Add("MARKS");
        //dt.Columns.Add("IDENTIFICATION MARK");
        //dt.Columns.Add("ENROLLMENT PERMISIION");
        //dt.Columns.Add("NCC UNIT");
        //dt.Columns.Add("PREVIOUS ENROLLMENT");
        //dt.Columns.Add("PREVIOUS DISMISSED");
        //dt.Columns.Add("NEXT OF KIN");
        //dt.Columns.Add("NEXT OF KIN ADDRESS");
        //dt.Columns.Add("NEXT OF KIN PHONENO");
        //dt.Columns.Add("IFSC CODE");
        //dt.Columns.Add("ACCOUNT NO.");
        //dt.Columns.Add("AADHAR NO.");
        //dt.Columns.Add("PAN NO.");

        //foreach (GridViewRow row in GridView1.Rows)
        //{
        //    int i = row.RowIndex;
        //    DataRow dr = dt.NewRow();

        //    dr["CADET ID"] = GridView1.Rows[i].Cells[0].Text;
        //    dr["REGISTER ID"] = GridView1.Rows[i].Cells[2].Text;
        //    dr["FIRST NAME"] = GridView1.Rows[i].Cells[3].Text;
        //    dr["MIDDLE NAME"] = GridView1.Rows[i].Cells[4].Text;
        //    dr["LAST NAME"] = GridView1.Rows[i].Cells[5].Text;
        //    dr["NATIONALITY"] = GridView1.Rows[i].Cells[6].Text;
        //    dr["DATE OF BIRTH"] = GridView1.Rows[i].Cells[7].Text;
        //    dr["FATHER'S FIRST NAME"] = GridView1.Rows[i].Cells[8].Text;
        //    dr["FATHER'S MIDDLE NAME"] = GridView1.Rows[i].Cells[9].Text;
        //    dr["FATHER'S LAST NAME"] = GridView1.Rows[i].Cells[10].Text;
        //    dr["MOTHER'S FIRST NAME"] = GridView1.Rows[i].Cells[11].Text;
        //    dr["MOTHER'S MIDDLE NAME"] = GridView1.Rows[i].Cells[12].Text;
        //    dr["MOTHER'S LAST NAME"] = GridView1.Rows[i].Cells[13].Text;
        //    dr["ADDRESS"] = GridView1.Rows[i].Cells[14].Text;
        //    dr["LANDMARK"] = GridView1.Rows[i].Cells[15].Text;
        //    dr["STATE"] = GridView1.Rows[i].Cells[16].Text;
        //    dr["DISTRICT"] = GridView1.Rows[i].Cells[17].Text;
        //    dr["TALUK"] = GridView1.Rows[i].Cells[18].Text;
        //    dr["CITY"] = GridView1.Rows[i].Cells[19].Text;
        //    dr["PINCODE"] = GridView1.Rows[i].Cells[20].Text;
        //    dr["GENDER"] = GridView1.Rows[i].Cells[21].Text;
        //    dr["MOBILE NO."] = GridView1.Rows[i].Cells[22].Text;
        //    dr["EMAIL ID"] = GridView1.Rows[i].Cells[23].Text;
        //    dr["BLOOD GROUP"] = GridView1.Rows[i].Cells[24].Text;
        //    dr["NEAREST RAILWAY STATION"] = GridView1.Rows[i].Cells[25].Text;
        //    dr["NEAREST POLICE STATION"] = GridView1.Rows[i].Cells[26].Text;
        //    dr["QUALIFICATION"] = GridView1.Rows[i].Cells[27].Text;
        //    dr["STREAM"] = GridView1.Rows[i].Cells[28].Text;
        //    dr["COURSE"] = GridView1.Rows[i].Cells[29].Text;
        //    dr["COURSE YEAR"] = GridView1.Rows[i].Cells[30].Text;
        //    dr["COLLEGE/SCHOOL"] = GridView1.Rows[i].Cells[31].Text;
        //    dr["MARKS"] = GridView1.Rows[i].Cells[32].Text;
        //    dr["IDENTIFICATION MARK"] = GridView1.Rows[i].Cells[33].Text;
        //    dr["ENROLLMENT PERMISIION"] = GridView1.Rows[i].Cells[34].Text;
        //    dr["NCC UNIT"] = GridView1.Rows[i].Cells[35].Text;
        //    dr["PREVIOUS ENROLLMENT"] = GridView1.Rows[i].Cells[36].Text;
        //    dr["PREVIOUS DISMISSED"] = GridView1.Rows[i].Cells[37].Text;
        //    dr["NEXT OF KIN"] = GridView1.Rows[i].Cells[38].Text;
        //    dr["NEXT OF KIN ADDRESS"] = GridView1.Rows[i].Cells[39].Text;
        //    dr["NEXT OF KIN PHONENO"] = GridView1.Rows[i].Cells[40].Text;
        //    dr["IFSC CODE"] = GridView1.Rows[i].Cells[41].Text;
        //    dr["ACCOUNT NO."] = GridView1.Rows[i].Cells[42].Text;
        //    dr["AADHAR NO."] = GridView1.Rows[i].Cells[43].Text;
        //    dr["PAN NO."] = GridView1.Rows[i].Cells[44].Text;
        //    dt.Rows.Add(dr);

        //}

        //GridView grid = new GridView();
        //grid.DataSource = dt;
        //grid.DataBind();


        //Response.Buffer = true;
        //Response.Clear();
        //Response.AddHeader("content-disposition", string.Format("attachment;filename=cadet database.xls", "AllColumn"));
        //Response.ContentType = "application/excel";
        //Response.Charset = "";

        //StringWriter stringWriter = new StringWriter();
        //HtmlTextWriter htmlWriter = new HtmlTextWriter(stringWriter);

        //grid.HeaderRow.Style.Add("background-color", "#FFFFFF");

        //foreach (TableCell tableCell in grid.HeaderRow.Cells)
        //{
        //    tableCell.Style["background-color"] = "#A55129";
        //}
        //foreach (GridViewRow gridViewRow in grid.Rows)
        //{
        //    gridViewRow.BackColor = System.Drawing.Color.White;
        //    foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
        //    {
        //        gridViewRowTableCell.Style["background-color"] = "#FFF7E7";
        //    }
        //}


        //grid.RenderControl(htmlWriter);
        //Response.Write(stringWriter.ToString());
        //Response.End();

    }

    

    

    internal class BaseColor : Color
    {
        public BaseColor(System.Drawing.Color color) : base(color)
        {

        }
    }

}