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
        if (TextBox1.Text == TextBox2.Text)
        {
            string user = Session["userid"].ToString();
            da = new SqlDataAdapter("update LogIn set Password='" + TextBox1.Text + "' where UserId='"+user+"'", con);
            dt = new DataTable();
            da.Fill(dt);
            Response.Redirect("SignIn.aspx");
            Session.Abandon();
        }
        else
        {
            Label1.Text = "Password does't Match";
        }
    }
}