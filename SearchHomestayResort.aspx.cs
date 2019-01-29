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
            da = new SqlDataAdapter("select * from [Homestay-Resort_Details] order by HR_ID desc", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridViewHomestayDetails.DataSource = dt;
                GridViewHomestayDetails.DataBind();
            }
            else
            {
                GridViewHomestayDetails.DataSource = "";
                GridViewHomestayDetails.DataBind();
            }

        }
        if (Page.IsPostBack == false)
        {
            da = new SqlDataAdapter("select distinct CountryName from CountryCityMaster order by CountryName", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownCountry.DataSource = dt;
                DropDownCountry.DataTextField = "CountryName";
                DropDownCountry.DataBind();

                DropDownCountry.Items.Insert(0, "Select Country");
                DropDownCountry.Items.Insert(dt.Rows.Count + 1, "Other Country");


            }
        }
        if (Page.IsPostBack == false)
        {
            da = new SqlDataAdapter("select  HomestayResortCotegory from  HomestayResortCategory", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropdownCategory.DataSource = dt;
                DropdownCategory.DataTextField = "HomestayResortCotegory";
                DropdownCategory.DataBind();

                DropdownCategory.Items.Insert(0, "Select Homestay and Resort");
                DropdownCategory.Items.Insert(dt.Rows.Count + 1, "Other Homestay and Resort");
            }
        }
        if (Request.QueryString["P"] == "AMP")
        {
            hiderow1.Visible = true;
            hiderow2.Visible = true;
            hiderow3.Visible = true;
            hiderow4.Visible = true;
            hiderow6.Visible = false;
            SubmitButton.Visible = true;
            Button1.Visible = false;
            titleLabel.Text = "Insert HomeStay and Resort Detail";
            GridViewHomestayDetails.Visible = true;
        }
        else if (Request.QueryString["P"] == "UMP")
        {
            hiderow1.Visible = false;
            hiderow2.Visible = false;
            hiderow3.Visible = false;
            hiderow4.Visible = false;
            hiderow6.Visible = true;
            SubmitButton.Visible = false;
            Button1.Visible = true;
            titleLabel.Text = "Search HomeStay and Resort";
            GridViewHomestayDetails.Visible = false;
        }
        else
        {
            hiderow1.Visible = false;
            hiderow2.Visible = false;
            hiderow3.Visible = false;
            hiderow4.Visible = false;
            hiderow6.Visible = true;
            SubmitButton.Visible = false;
            Button1.Visible = true;
            titleLabel.Text = "Search HomeStay and Resort";
            GridViewHomestayDetails.Visible = false;
        }
    }
    protected void DropDownCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownCountry.SelectedIndex > 0)
        {
            da = new SqlDataAdapter("select  CityName from CountryCityMaster where CountryName='" + DropDownCountry.SelectedItem.Text + "' order by CityName", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownCity.DataSource = dt;
                DropDownCity.DataTextField = "CityName";
                DropDownCity.DataBind();

                DropDownCity.Items.Insert(0, "Select City");
                DropDownCity.Items.Insert(dt.Rows.Count + 1, "Other City");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        gridbind();
    }
    private void gridbind()
    {
        da = new SqlDataAdapter("select * from [Homestay-Resort_Details] where HR_Country='" + DropDownCountry.SelectedItem.Text + "' and HR_City='" + DropDownCity.SelectedItem.Text + "' and HR_Category='" + DropdownCategory.SelectedItem.Text + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (Request.QueryString["P"] == "UMP")
            {

                GridViewHomestay.DataSource = dt;
                GridViewHomestay.AllowPaging = true;
                GridViewHomestay.DataBind();
                GridViewHomestay.Columns[0].Visible = true;
                CmtLabel.Text = "";
            }
            else if (Request.QueryString["P"] == "GMP")
            {

                GridViewHomestay.DataSource = dt;
                GridViewHomestay.AllowPaging = true;
                GridViewHomestay.DataBind();
                CmtLabel.Text = "";
            }
            else if (Request.QueryString["P"] == null)
            {
                GridViewHomestay.DataSource = dt;
                GridViewHomestay.AllowPaging = true;
                GridViewHomestay.DataBind();
                CmtLabel.Text = "";
            }
        }
        else
        {
            GridViewHomestay.DataSource = "";
            GridViewHomestay.AllowPaging = false;
            GridViewHomestay.DataBind();
            CmtLabel.Text = "No Homestay and Resort";
        }
    }
    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("insert into [Homestay-Resort_Details](HR_Type,HR_Stars,HR_Category,HR_Name,HR_Country,HR_City,Amount,Description)values('" + DropDownListType.SelectedItem.Text + "','" + NameDropDownList.SelectedItem.Text + "','" + DropdownCategory.SelectedItem.Text + "','" + NameTextBox.Text + "','" + DropDownCountry.SelectedItem.Text + "','" + DropDownCity.SelectedItem.Text + "'," + TextBoxAmount.Text + ",'" + DescTextBox.Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);
        CmtLabel.Text = "Data Submit";
        DropDownListType.ClearSelection();
        NameDropDownList.ClearSelection();
        DropdownCategory.ClearSelection();
        NameTextBox.Text = "";
        DropDownCountry.ClearSelection();
        DropDownCity.ClearSelection();
        TextBoxAmount.Text = "";
        DescTextBox.Text = "";
        CmtLabel.Text = "Data Submit";


        da = new SqlDataAdapter("select * from [Homestay-Resort_Details] order by HR_ID desc", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewHomestayDetails.DataSource = dt;
            GridViewHomestayDetails.DataBind();
        }
        else
        {
            GridViewHomestayDetails.DataSource = "";
            GridViewHomestayDetails.DataBind();
        }

    }

    protected void GridViewHomestay_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "selectresort")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridViewHomestay.Rows[rowindex];
            Session["checkin"] = ChechkInTextBox.Text;
            Session["checkout"] = CheckOutTextBox.Text;
            Session["person"] = personTextBox.Text;
            Session["id"] = row.Cells[1].Text;
            Session["type"] = row.Cells[2].Text;
            Session["star"] = row.Cells[3].Text;
            Session["Name"] = row.Cells[4].Text;
            Session["cat"] = row.Cells[5].Text;
            Session["coun"] = row.Cells[6].Text;
            Session["city"] = row.Cells[7].Text;
            Session["amt"] = row.Cells[8].Text;
            Session["desc"] = row.Cells[9].Text;
            Session.Timeout = 1440;
            Response.Redirect("HomestayBookingDetails.aspx");
        }
    }
    protected void GridViewHomestay_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewHomestay.PageIndex = e.NewPageIndex;
        gridbind();
    }
    protected void GridViewHomestayDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewHomestayDetails.PageIndex = e.NewPageIndex;
        da = new SqlDataAdapter("select * from [Homestay-Resort_Details] order by HR_ID desc", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewHomestayDetails.DataSource = dt;
            GridViewHomestayDetails.DataBind();
        }
        else
        {
            GridViewHomestayDetails.DataSource = "";
            GridViewHomestayDetails.DataBind();
        }

    }
}