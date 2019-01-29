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
        con = new SqlConnection(ConfigurationManager.AppSettings["con"]);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string complainid = Session["complainid"].ToString();
        da = new SqlDataAdapter("update BookingCancelationDetails set Refund='" + TextBox1.Text + "', Description='" + TextBox2.Text + "' where CancelationId='"+complainid+"'", con);
        dt = new DataTable();
        da.Fill(dt);
        Label3.Text = "Refund and Description summitted has been successfully...!";
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}