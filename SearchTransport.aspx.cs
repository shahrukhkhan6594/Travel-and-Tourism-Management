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

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.QueryString["P"] == "GMP")
            this.MasterPageFile = "~/GuestMasterPage.master";
        else if (Request.QueryString["P"] == "UMP")
            this.MasterPageFile = "~/UserMasterPage.master";
        else if (Request.QueryString["P"] == "AMP")
            this.MasterPageFile = "~/AdminMasterPage.master";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
        if (Page.IsPostBack == false)
        {
            da = new SqlDataAdapter("select  T_Id,T_Type,T_Category,T_Name,To_Country,To_City,From_Country,From_City,convert(varchar,Date,106)Date,Time,Amount,Description  from Transport_Details order by T_Id DESC", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridViewTransportDetails.DataSource = dt;
                GridViewTransportDetails.DataBind();
              
            }
            else
            {
                GridViewTransportDetails.DataSource = "";
                GridViewTransportDetails.DataBind();
            }
        }
        if (Page.IsPostBack == false)
        {
            da = new SqlDataAdapter("select TransportCategory from  TransportCategory", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropdownCategory.DataSource = dt;
                DropdownCategory.DataTextField = "TransportCategory";
                DropdownCategory.DataBind();
                DropdownCategory.Items.Insert(0, "Select Transport");
                DropdownCategory.Items.Insert(dt.Rows.Count + 1, "Other Transport");
            }
        }
        if (Page.IsPostBack == false)
        {
            da = new SqlDataAdapter("select distinct CountryName from CountryCityMaster order by CountryName", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownToCountry.DataSource = dt;
                DropDownToCountry.DataTextField = "CountryName";
                DropDownToCountry.DataBind();

                DropDownToCountry.Items.Insert(0, "Select Country");
                DropDownToCountry.Items.Insert(dt.Rows.Count + 1, "Other Country");


            }
        }
        if (Page.IsPostBack == false)
        {
            da = new SqlDataAdapter("select distinct CountryName from CountryCityMaster order by CountryName", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownFromCountry.DataSource = dt;
                DropDownFromCountry.DataTextField = "CountryName";
                DropDownFromCountry.DataBind();

                DropDownFromCountry.Items.Insert(0, "Select Country");
                DropDownFromCountry.Items.Insert(dt.Rows.Count + 1, "Other Country");


            }
        }
        if (Request.QueryString["P"] == "AMP")
        {
            hiderow1.Visible = true;
            hiderow2.Visible = true;
            hiderow3.Visible = true;
            hiderow4.Visible = true;
            hiderow5.Visible = true;
            hiderow6.Visible = true;
            hiderow7.Visible = false;
            hiderow8.Visible = false;
            SubmitButton.Visible = true;
            Button1.Visible = false;
            titleLabel.Text = "Insert Transport Detail";
            GridViewTransportDetails.Visible = true;
        }
        else if (Request.QueryString["P"] == "UMP")
        {
            hiderow1.Visible = false;
            hiderow2.Visible = false;
            hiderow3.Visible = false;
            hiderow4.Visible = false;
            hiderow5.Visible = false;
            hiderow6.Visible = false;
            hiderow7.Visible = true; ;
            hiderow8.Visible = true;
            SubmitButton.Visible = false;
            Button1.Visible = true;
            titleLabel.Text = "Search Transport";
            GridViewTransportDetails.Visible = false;
        }
        else
        {
            hiderow1.Visible = false;
            hiderow2.Visible = false;
            hiderow3.Visible = false;
            hiderow4.Visible = false;
            hiderow5.Visible = false;
            hiderow6.Visible = false;
            SubmitButton.Visible = false;
            Button1.Visible = true;
            titleLabel.Text = "Search Transport";
            GridViewTransportDetails.Visible = false;
        }

    }
    protected void DropDownToCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownToCountry.SelectedIndex > 0)
        {
            da = new SqlDataAdapter("select  CityName from CountryCityMaster where CountryName='" + DropDownToCountry.SelectedItem.Text + "' order by CityName", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownToCity.DataSource = dt;
                DropDownToCity.DataTextField = "CityName";
                DropDownToCity.DataBind();

                DropDownToCity.Items.Insert(0, "Select City");
                DropDownToCity.Items.Insert(dt.Rows.Count + 1, "Other City");
            }
            else
            {
                DropDownToCity.DataSource = "";
                DropDownToCity.DataBind();

                DropDownToCity.Items.Insert(0, "Select City");
            }
        }
        else
        {
            DropDownToCity.DataSource = "";
            DropDownToCity.DataBind();

            DropDownToCity.Items.Insert(0, "Select City");
        }
    }

    protected void DropDownFromCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownFromCountry.SelectedIndex > 0)
        {
            da = new SqlDataAdapter("select  CityName from CountryCityMaster where CountryName='" + DropDownFromCountry.SelectedItem.Text + "' order by CityName", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownFromCity.DataSource = dt;
                DropDownFromCity.DataTextField = "CityName";
                DropDownFromCity.DataBind();

                DropDownFromCity.Items.Insert(0, "Select City");
                DropDownFromCity.Items.Insert(dt.Rows.Count + 1, "Other City");
            }
            else
            {
                DropDownFromCity.DataSource = "";
                DropDownFromCity.DataBind();

                DropDownFromCity.Items.Insert(0, "Select City");
            }
        }
        else
        {
            DropDownFromCity.DataSource = "";
            DropDownFromCity.DataBind();

            DropDownFromCity.Items.Insert(0, "Select City");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        gridbind();
    }
    private void gridbind()
    {
        da = new SqlDataAdapter("select * from Transport_Details where T_Category='" + DropdownCategory.SelectedItem.Text + "' and To_Country='" + DropDownToCountry.SelectedItem.Text + "' and To_City='" + DropDownToCity.SelectedItem.Text + "' and From_Country='" + DropDownFromCountry.SelectedItem.Text + "' and From_City='" + DropDownFromCity.SelectedItem.Text + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (Request.QueryString["P"] == "UMP")
            {

                GridViewTransport.DataSource = dt;
                GridViewTransport.AllowPaging = true;
                GridViewTransport.DataBind();
                GridViewTransport.Columns[0].Visible = true;
                GridViewTransportDetails.Visible = false;
                Label2.Text = "";
            }
            else if (Request.QueryString["P"] == "GMP")
            {

                GridViewTransport.DataSource = dt;
                GridViewTransport.AllowPaging = true;
                GridViewTransport.DataBind();
                GridViewTransportDetails.Visible = false ;
                Label2.Text = "";
            }
            else if (Request.QueryString["P"] == null)
            {
                GridViewTransport.DataSource = dt;
                GridViewTransport.AllowPaging = true;
                GridViewTransport.DataBind();
                GridViewTransportDetails.Visible = true;
                Label2.Text = "";
            }
        }
        else
        {
            GridViewTransport.DataSource = "";
            GridViewTransport.AllowPaging = false;
            GridViewTransport.DataBind();
            Label2.Text = "No Transport";
        }
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("insert into Transport_Details(T_Type,T_category,T_Name,To_Country,To_City,From_Country,From_City,Date,Time,Amount,Description)values('" + typeDropDownList.SelectedItem.Text + "','" + DropdownCategory.SelectedItem.Text + "','" + NameTextBox.Text + "','" + DropDownToCountry.SelectedItem.Text + "','" + DropDownToCity.SelectedItem.Text + "','" + DropDownFromCountry.SelectedItem.Text + "','" + DropDownFromCity.SelectedItem.Text + "','" + TextBox1.Text + "','" + TimeTextBox.Text + "'," + AmtTextBox.Text + ",'" + DescTextBox.Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);
        Label2.Text = "Data Sumbmit";
        TextBox1.Text = "";
        DropdownCategory.ClearSelection();
        DropDownToCountry.ClearSelection();
        DropDownToCity.ClearSelection();
        DropDownFromCountry.ClearSelection();
        DropDownFromCity.ClearSelection();
        NameTextBox.Text = "";
        typeDropDownList.ClearSelection();
        TimeTextBox.Text = "";
        AmtTextBox.Text = "";
        DescTextBox.Text = "";

        da = new SqlDataAdapter("select  T_Id,T_Type,T_Category,T_Name,To_Country,To_City,From_Country,From_City,convert(varchar,Date,106)Date,Time,Amount,Description  from Transport_Details order by T_Id DESC", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewTransportDetails.DataSource = dt;
            GridViewTransportDetails.DataBind();

        }
        else
        {
            GridViewTransportDetails.DataSource = "";
            GridViewTransportDetails.DataBind();
        }
    }
    protected void GridViewTransport_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "selecttransport")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridViewTransport.Rows[rowindex];

            Session["person"] = personTextBox.Text;
            Session["id"] = row.Cells[1].Text;
            Session["type"] = row.Cells[2].Text;
            Session["name"] = row.Cells[3].Text;
            Session["cat"] = row.Cells[4].Text;
            Session["tocoun"] = row.Cells[5].Text;
            Session["tocity"] = row.Cells[6].Text;
            Session["fromcoun"] = row.Cells[7].Text;
            Session["fromcity"] = row.Cells[8].Text;
            Session["date"] = row.Cells[11].Text;
            Session["time"] = row.Cells[9].Text;
            Session["amt"] = row.Cells[10].Text;
            Session["desc"] = row.Cells[11].Text;
            Session.Timeout = 1440;
            Response.Redirect("TransportBookingDetails.aspx");
        }
    }
    protected void GridViewTransport_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewTransport.PageIndex = e.NewPageIndex;
        gridbind();
    }
    protected void GridViewTransportDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewTransportDetails.PageIndex = e.NewPageIndex;

        da = new SqlDataAdapter("select  T_Id,T_Type,T_Category,T_Name,To_Country,To_City,From_Country,From_City,convert(varchar,Date,106)Date,Time,Amount,Description  from Transport_Details order by T_Id DESC", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewTransportDetails.DataSource = dt;
            GridViewTransportDetails.DataBind();
        }
        else
        {
            GridViewTransportDetails.DataSource = "";
            GridViewTransportDetails.DataBind();
        }

    }
    
}