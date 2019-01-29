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
        idLabel.Text = Session["id"].ToString();
        CountryLabel1.Text = Session["coun"].ToString();
        CityLabel1.Text = Session["city"].ToString();
        CatLabel.Text = Session["cat"].ToString();
        TyLabel0.Text = Session["type"].ToString();
        DayLabel1.Text = Session["days"].ToString();
        AmoutLabel.Text = Session["amt"].ToString();
        DesLabel1.Text = Session["desc"].ToString();
    }
    protected void CancelButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("DefaultUMP.aspx");
        
    }
    protected void PaymentButton_Click(object sender, EventArgs e)
    {
        string userid=Session["userid"].ToString();
        da = new SqlDataAdapter("insert into PackageBookingDetails(UserId,P_Id,PackageType,PackageCategory,Country,City,NoOfDays,Amount,Description)values('" + userid + "'," + idLabel.Text + ",'" + TyLabel0.Text + "','" + CatLabel.Text + "','" + CountryLabel1.Text + "','" + CityLabel1.Text + "','" + DayLabel1.Text + "'," + AmoutLabel.Text + ",'" + DesLabel1.Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);
        Response.Redirect("gateway.aspx");
    }
}

