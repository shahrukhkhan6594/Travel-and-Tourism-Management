using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CancelationDetails : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
        if (Page.IsPostBack == false)
        {
           
            da = new SqlDataAdapter("select * from BookingCancelationDetails where CancelationDate=cast( getdate()as date)", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridViewCancelationDetails.DataSource = dt;
                GridViewCancelationDetails.DataBind();
            }
            else
            {
                GridViewCancelationDetails.DataSource = "";
                GridViewCancelationDetails.DataBind();
            }
        }


    }
    protected void SearchButton2_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select CancelationId,UserId,BookingId,Refund,convert(varchar,CancelationDate,106)CancelationDate,Description from BookingCancelationDetails where CancelationDate between convert(varchar,'" + TextBox1.Text + "',102) and convert(varchar,'" + TextBox2.Text + "',102)", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["cancelationid"] = dt.Rows[0]["CancelationId"].ToString();
            GridViewCancelationDetails.DataSource = dt;
            GridViewCancelationDetails.DataBind();
        }
        else
        {
            GridViewCancelationDetails.DataSource = "";
            GridViewCancelationDetails.DataBind();
            Label4.Text = "Cancelation Request is not available....";
        }
    }


    protected void GridViewCancelationDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowindex = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridViewCancelationDetails.Rows[rowindex];
        Session["complainid"] = row.Cells[1].Text;
        Response.Redirect("CancelationResponse.aspx");
    }
}