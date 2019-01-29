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
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.QueryString["P"] == "GMP")
            this.MasterPageFile = "~/GuestMasterPage.master";
        else if (Request.QueryString["P"] == "UMP")
            this.MasterPageFile = "~/UserMasterPage.master";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Request.QueryString["P"] == "UMP")
        {
            string emailid = Session["email"].ToString();
            da = new SqlDataAdapter("insert into feedback(UserName,EmailId,Feedback)values('" + TextBoxName.Text + "','" + emailid + "','" + TextBoxFeedback.Text + "')", con);
            dt = new DataTable();
            da.Fill(dt);
            TextBoxName.Text = "";

            TextBoxFeedback.Text = "";
            Label1.Text = "Submit Feedback";
        }
        else
        {
            Response.Redirect("SignIn.aspx");
        }
    }

}