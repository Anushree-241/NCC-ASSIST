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


public partial class NCC_regcandidatescamp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();

        dt.Columns.Add("ID");
        dt.Columns.Add("FIRST NAME");
        dt.Columns.Add("MIDDLE NAME");
        dt.Columns.Add("LAST NAME");
        dt.Columns.Add("COURSE");
        dt.Columns.Add("COURSE YEAR");
        dt.Columns.Add("BATCH");
        dt.Columns.Add("PARENT's MOBILE NO.");
        dt.Columns.Add("CAMP NAME");


        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            dr["ID"] = GridView1.Rows[i].Cells[0].Text;
            dr["FIRST NAME"] = GridView1.Rows[i].Cells[1].Text;
            dr["MIDDLE NAME"] = GridView1.Rows[i].Cells[2].Text;
            dr["LAST NAME"] = GridView1.Rows[i].Cells[3].Text;
            dr["COURSE"] = GridView1.Rows[i].Cells[4].Text;
            dr["COURSE YEAR"] = GridView1.Rows[i].Cells[5].Text;
            dr["BATCH"] = GridView1.Rows[i].Cells[6].Text;
            dr["PARENT's MOBILE NO."] = GridView1.Rows[i].Cells[7].Text;
            dr["CAMP NAME"] = GridView1.Rows[i].Cells[8].Text;

            dt.Rows.Add(dr);

        }

        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();


        Response.Buffer = true;
        Response.Clear();

        Response.AddHeader("content-disposition", string.Format("attachment;filename="+DropDownList1.Text+".xls", "AllColumn"));
        Response.ContentType = "application/excel";
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

    protected void Button2_Click(object sender, EventArgs e)
    {

        DataTable dt = new DataTable();

        dt.Columns.Add("ID");
        dt.Columns.Add("FIRST NAME");
        dt.Columns.Add("MIDDLE NAME");
        dt.Columns.Add("LAST NAME");
        dt.Columns.Add("COURSE");
        dt.Columns.Add("COURSE YEAR");
        dt.Columns.Add("BATCH");
        dt.Columns.Add("PARENT's MOBILE NO.");
        dt.Columns.Add("CAMP NAME");


        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            dr["ID"] = GridView1.Rows[i].Cells[0].Text;
            dr["FIRST NAME"] = GridView1.Rows[i].Cells[1].Text;
            dr["MIDDLE NAME"] = GridView1.Rows[i].Cells[2].Text;
            dr["LAST NAME"] = GridView1.Rows[i].Cells[3].Text;
            dr["COURSE"] = GridView1.Rows[i].Cells[4].Text;
            dr["COURSE YEAR"] = GridView1.Rows[i].Cells[5].Text;
            dr["BATCH"] = GridView1.Rows[i].Cells[6].Text;
            dr["PARENT's MOBILE NO."] = GridView1.Rows[i].Cells[7].Text;
            dr["CAMP NAME"] = GridView1.Rows[i].Cells[8].Text;

            dt.Rows.Add(dr);

        }
        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();


        Response.Buffer = true;
        Response.Clear();
        Response.AddHeader("content-disposition", string.Format("attachment;filename="+DropDownList1.Text+".docs", "AllColumn"));
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

        dt.Columns.Add("ID");
        dt.Columns.Add("FIRST NAME");
        dt.Columns.Add("MIDDLE NAME");
        dt.Columns.Add("LAST NAME");
        dt.Columns.Add("COURSE");
        dt.Columns.Add("COURSE YEAR");
        dt.Columns.Add("BATCH");
        dt.Columns.Add("PARENT's MOBILE NO.");
        dt.Columns.Add("CAMP NAME");


        foreach (GridViewRow row in GridView1.Rows)
        {
            int i = row.RowIndex;
            DataRow dr = dt.NewRow();

            dr["ID"] = GridView1.Rows[i].Cells[0].Text;
            dr["FIRST NAME"] = GridView1.Rows[i].Cells[1].Text;
            dr["MIDDLE NAME"] = GridView1.Rows[i].Cells[2].Text;
            dr["LAST NAME"] = GridView1.Rows[i].Cells[3].Text;
            dr["COURSE"] = GridView1.Rows[i].Cells[4].Text;
            dr["COURSE YEAR"] = GridView1.Rows[i].Cells[5].Text;
            dr["BATCH"] = GridView1.Rows[i].Cells[6].Text;
            dr["PARENT's MOBILE NO."] = GridView1.Rows[i].Cells[7].Text;
            dr["CAMP NAME"] = GridView1.Rows[i].Cells[8].Text;

            dt.Rows.Add(dr);

        }

        GridView grid = new GridView();
        grid.DataSource = dt;
        grid.DataBind();
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename="+DropDownList1.Text+".pdf");
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

}