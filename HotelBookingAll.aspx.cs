using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class HotelBookingAll : System.Web.UI.Page
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
        da = new SqlDataAdapter("select H_Id,H_B_Id,Room_Category,NoOfPerson,Convert(varchar,CheckInDate,106) As CheckInDate,Convert(varchar,CheckOutDate,106) As CheckOutDate,Amount,Convert(varchar,BookingDate,106)As BookingDate,Description from HotelBookingDetails where BookingDate between '" + TextBox1.Text + "' and  '" + TextBox2.Text + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewHotelBooking.DataSource = dt;
            GridViewHotelBooking.AllowPaging = true;
            GridViewHotelBooking.DataBind();
        }
        else
        {
            GridViewHotelBooking.DataSource = "";
            GridViewHotelBooking.AllowPaging = false;
            GridViewHotelBooking.DataBind();
        }
    }

    protected void GridViewHotelBooking_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
    {
        GridViewHotelBooking.PageIndex = e.NewPageIndex;
        gridbind();
    }
}