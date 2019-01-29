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
            da = new SqlDataAdapter("select * from Hotel_Details order by H_Id desc", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridViewHotelDetails.DataSource = dt;
                GridViewHotelDetails.DataBind();
            }
            else
            {
                GridViewHotelDetails.DataSource = "";
                GridViewHotelDetails.DataBind();
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
            da = new SqlDataAdapter("select RoomCategory from  RoomCategory", con);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropdownCategory.DataSource = dt;
                DropdownCategory.DataTextField = "RoomCategory";
                DropdownCategory.DataBind();

                DropdownCategory.Items.Insert(0, "Select Room");
                DropdownCategory.Items.Insert(dt.Rows.Count + 1, "Other Room");
            }
        }
        if (Request.QueryString["P"] == "AMP")
        {
            hiderow6.Visible = false;
            hiderow1.Visible = true;
            hiderow2.Visible = true;
            hiderow3.Visible = true;
            hiderow4.Visible = true;
            SubmitButton.Visible = true;
            Button1.Visible = false;
            titleLabel.Text = "Insert Hotel Detail";
            GridViewHotelDetails.Visible = true;
        }
        else if (Request.QueryString["P"] == "UMP")
        {
            hiderow6.Visible = true;
            hiderow1.Visible = false;
            hiderow2.Visible = false;
            hiderow3.Visible = false;
            hiderow4.Visible = false;
            SubmitButton.Visible = false;
            Button1.Visible = true;
            titleLabel.Text = "Search Hotel";
            GridViewHotelDetails.Visible = false;
        }
        else
        {
            hiderow6.Visible = true;
            hiderow1.Visible = false;
            hiderow2.Visible = false;
            hiderow3.Visible = false;
            hiderow4.Visible = false;
            SubmitButton.Visible = false;
            Button1.Visible = true;
            titleLabel.Text = "Search Hotel";
            GridViewHotelDetails.Visible = false;
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
        da = new SqlDataAdapter("insert into Hotel_Details(H_Type,H_Stars,H_Name,H_Country,Room_Category,H_City,Amount,Description)values('" + typeDropDownList.SelectedItem.Text + "','" + StarDropDownList.SelectedItem.Text + "','" + NameTextBox.Text + "','" + DropDownCountry.SelectedItem.Text + "','" + DropdownCategory.SelectedItem.Text + "','" + DropDownCity.SelectedItem.Text + "'," + AmtTextBox.Text + ",'" + DescTextBox.Text + "')", con);
        dt = new DataTable();
        da.Fill(dt);
        cmtLabel.Text = "Data Submit";
        typeDropDownList.ClearSelection();
        StarDropDownList.ClearSelection();
        NameTextBox.Text = "";
        DropDownCountry.ClearSelection();
        DropdownCategory.ClearSelection();
        DropDownCity.ClearSelection();
        AmtTextBox.Text = "";
        DescTextBox.Text = "";

        da = new SqlDataAdapter("select * from Hotel_Details order by H_Id desc", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewHotelDetails.DataSource = dt;
            GridViewHotelDetails.DataBind();
        }
        else
        {
            GridViewHotelDetails.DataSource = "";
            GridViewHotelDetails.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        gridbind();
    }
    private void gridbind()
    {
        da = new SqlDataAdapter("select * from Hotel_Details where H_Country='" + DropDownCountry.SelectedItem.Text + "' and H_City='" + DropDownCity.SelectedItem.Text + "' and Room_Category='" + DropdownCategory.SelectedItem.Text + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            if (Request.QueryString["P"] == "UMP")
            {

                GridViewHotel.DataSource = dt;
                GridViewHotel.AllowPaging = true;
                GridViewHotel.DataBind();
                GridViewHotel.Columns[0].Visible = true;
                cmtLabel.Text = "";
            }
            else if (Request.QueryString["P"] == "GMP")
            {

                GridViewHotel.DataSource = dt;
                GridViewHotel.AllowPaging = true;
                GridViewHotel.DataBind();
                cmtLabel.Text = "";
            }
            else if (Request.QueryString["P"] == null)
            {
                GridViewHotel.DataSource = dt;
                GridViewHotel.AllowPaging = true;
                GridViewHotel.DataBind();
                cmtLabel.Text = "";
            }
        }
        else
        {
            GridViewHotel.DataSource = "";
            GridViewHotel.AllowPaging = false;
            GridViewHotel.DataBind();
            cmtLabel.Text = "No Hotel Available ";
        }
    }
    protected void GridViewHotel_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "selecthotel")
        {
            int rowindex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridViewHotel.Rows[rowindex];

            Session["id"] = row.Cells[1].Text;
            Session["type"] = row.Cells[2].Text;
            Session["star"] = row.Cells[3].Text;
            Session["Name"] = row.Cells[4].Text;
            Session["cat"] = row.Cells[5].Text;
            Session["coun"] = row.Cells[6].Text;
            Session["city"] = row.Cells[7].Text;
            Session["amt"] = row.Cells[8].Text;
            Session["desc"] = row.Cells[9].Text;
            Session["checkin"] = ChechkInTextBox.Text;
            Session["checkout"] = CheckOutTextBox.Text;
            Session["person"] = personTextBox.Text;
            Session.Timeout = 1440;
            Response.Redirect("HotelBookingDetails.aspx");
        }


    }


    protected void GridViewHotel_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewHotel.PageIndex = e.NewPageIndex;
        gridbind();
    }
    protected void GridViewHotelDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridViewHotelDetails.PageIndex = e.NewPageIndex;
        da = new SqlDataAdapter("select * from Hotel_Details order by H_Id desc", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridViewHotelDetails.DataSource = dt;
            GridViewHotelDetails.DataBind();
        }
        else
        {
            GridViewHotelDetails.DataSource = "";
            GridViewHotelDetails.DataBind();
        }

    }
}