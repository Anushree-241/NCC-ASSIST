using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

public partial class NCC_editparade : System.Web.UI.Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        con = new SqlConnection(strcon);
        Calendar Calendar1 = (DetailsView1.FindControl("Calendar1") as Calendar);

        
        //if (!IsPostBack)
        //{
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

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Calendar Calendar1 = (DetailsView1.FindControl("Calendar1") as Calendar);
        TextBox TextBox1 = (DetailsView1.FindControl("TextBox1") as TextBox);
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }


    
}