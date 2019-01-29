using System;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.QueryString["P"] == "GMP")
            this.MasterPageFile = "~/GuestMasterPage.master";
        else if (Request.QueryString["P"] == "UMP")
            this.MasterPageFile = "~/UserMasterPage.master";
        else if (Request.QueryString["P"] == "AMP")
            this.MasterPageFile = "~/AdminMasterPage.master";

    }
}