using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = Session["Userid"].ToString();
        con = new SqlConnection(ConfigurationManager.AppSettings["con"]);

        da = new SqlDataAdapter("select P_Id,P_B_Id,PackageType,PackageCategory,Country,City,NoOfDays,Amount,Convert(varchar,BookingDate,106) As BookingDate,Description from PackageBookingDetails where UserId='" + userid + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewPackageBooking.DataSource = dt;
            GridViewTransportBooking.AllowPaging = true;
            GridViewPackageBooking.DataBind();

        }
        else
        {
            GridViewPackageBooking.DataSource = "";
            GridViewTransportBooking.AllowPaging = false;
            GridViewPackageBooking.DataBind();


            da = new SqlDataAdapter("select T_Id,T_B_Id,To_Country,To_City,From_Country,From_City,Convert(varchar,Date,106)As Date,Time,NoOfPerson,Amount,Convert(varchar,BookingDate,106) As BookingDate,Description from TransportBookingDetails where UserId='" + userid + "'", con);
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
            da = new SqlDataAdapter("select H_Id,H_B_Id,Room_Category,NoOfPerson,Convert(varchar,CheckInDate,106) As CheckInDate,Convert(varchar,CheckOutDate,106) As CheckOutDate,Amount,Convert(varchar,BookingDate,106)As BookingDate,Description from HotelBookingDetails  where UserId='" + userid + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridViewHotelBooking.DataSource = dt;
                GridViewTransportBooking.AllowPaging = true;
                GridViewHotelBooking.DataBind();

            }
            else
            {
                GridViewHotelBooking.DataSource = "";
                GridViewTransportBooking.AllowPaging = false;
                GridViewHotelBooking.DataBind();

            }

            da = new SqlDataAdapter("select HR_Id,HR_B_Id,NumberOfPerson,Convert(varchar,CheckInDate,106) As CheckInDate,Convert(varchar,CheckOutDate,106) As CheckOutDate,Amount,Convert(varchar,BookingDate,106)As BookingDate,Description from HomestayResortBookingDetails where UserId='" + userid + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridViewHomestayBooking.DataSource = dt;
                GridViewTransportBooking.AllowPaging = true;
                GridViewHomestayBooking.DataBind();

            }
            else
            {
                GridViewHomestayBooking.DataSource = "";
                GridViewTransportBooking.AllowPaging = false;
                GridViewHomestayBooking.DataBind();


            }

        }
    }

    protected void GridViewPackageBooking_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowindex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridViewPackageBooking.Rows[rowindex];
        string user = Session["Userid"].ToString();
        da = new SqlDataAdapter("insert into BookingCancelationDetails(UserId,BookingId)values('" + user + "','" + row.Cells[2].Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);
        
        
    }
    protected void GridViewTransportBooking_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowindex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridViewTransportBooking.Rows[rowindex];
        string user = Session["Userid"].ToString();
        da = new SqlDataAdapter("insert into BookingCancelationDetails(UserId,BookingId)values('" + user + "','" + row.Cells[2].Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);
    }
    protected void GridViewHotelBooking_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowindex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridViewHotelBooking.Rows[rowindex];
        string user = Session["Userid"].ToString();
        da = new SqlDataAdapter("insert into BookingCancelationDetails(UserId,BookingId)values('" + user + "','" + row.Cells[2].Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);
    }
    protected void GridViewHomestayBooking_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowindex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridViewHomestayBooking.Rows[rowindex];
        string user = Session["Userid"].ToString();
        da = new SqlDataAdapter("insert into BookingCancelationDetails(UserId,BookingId)values('" + user + "','" + row.Cells[2].Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);
    }
}