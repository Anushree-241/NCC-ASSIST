using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NCC_editevents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Calendar Calendar1 = (DetailsView1.FindControl("Calendar1") as Calendar);
        TextBox TextBox3 = (DetailsView1.FindControl("TextBox3") as TextBox);
        TextBox3.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;

            e.Cell.ForeColor = System.Drawing.Color.Red;
            e.Cell.BackColor = System.Drawing.Color.LightGray;

            // e.Cell.Font.Strikeout = true;
        }
        else
        {
            e.Cell.ForeColor = System.Drawing.Color.Black;
            e.Cell.BackColor = System.Drawing.Color.White;

        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar Calendar1 = (DetailsView1.FindControl("Calendar1") as Calendar);
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }
}