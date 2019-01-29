using System;


public partial class GuestMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SearchLabel.Text = "Search";
    }
}
