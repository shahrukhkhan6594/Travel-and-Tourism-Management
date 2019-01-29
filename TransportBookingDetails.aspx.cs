using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class TransportBookingDetails : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt;
    string userid;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["con"]);

       Label1.Text= Session["id"].ToString(); 
       Label2.Text= Session["type"] .ToString();
       NameLabel1.Text=  Session["name"] .ToString();
       Label3.Text= Session["cat"] .ToString();
        personLabel0.Text=Session["person"].ToString();
       tocounLabel.Text= Session["tocoun"] .ToString();
       tocityLabel.Text= Session["tocity"] .ToString();
       CountryLabel1.Text= Session["fromcoun"] .ToString();
       CityLabel2.Text= Session["fromcity"].ToString(); 
       dateLabel.Text= Session["date"] .ToString();
       timeLabel.Text= Session["time"] .ToString();
       AmoutLabel.Text= Session["amt"] .ToString();
       DesLabel2.Text = Session["desc"].ToString();
    }
    protected void PaymentButton_Click(object sender, EventArgs e)
    {
        userid = Session["userid"].ToString();
        da = new SqlDataAdapter("insert into TransportBookingDetails(UserId,T_Id,To_Country,To_City,From_Country,From_City,Date,Time,NoOfPerson,Amount,Description)values('" + userid + "'," + Label1.Text + ",'" + tocounLabel.Text + "','" + tocityLabel.Text + "','" + CountryLabel1.Text + "','" + CityLabel2.Text + "','" + dateLabel.Text + "','" + timeLabel.Text + "'," + personLabel0.Text + "," + AmoutLabel.Text + ",'" + DesLabel2.Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);

        Response.Redirect("gateway.aspx");
    }
    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("DefaultUMP.aspx");
    }
}