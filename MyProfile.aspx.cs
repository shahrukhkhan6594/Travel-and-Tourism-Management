using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataTable dt;
    string fname;
    string lname;
    string user;
    string dob;
    string mob;
    string address;
    protected void Page_PreInit(object sender, EventArgs e)
    {

        if (Request.QueryString["P"] == "UMP")
            this.MasterPageFile = "~/UserMasterPage.master";
        else if (Request.QueryString["P"] == "AMP")
            this.MasterPageFile = "~/AdminMasterPage.master";

    }


    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection(ConfigurationManager.AppSettings["con"]);

        user = Session["Userid"].ToString();
        da = new SqlDataAdapter("select FirstName,LastName,Gender,convert(varchar,DOB,106)As DOB,Mobile,Address,EmailID from Registration_Details where UserID='" + user + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            fname = dt.Rows[0]["FirstName"].ToString();
            lname = dt.Rows[0]["LastName"].ToString();
            dob = dt.Rows[0]["DOB"].ToString();
            mob = dt.Rows[0]["Mobile"].ToString();
            address = dt.Rows[0]["Address"].ToString();
            Label3.Text = fname + ' ' + lname;
            Label5.Text = dt.Rows[0]["Gender"].ToString();
            Label6.Text = dob;
            Label7.Text = mob;
            Label8.Text = address;
            Label9.Text = dt.Rows[0]["EmailID"].ToString();

        }
        TextBox1.Visible = false;
        
        TextBox4.Visible = false;
        TextBox5.Visible = false;
        UpdatenameButton.Visible = false;
        
        UpdateMobileButton.Visible = false;
        UpdateEmailButton.Visible = false;

    }

    protected void LinkButtonName_Click(object sender, EventArgs e)
    {
        TextBox1.Visible = true;
        TextBox1.Text = Label3.Text;
        UpdatenameButton.Visible = true;
    }
   
    protected void LinkButtonMOB_Click(object sender, EventArgs e)
    {
        TextBox4.Visible = true;
        TextBox4.Text = Label7.Text;
        UpdateMobileButton.Visible = true;
    }
    protected void LinkButtonAddress_Click(object sender, EventArgs e)
    {
        TextBox5.Visible = true;
        TextBox5.Text = Label8.Text;
        UpdateEmailButton.Visible = true;
    }


    protected void UpdatenameButton_Click(object sender, EventArgs e)
    {

        string [] name=TextBox1.Text.Split(' ');
        if(name[1]==null )
        {
            da = new SqlDataAdapter("update Registration_Details set FirstName='"+name[0]+"' where FirstName='"+fname+"' and LastName='"+lname+"' and UserID='"+user+"'", con);
            dt = new DataTable();
            da.Fill(dt);
            Label3.Text = TextBox1.Text;
            Label10.Text = "";
        }
        else if (name[1] != null)
        {
            da = new SqlDataAdapter("update Registration_Details set FirstName='" + name[0] + "',LastName='" + name[1] + "' where FirstName='" + fname + "' and LastName='" + lname + "' and UserID='" + user + "'", con);
            dt = new DataTable();
            da.Fill(dt);
            Label3.Text = TextBox1.Text;
            Label10.Text = "";
        }
        else if (name[2] != null)
        {
            Label10.Text = "insert  Correct name";
        }
        
    }


   
    protected void UpdateMobileButton_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("update Registration_Details set Mobile='" + TextBox4.Text + "' where Mobile='" + mob + "' and UserID='" + user + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        Label7.Text = TextBox4.Text;
    }
    protected void UpdateEmailButton_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("update Registration_Details set Address='" + TextBox5.Text + "' where Address='" + address + "' and UserID='" + user + "'", con);
        dt = new DataTable();
        da.Fill(dt);
        Label8.Text = TextBox5.Text;
    }
}
