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
    protected void Button1_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select UserID,Mobile from Registration_Details where UserId='"+TextBox1.Text+"' and Mobile="+TextBox2.Text+"", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["userid"] = dt.Rows[0]["UserID"].ToString();
            Session.Timeout = 1440;
            Response.Redirect("ForgotOTP.aspx");
        }
        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label1.Text = "Invalid User Id or Mobile Number";
        }
    }
}