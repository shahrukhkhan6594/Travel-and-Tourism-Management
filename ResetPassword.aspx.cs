using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ResetPassword : System.Web.UI.Page
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

        if (Request.QueryString["P"] == "UMP")
            this.MasterPageFile = "~/UserMasterPage.master";
        else if (Request.QueryString["P"] == "AMP")
            this.MasterPageFile = "~/AdminMasterPage.master";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == TextBox2.Text)
        {
            da = new 
                SqlDataAdapter("Select Password from Login where Password='"+TextBox3.Text+"'", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                string userid = Session["Userid"].ToString();
                da = new SqlDataAdapter("update LogIn set Password='" + TextBox1.Text + "' where UserId='" + userid + "' and Password='" + TextBox3.Text + "'", con);
                dt = new DataTable();
                da.Fill(dt);
                Label1.Text = "Password Changed";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }
            else
            {
                Label1.Text = "Old Password Does't Exist";
            }
        }
        else
        {
            Label1.Text = "Password Does't Match";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        
    }
}