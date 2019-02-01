using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Professional_ubook : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    int bid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["prof"] == null)
            {
                Response.Redirect("~\\Login.aspx");
            }
            if (Request.QueryString["id"] != null)
            {
                bid = int.Parse(Request.QueryString["id"].ToString());
                filldetails();
            }
            else
            {
                Response.Redirect("mbook.aspx");
            }
        }
    }
    private void filldetails()
    {
        bid = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblbook where bookid='" + bid + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();
        int t;
        t = int.Parse(ds.Tables[0].Rows[0][1].ToString());
        filldrop(t);
    }

    private void filldrop(int tid)
    {
        DropDownList DropDownList1 = (DropDownList)DetailsView1.FindControl("DropDownList1");
        SqlDataAdapter da = new SqlDataAdapter("select * from tbltechnology", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "techname";
        DropDownList1.DataValueField = "techid";
        DropDownList1.SelectedValue = tid.ToString();
        DropDownList1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bid = int.Parse(Request.QueryString["id"].ToString());
        DropDownList DropDownList1 = (DropDownList)DetailsView1.FindControl("DropDownList1");
        TextBox bkname = (TextBox)DetailsView1.FindControl("TextBox2");
        TextBox author = (TextBox)DetailsView1.FindControl("TextBox3");
        TextBox publisher = (TextBox)DetailsView1.FindControl("TextBox4");
        TextBox price = (TextBox)DetailsView1.FindControl("TextBox5");
        SqlCommand cmd = new SqlCommand("update tblbook set techid=@ti,bookname=@bn,author=@au,publisher=@pb,price=@pr where bookid=@bid", con);
        cmd.Parameters.AddWithValue("@ti", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@bn", bkname.Text);
        cmd.Parameters.AddWithValue("@au", author.Text);
        cmd.Parameters.AddWithValue("@pb", publisher.Text);
        cmd.Parameters.AddWithValue("@pr", price.Text);
        cmd.Parameters.AddWithValue("@bid", bid);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        filldetails();
        Response.Redirect("mbook.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mbook.aspx");
    }

}