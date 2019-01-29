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
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox9.Text == TextBox10.Text)
        {
            da = new SqlDataAdapter("select EmailID from Registration_Details where Emailid='" + TextBox7.Text + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Label1.Text = "Email Id already Exist";
            }
            else
            {
                da = new SqlDataAdapter("select UserID from Registration_Details where UserId='" + TextBox8.Text + "'", con);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Label1.Text = "User Id already Exist";
                    TextBox8.Text = "";
                }
                else
                {
                    da = new SqlDataAdapter("insert into Registration_Details(FirstName,LastName,Gender,DOB,Mobile,Address,EmailId,UserId)values('" + TextBox3.Text + "','" + TextBox1.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + date.Value + "'," + TextBox2.Text + ",'" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", con);
                    dt = new DataTable();
                    da.Fill(dt);
                    da = new SqlDataAdapter("insert into LogIn(UserType,UserId,Password)values('User','" + TextBox8.Text + "','" + TextBox9.Text + "')", con);
                    dt = new DataTable();
                    da.Fill(dt);                   
                    Label1.Text = "Registration Done...";
                    TextBox3.Text = "";
                    TextBox1.Text = "";
                    RadioButtonList1.ClearSelection();
                    TextBox2.Text = "";
                    TextBox6.Text = "";
                    TextBox8.Text = "";
                    date.Value = "";
                    TextBox7.Text = "";
                    Response.Redirect("signIn.aspx");
                }
            }
        }
        else
        {
            Label1.Text = "Password does't match";
        }


    }
    
}