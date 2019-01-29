using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["user"].ToString();
        SearchLabel.Text = "Search";
    }
    protected void LinkButtonSignOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("SignOut.aspx");
    }
}
