using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    }
    protected void SearchButton_Click(object sender, EventArgs e)
    {
        gridbind();
    }
    private void gridbind()
    {
        da = new SqlDataAdapter("select HR_Id,HR_B_Id,NumberOfPerson,Convert(varchar,CheckInDate,106) As CheckInDate,Convert(varchar,CheckOutDate,106) As CheckOutDate,Amount,Convert(varchar,BookingDate,106)As BookingDate,Description from HomestayResortBookingDetails where BookingDate between '" + TextBox1.Text + "' and  '" + TextBox2.Text + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewHomestayBooking.DataSource = dt;
            GridViewHomestayBooking.AllowPaging = true;
            GridViewHomestayBooking.DataBind();
        }
        else
        {
            GridViewHomestayBooking.DataSource = "";
            GridViewHomestayBooking.AllowPaging = false;
            GridViewHomestayBooking.DataBind();
        }
    }
    protected void GridViewHomestayBooking_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
    {
        GridViewHomestayBooking.PageIndex = e.NewPageIndex;
        gridbind();
    }
}