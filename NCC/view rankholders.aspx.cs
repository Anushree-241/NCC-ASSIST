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


public partial class NCC_view_rankholders : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            con = new SqlConnection(strcon);
        String str = "select cid,appno,c_fname,c_mname,c_lname,r_rank,c_course,c_courseyear,c_batch from cadet,rankholders where cadet.cid = rankholders.r_cid ";
        SqlCommand cmd1 = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        da = new SqlDataAdapter(cmd1);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();



    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String str = "select cid,appno,c_fname,c_mname,c_lname,r_rank,c_course,c_courseyear,c_batch from cadet,rankholders where cadet.cid = rankholders.r_cid and cadet.c_course=" + "'" + DropDownList1.SelectedValue + "'";
        SqlCommand cmd1 = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        da = new SqlDataAdapter(cmd1);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Label4.Text = "Search results for " + DropDownList1.Text;

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        String str = "select cid,appno,c_fname,c_mname,c_lname,r_rank,c_course,c_courseyear,c_batch from cadet,rankholders where cadet.cid = rankholders.r_cid and cadet.c_courseyear=" + "'" + DropDownList2.SelectedValue + "'";
        SqlCommand cmd1 = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        da = new SqlDataAdapter(cmd1);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Label4.Text = "Search results for " + DropDownList2.Text;
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        String str = "select cid,appno,c_fname,c_mname,c_lname,r_rank,c_course,c_courseyear,c_batch from cadet,rankholders where cadet.cid = rankholders.r_cid and rankholders.r_rank=" + "'" + DropDownList3.SelectedValue + "'";
        SqlCommand cmd1 = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        da = new SqlDataAdapter(cmd1);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Label4.Text = "Search results for " + DropDownList3.Text;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        DropDownList3.ClearSelection();
        Label4.Text = "";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        String str = "select cid,appno,c_fname,c_mname,c_lname,r_rank,c_course,c_courseyear,c_batch from cadet,rankholders where cadet.cid = rankholders.r_cid and rankholders.r_rank=" + "'" + DropDownList3.SelectedValue + "'"+ "and cadet.c_course="+ "'"+DropDownList1.SelectedValue+"'"+ "and cadet.c_courseyear="+"'"+DropDownList2.SelectedValue+"'";
        SqlCommand cmd1 = new SqlCommand(str, con);
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        da = new SqlDataAdapter(cmd1);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Label4.Text = "Search results for " + DropDownList1.Text+" "+DropDownList2.Text+" "+DropDownList3.Text;
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
        excel.Save(this.Response, "Rank holders.xlsx");

        //DataTable dt = new DataTable();

        //dt.Columns.Add("CADET ID");
        //dt.Columns.Add("REGISTER ID");
        //dt.Columns.Add("FIRST NAME");
        //dt.Columns.Add("MIDDLE NAME");
        //dt.Columns.Add("LAST NAME");
        //dt.Columns.Add("RANK");
        //dt.Columns.Add("COURSE");
        //dt.Columns.Add("COURSE YEAR");
        //dt.Columns.Add("BATCH");


        //foreach (GridViewRow row in GridView1.Rows)
        //{
        //    int i = row.RowIndex;
        //    DataRow dr = dt.NewRow();

        //    dr["CADET ID"] = GridView1.Rows[i].Cells[0].Text;
        //    dr["REGISTER ID"] = GridView1.Rows[i].Cells[1].Text;
        //    dr["FIRST NAME"] = GridView1.Rows[i].Cells[2].Text;
        //    dr["MIDDLE NAME"] = GridView1.Rows[i].Cells[3].Text;
        //    dr["LAST NAME"] = GridView1.Rows[i].Cells[4].Text;
        //    dr["RANK"] = GridView1.Rows[i].Cells[5].Text;
        //    dr["COURSE"] = GridView1.Rows[i].Cells[6].Text;
        //    dr["COURSE YEAR"] = GridView1.Rows[i].Cells[7].Text;
        //    dr["BATCH"] = GridView1.Rows[i].Cells[8].Text;

        //    dt.Rows.Add(dr);

        //}

        //GridView grid = new GridView();
        //grid.DataSource = dt;
        //grid.DataBind();


        //Response.Buffer = true;
        //Response.Clear();

        //Response.AddHeader("content-disposition", string.Format("attachment;filename=RANKHOLDERS.xls", "AllColumn"));
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

        dt.Columns.Add("CADET ID");
        dt.Columns.Add("REGISTER ID");
        dt.Columns.Add("FIRST NAME");
        dt.Columns.Add("MIDDLE NAME");
        dt.Columns.Add("LAST NAME");
        dt.Columns.Add("RANK");
        dt.Columns.Add("COURSE");
        dt.Columns.Add("COURSE YEAR");
        dt.Columns.Add("BATCH");


        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            dr["CADET ID"] = GridView1.Rows[i].Cells[0].Text;
            dr["REGISTER ID"] = GridView1.Rows[i].Cells[1].Text;
            dr["FIRST NAME"] = GridView1.Rows[i].Cells[2].Text;
            dr["MIDDLE NAME"] = GridView1.Rows[i].Cells[3].Text;
            dr["LAST NAME"] = GridView1.Rows[i].Cells[4].Text;
            dr["RANK"] = GridView1.Rows[i].Cells[5].Text;
            dr["COURSE"] = GridView1.Rows[i].Cells[6].Text;
            dr["COURSE YEAR"] = GridView1.Rows[i].Cells[7].Text;
            dr["BATCH"] = GridView1.Rows[i].Cells[8].Text;

            dt.Rows.Add(dr);

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

    protected void Button3_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();

        dt.Columns.Add("CADET ID");
        dt.Columns.Add("REGISTER ID");
        dt.Columns.Add("FIRST NAME");
        dt.Columns.Add("MIDDLE NAME");
        dt.Columns.Add("LAST NAME");
        dt.Columns.Add("RANK");
        dt.Columns.Add("COURSE");
        dt.Columns.Add("COURSE YEAR");
        dt.Columns.Add("BATCH");


        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            dr["CADET ID"] = GridView1.Rows[i].Cells[0].Text;
            dr["REGISTER ID"] = GridView1.Rows[i].Cells[1].Text;
            dr["FIRST NAME"] = GridView1.Rows[i].Cells[2].Text;
            dr["MIDDLE NAME"] = GridView1.Rows[i].Cells[3].Text;
            dr["LAST NAME"] = GridView1.Rows[i].Cells[4].Text;
            dr["RANK"] = GridView1.Rows[i].Cells[5].Text;
            dr["COURSE"] = GridView1.Rows[i].Cells[6].Text;
            dr["COURSE YEAR"] = GridView1.Rows[i].Cells[7].Text;
            dr["BATCH"] = GridView1.Rows[i].Cells[8].Text;

            dt.Rows.Add(dr);

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

    internal class BaseColor : Color
    {
        public BaseColor(System.Drawing.Color color) : base(color)
        {

        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("adminhome.aspx");
    }
}