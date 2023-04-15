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

public partial class NCC_campatt : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        if (!IsPostBack)
        {

            foreach (GridViewRow row in GridView1.Rows)
            {

                string attendance = row.Cells[8].Text;

                if (row.Cells[8].Text == "True")
                {
                    row.Cells[8].Text = "Present";

                }
                else
                {
                    row.Cells[8].Text = "Absent";
                }


            }




            


        }


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
        excel.Save(this.Response, "Camp Attendance.xlsx");

        //DataTable dt = new DataTable();



        //dt.Columns.Add("Cadet ID");
        //dt.Columns.Add("Register ID");
        //dt.Columns.Add("Cadet First Name");
        //dt.Columns.Add("Middle Name");
        //dt.Columns.Add("Last Name");
        //dt.Columns.Add("Course");
        //dt.Columns.Add("Course Year");
        //dt.Columns.Add("Camp Name");
        //dt.Columns.Add("Attendance Status");


        //foreach (GridViewRow row in GridView1.Rows)
        //{


        //    int i = row.RowIndex;
        //    DataRow dr = dt.NewRow();

        //    dr["Cadet ID"] = GridView1.Rows[i].Cells[0].Text;
        //    dr["Register ID"] = GridView1.Rows[i].Cells[1].Text;
        //    dr["Cadet First Name"] = GridView1.Rows[i].Cells[2].Text;
        //    dr["Middle Name"] = GridView1.Rows[i].Cells[3].Text;
        //    dr["Last Name"] = GridView1.Rows[i].Cells[4].Text;
        //    dr["Course"] = GridView1.Rows[i].Cells[5].Text;
        //    dr["Course Year"] = GridView1.Rows[i].Cells[6].Text;
        //    dr["Camp Name"] = GridView1.Rows[i].Cells[7].Text;

        //    dr["Attendance Status"] = GridView1.Rows[i].Cells[8].Text;


        //    dt.Rows.Add(dr);
        //    if (i == GridView1.Rows.Count - 1)
        //    {
        //        DataRow dr1 = dt.NewRow();
        //        dt.Rows.Add(dr1);
        //        dr1["Camp Name"] = GridView1.FooterRow.Cells[7].Text;
        //        dr1["Attendance Status"] = GridView1.FooterRow.Cells[8].Text;
        //    }



        //}


        //GridView grid = new GridView();
        //grid.DataSource = dt;
        //grid.DataBind();


        //Response.Buffer = true;
        //Response.Clear();

        //Response.AddHeader("content-disposition", string.Format("attachment;filename=CampAttendance.xls", "AllColumn"));
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

    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();

        dt.Columns.Add("Cadet ID");
        dt.Columns.Add("Register ID");
        dt.Columns.Add("Cadet First Name");
        dt.Columns.Add("Middle Name");
        dt.Columns.Add("Last Name");
        dt.Columns.Add("Course");
        dt.Columns.Add("Course Year");
        dt.Columns.Add("Camp Name");
        dt.Columns.Add("Attendance Status");


        foreach (GridViewRow row in GridView1.Rows)
        {


            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            dr["Cadet ID"] = GridView1.Rows[i].Cells[0].Text;
            dr["Register ID"] = GridView1.Rows[i].Cells[1].Text;
            dr["Cadet First Name"] = GridView1.Rows[i].Cells[2].Text;
            dr["Middle Name"] = GridView1.Rows[i].Cells[3].Text;
            dr["Last Name"] = GridView1.Rows[i].Cells[4].Text;
            dr["Course"] = GridView1.Rows[i].Cells[5].Text;
            dr["Course Year"] = GridView1.Rows[i].Cells[6].Text;
            dr["Camp Name"] = GridView1.Rows[i].Cells[7].Text;

            dr["Attendance Status"] = GridView1.Rows[i].Cells[8].Text;


            dt.Rows.Add(dr);
            if (i == GridView1.Rows.Count - 1)
            {
                DataRow dr1 = dt.NewRow();
                dt.Rows.Add(dr1);
                dr1["Camp Name"] = GridView1.FooterRow.Cells[7].Text;
                dr1["Attendance Status"] = GridView1.FooterRow.Cells[8].Text;
            }



        }





        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=GridViewData.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        grid.AllowPaging = false;
        grid.DataBind();
        grid.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();



        PdfPTable pdfTable = new PdfPTable(grid.HeaderRow.Cells.Count);

        foreach (TableCell headerCell in grid.HeaderRow.Cells)
        {
            Font font = new Font();
            font.Color = new BaseColor(grid.HeaderStyle.ForeColor);


            PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text, font));
            pdfCell.BackgroundColor = new BaseColor(grid.HeaderStyle.BackColor);

            pdfTable.AddCell(pdfCell);
        }


        foreach (GridViewRow gridViewRow in grid.Rows)
        {
            foreach (TableCell tableCell in gridViewRow.Cells)
            {
                Font font = new Font();
                font.Color = new BaseColor(grid.RowStyle.ForeColor);

                PdfPCell pdfCell = new PdfPCell(new Phrase(tableCell.Text));
                pdfCell.BackgroundColor = new BaseColor(grid.RowStyle.BackColor);

                pdfTable.AddCell(pdfCell);
            }
        }

        Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
        PdfWriter.GetInstance(pdfDocument, Response.OutputStream);
        pdfDocument.Open();
        pdfDocument.Add(pdfTable);
        pdfDocument.Close();
        Response.ContentType = "application/pdf";
        Response.AppendHeader("content-disposition", "attachment;filename=camp.pdf");
        Response.Write(pdfDocument);
        Response.Flush();
        Response.End();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();

        dt.Columns.Add("Cadet ID");
        dt.Columns.Add("Register ID");
        dt.Columns.Add("Cadet First Name");
        dt.Columns.Add("Middle Name");
        dt.Columns.Add("Last Name");
        dt.Columns.Add("Course");
        dt.Columns.Add("Course Year");
        dt.Columns.Add("Camp Name");
        dt.Columns.Add("Attendance Status");


        foreach (GridViewRow row in GridView1.Rows)
        {


            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            dr["Cadet ID"] = GridView1.Rows[i].Cells[0].Text;
            dr["Register ID"] = GridView1.Rows[i].Cells[1].Text;
            dr["Cadet First Name"] = GridView1.Rows[i].Cells[2].Text;
            dr["Middle Name"] = GridView1.Rows[i].Cells[3].Text;
            dr["Last Name"] = GridView1.Rows[i].Cells[4].Text;
            dr["Course"] = GridView1.Rows[i].Cells[5].Text;
            dr["Course Year"] = GridView1.Rows[i].Cells[6].Text;
            dr["Camp Name"] = GridView1.Rows[i].Cells[7].Text;

            dr["Attendance Status"] = GridView1.Rows[i].Cells[8].Text;


            dt.Rows.Add(dr);
            if (i == GridView1.Rows.Count - 1)
            {
                DataRow dr1 = dt.NewRow();
                dt.Rows.Add(dr1);
                dr1["Camp Name"] = GridView1.FooterRow.Cells[7].Text;
                dr1["Attendance Status"] = GridView1.FooterRow.Cells[8].Text;
            }



        }




        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();


        Response.Buffer = true;
        Response.Clear();
        Response.AddHeader("content-disposition", string.Format("attachment;filename=EVENTS.docs", "AllColumn"));
        Response.ContentType = "application/ms-word";
        Response.Charset = "";

        StringWriter stringWriter = new StringWriter();
        HtmlTextWriter htmlWriter = new HtmlTextWriter(stringWriter);

        grid.HeaderRow.Style.Add("background-color", "#FFFFFF");

        foreach (TableCell tableCell in grid.HeaderRow.Cells)
        {
            tableCell.Style["background-color"] = "#A55129";
        }
        foreach (GridViewRow gridViewRow in grid.Rows)
        {
            gridViewRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell gridViewRowTableCell in gridViewRow.Cells)
            {
                gridViewRowTableCell.Style["background-color"] = "#FFF7E7";
            }
        }


        grid.RenderControl(htmlWriter);
        Response.Write(stringWriter.ToString());
        Response.End();
    }



    public void Calculate()
    {
        //int total = 0;

        foreach (GridViewRow row in GridView1.Rows)
        {
            string lbl = row.Cells[8].Text;

            if (lbl == "True")
            {
                ListBox1.Items.Add(" p ");
                // total = total++;
            }

            int total = ListBox1.Items.Count;


            GridView1.FooterRow.Cells[8].Text = total.ToString();
            GridView1.FooterRow.Cells[7].Text = "TOTAL NO. OF PRESENTEE ";
            //Label lbl4 = row.Cells[7].FindControl("Label4") as Label;
            //lbl4.Text = total.ToString();



        }




    }





    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
        GridView1.Caption = DropDownList1.Text + " Attendance";
        Label2.Text = "Search Results for " + DropDownList1.Text;



    }


    protected void GridView1_DataBound(object sender, EventArgs e)
    {
        Calculate();
        foreach (GridViewRow row in GridView1.Rows)
        {

            string attendance = row.Cells[8].Text;

            if (row.Cells[8].Text == "True")
            {
                row.Cells[8].Text = "Present";

            }
            else
            {
                row.Cells[8].Text = "Absent";
            }


        }






    }



    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }

    internal class BaseColor : Color
    {
        public BaseColor(System.Drawing.Color color) : base(color)
        {

        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}
