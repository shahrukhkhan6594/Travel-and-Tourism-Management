using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["con"]);

        if (Page.IsPostBack == false)
        {

            da = new SqlDataAdapter("select Date,UserName,EmailId,feedback from feedback where Date=cast( getdate()as date)", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridViewfeedback.DataSource = dt;
                GridViewfeedback.AllowPaging = true;
                GridViewfeedback.DataBind();
            }
            else
            {
                GridViewfeedback.DataSource = "";
                GridViewfeedback.AllowPaging = false;
                GridViewfeedback.DataBind();
            }
        }
    }
    protected void SearchButton_Click(object sender, EventArgs e)
    {
        gridbind();
    }
    private void gridbind()
    {
        da = new SqlDataAdapter("select Date,UserName,EmailId,feedback from feedback where Date between convert(varchar,'" + TextBox2.Text + "',103) and  convert(varchar,'" + TextBox1.Text + "',102)", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewfeedback.DataSource = dt;
            GridViewfeedback.AllowPaging = true;
            GridViewfeedback.DataBind();
            Label3.Text = "";
        }
        else
        {
            GridViewfeedback.DataSource = "";
            GridViewfeedback.AllowPaging = false;
            GridViewfeedback.DataBind();
            Label3.Text = "No Feedback";
        }
    }
    protected void GridViewfeedback_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
    {
        GridViewfeedback.PageIndex = e.NewPageIndex;
        gridbind();
    }
}