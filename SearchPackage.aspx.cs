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
            da = new SqlDataAdapter("select * from Package_Details order by P_Id desc", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridViewPackageDetails.DataSource = dt;
                GridViewPackageDetails.DataBind();
            }
            else
            {
                GridViewPackageDetails.DataSource = "";
                GridViewPackageDetails.DataBind();
            }
        }
        if (Page.IsPostBack == false)
        {
            da = new SqlDataAdapter("select PackageCategory from  PackageCategory", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropdownCategory.DataSource = dt;
                DropdownCategory.DataTextField = "PackageCategory";
                DropdownCategory.DataBind();

                DropdownCategory.Items.Insert(0, "Select Package");
                DropdownCategory.Items.Insert(dt.Rows.Count + 1, "Other Package");
            }

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


            if (Request.QueryString["P"] == "AMP")
            {
                hiderow1.Visible = true;
                hiderow2.Visible = true;
                hiderow3.Visible = true;
                SubmitButton1.Visible = true;
                SearchButton.Visible = false;
                titleLabel.Text = "Insert Package Detail";
                GridViewPackageDetails.Visible = true;
            }
            else if (Request.QueryString["P"] == "UMP")
            {
                hiderow1.Visible = false;
                hiderow2.Visible = false;
                hiderow3.Visible = false;
                SubmitButton1.Visible = false;
                SearchButton.Visible = true;
                titleLabel.Text = "Search Package";
                GridViewPackageDetails.Visible = false;
            }
            else
            {
                hiderow1.Visible = false;
                hiderow2.Visible = false;
                hiderow3.Visible = false;
                SubmitButton1.Visible = false;
                SearchButton.Visible = true;
                titleLabel.Text = "Search Package";
                GridViewPackageDetails.Visible = false;
            }

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

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("insert into Package_Details(P_Type,P_Category,Country,City,Days,Amount,Description)values('" + DropDownListType.SelectedItem.Text + "','" + DropdownCategory.SelectedItem.Text + "','" + DropDownCountry.SelectedItem.Text + "','" + DropDownCity.SelectedItem.Text + "','" + TextBoxDays.Text + "'," + TextBoxAmount.Text + ",'" + TextBoxDesc.Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);
        Label1.Text = "Data Submit Successfully";
        DropDownCountry.ClearSelection();
        DropDownCity.ClearSelection();
        DropdownCategory.ClearSelection();
        DropDownListType.ClearSelection();
        TextBoxDays.Text = "";
        TextBoxAmount.Text = "";
        TextBoxDesc.Text = "";

        da = new SqlDataAdapter("select * from Package_Details order by P_Id desc", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewPackageDetails.DataSource = dt;
            GridViewPackageDetails.DataBind();
        }
        else
        {
            GridViewPackageDetails.DataSource = "";
            GridViewPackageDetails.DataBind();
        }
    }

    private void GridBind()
    {
        da = new SqlDataAdapter("select * from Package_Details where Country='" + DropDownCountry.SelectedItem.Text + "' and city='" + DropDownCity.SelectedItem.Text + "'and P_Category='" + DropdownCategory.SelectedItem.Text + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {

            if (Request.QueryString["P"] == "UMP")
            {

                GridViewPackage.DataSource = dt;
                GridViewPackage.AllowPaging = true;
                GridViewPackage.DataBind();
                GridViewPackage.Columns[0].Visible = true;
                Label1.Text = "";
            }
            else if (Request.QueryString["P"] == "GMP")
            {

                GridViewPackage.DataSource = dt;
                GridViewPackage.AllowPaging = true;
                GridViewPackage.DataBind();
                Label1.Text = "";
            }
            else if (Request.QueryString["P"] == null)
            {
                GridViewPackage.DataSource = dt;
                GridViewPackage.AllowPaging = true;
                GridViewPackage.DataBind();
                Label1.Text = "";
            }
        }
        else
        {
            GridViewPackage.DataSource = "";
            GridViewPackage.AllowPaging = false;
            GridViewPackage.DataBind();
            Label1.Text = "No Tour Packages";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridBind();
    }
    protected void GridViewPackage_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "SelectPackage")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridViewPackage.Rows[rowindex];

            Session["id"] = row.Cells[1].Text;
            Session["type"] = row.Cells[2].Text;
            Session["cat"] = row.Cells[3].Text;
            Session["coun"] = row.Cells[4].Text;
            Session["city"] = row.Cells[5].Text;
            Session["days"] = row.Cells[6].Text;
            Session["amt"] = row.Cells[7].Text;
            Session["desc"] = row.Cells[8].Text;
            Session.Timeout = 1440;
            Response.Redirect("PackageBookingDetails.aspx");
        }
    }

    protected void GridViewPackage_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewPackage.PageIndex = e.NewPageIndex;

        GridBind();
    }
    protected void GridViewPackageDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewPackageDetails.PageIndex = e.NewPageIndex;
        da = new SqlDataAdapter("select * from Package_Details order by P_Id desc", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewPackageDetails.DataSource = dt;
            GridViewPackageDetails.DataBind();
        }
        else
        {
            GridViewPackageDetails.DataSource = "";
            GridViewPackageDetails.DataBind();
        }
    }
}