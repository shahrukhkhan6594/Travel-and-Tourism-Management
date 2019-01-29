using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class TransportBookingAll : System.Web.UI.Page
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
        da = new SqlDataAdapter("select T_Id,T_B_Id,To_Country,To_City,From_Country,From_City,Convert(varchar,Date,106)As Date,Time,NoOfPerson,Amount,Convert(varchar,BookingDate,106) As BookingDate,Description from TransportBookingDetails where BookingDate between '" + TextBox1.Text + "' and  '" + TextBox2.Text + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewTransportBooking.DataSource = dt;
            GridViewTransportBooking.AllowPaging = true;
            GridViewTransportBooking.DataBind();
        }
        else
        {
            GridViewTransportBooking.DataSource = "";
            GridViewTransportBooking.AllowPaging = false;
            GridViewTransportBooking.DataBind();
        }
    }
    protected void GridViewTransportBooking_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
    {
        GridViewTransportBooking.PageIndex = e.NewPageIndex;
        gridbind();
    }
}