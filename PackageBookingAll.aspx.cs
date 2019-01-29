using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PackageBookingAll : System.Web.UI.Page
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
        da = new SqlDataAdapter("select P_Id,P_B_Id,PackageType,PackageCategory,Country,City,NoOfDays,Amount,Convert(varchar,BookingDate,106) As BookingDate,Description from PackageBookingDetails  where BookingDate between '" + TextBox1.Text + "' and  '" + TextBox2.Text + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewPackageBooking.DataSource = dt;
            GridViewPackageBooking.AllowPaging = true;
            GridViewPackageBooking.DataBind();
            Label4.Text="";
        }
        else
        {
            GridViewPackageBooking.DataSource = "";
            GridViewPackageBooking.AllowPaging = false;
            GridViewPackageBooking.DataBind();
            Label4.Text = "Bookings Is not Available";
        }
    }
    protected void GridViewPackageBooking_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
    {
        GridViewPackageBooking.PageIndex = e.NewPageIndex;
        gridbind();
    }
}