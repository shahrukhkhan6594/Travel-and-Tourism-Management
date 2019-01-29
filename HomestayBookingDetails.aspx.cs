using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt;
    string userid;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
        userid = Session["userid"].ToString();
        checkinLabel.Text = Session["checkin"].ToString();
        checkoutLabel.Text = Session["checkout"].ToString();
        personLabel.Text = Session["person"].ToString();
        Label1.Text = Session["id"].ToString();
        Label2.Text = Session["type"].ToString();
        Label3.Text = Session["cat"].ToString();
        StarLabel.Text = Session["star"].ToString();
        CountryLabel1.Text = Session["coun"].ToString();
        CityLabel2.Text = Session["city"].ToString();
        NameLabel1.Text = Session["Name"].ToString();
        AmoutLabel.Text = Session["amt"].ToString();
        DesLabel2.Text = Session["desc"].ToString();



    }
    protected void PaymentButton_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("insert into HomestayResortBookingDetails(UserId,HR_Id,NumberOfperson,CheckInDate,CheckOutDate,Amount,Description)values('" + userid + "','" + Label1.Text + "'," + personLabel.Text + ",'" + checkinLabel.Text + "','" + checkoutLabel.Text + "'," + AmoutLabel.Text + ",'" + DesLabel2.Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);
        Response.Redirect("gateway.aspx");
    }
    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("DefaultUMP.aspx");
    }
}