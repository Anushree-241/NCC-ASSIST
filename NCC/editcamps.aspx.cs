using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NCC_editcamps : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar Calendar1 = (DetailsView1.FindControl("Calendar1") as Calendar);
        Calendar1.Visible = true;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar Calendar2 = (DetailsView1.FindControl("Calendar2") as Calendar);
        if (Calendar2.Visible)
        {
            Calendar2.Visible = false;
        }
        else
        {
            Calendar2.Visible = true;
        }
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        Calendar Calendar1 = (DetailsView1.FindControl("Calendar1") as Calendar);
        Calendar Calendar2 = (DetailsView1.FindControl("Calendar2") as Calendar);
        TextBox TextBox3 = (DetailsView1.FindControl("TextBox3") as TextBox);
        TextBox TextBox4 = (DetailsView1.FindControl("TextBox4") as TextBox);
        TextBox TextBox5 = (DetailsView1.FindControl("TextBox5") as TextBox);
        TextBox4.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;
        if (TextBox4.Text == string.Empty)
        {
            TextBox5.Text = string.Empty;
        }
        else
        {

            DateTime d2 = Calendar2.SelectedDate;
            DateTime d1 = Calendar1.SelectedDate;
            Double datediff = ((TimeSpan)(d2.Subtract(d1))).Days;
            TextBox5.Text = datediff.ToString() + " Days";

        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Calendar Calendar1 = (DetailsView1.FindControl("Calendar1") as Calendar);
        Calendar Calendar2 = (DetailsView1.FindControl("Calendar2") as Calendar);
        TextBox TextBox3 = (DetailsView1.FindControl("TextBox3") as TextBox);
        TextBox TextBox4 = (DetailsView1.FindControl("TextBox4") as TextBox);
        TextBox TextBox5 = (DetailsView1.FindControl("TextBox5") as TextBox);
        TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
        if (TextBox4.Text == string.Empty)
        {
            TextBox5.Text = string.Empty;
        }
        else
        {

            DateTime d2 = Calendar2.SelectedDate;
            DateTime d1 = Calendar1.SelectedDate;
            Double datediff = ((TimeSpan)(d2.Subtract(d1))).Days;
            TextBox5.Text = datediff.ToString() + " Days";
        }
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Red;
            e.Cell.BackColor = System.Drawing.Color.Gray;

            // e.Cell.Font.Strikeout = true;
        }
    }

    protected void Calendar2_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Red;
            e.Cell.BackColor = System.Drawing.Color.Gray;

            // e.Cell.Font.Strikeout = true;
        }
    }
}