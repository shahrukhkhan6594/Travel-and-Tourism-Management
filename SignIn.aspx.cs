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
        Label1.Text = "";
        con = new SqlConnection(ConfigurationManager.AppSettings["con"]);


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HiddenFieldPwd.Value = TextBox2.Text;

        da = new SqlDataAdapter("select * from LogIn where  UserId='" + TextBox1.Text + "' and Password='" + HiddenFieldPwd.Value + "'", con);
        dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {

            string UT = dt.Rows[0]["UserType"].ToString();

            if (UT == "User")
            {
                HiddenFieldPwd.Value = "";
                da = new SqlDataAdapter("select * from Registration_Details where  UserId='" + TextBox1.Text + "'", con);
                dt = new DataTable();
                da.Fill(dt);
                string fname = dt.Rows[0]["FirstName"].ToString();
                string gender = dt.Rows[0]["Gender"].ToString();
                Session["Userid"] = dt.Rows[0]["UserID"].ToString();
                Session["email"] = dt.Rows[0]["EmailID"].ToString();


                if (gender == "Female")
                {
                    Session["user"] = "Ms." + ' ' + fname;

                }
                else
                {
                    Session["user"] = "Mr." + ' ' + fname;

                }

                Response.Redirect("DefaultUMP.aspx");
            }
            else
            {
                da = new SqlDataAdapter("select * from Registration_Details where  UserId='" + TextBox1.Text + "'", con);
                dt = new DataTable();
                da.Fill(dt);
                string fname = dt.Rows[0]["FirstName"].ToString();
                string gender = dt.Rows[0]["Gender"].ToString();
                Session["Userid"] = dt.Rows[0]["UserID"].ToString();

                if (gender == "Female")
                {
                    Session["user"] = "Ms." + ' ' + fname;

                }
                else
                {
                    Session["user"] = "Mr." + ' ' + fname;

                }
                Response.Redirect("DefaultAMP.aspx");
            }

        }
        else
        {
            Label1.Text = "UserId and Password does't Exist";

            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        Session.Timeout = 1440;

    }
}