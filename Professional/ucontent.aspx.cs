using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Professional_ucontent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    int cid;
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
                cid = int.Parse(Request.QueryString["id"].ToString());
                filldetails();
            }
            else
            {
                Response.Redirect("mcontent.aspx");
            }
        }
    }
    private void filldetails()
    {
        cid = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblcontent where contentid='" + cid + "'", con);
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
        cid = int.Parse(Request.QueryString["id"].ToString());
        DropDownList DropDownList1 = (DropDownList)DetailsView1.FindControl("DropDownList1");
        TextBox conname = (TextBox)DetailsView1.FindControl("TextBox2");
        TextBox des = (TextBox)DetailsView1.FindControl("TextBox3");
        TextBox longdes = (TextBox)DetailsView1.FindControl("TextBox4");
        TextBox otdes = (TextBox)DetailsView1.FindControl("TextBox5");
        SqlCommand cmd = new SqlCommand("update tblcontent set techid=@ti,contentname=@cn,description=@de,longdesc=@ld,otehrdesc=@od where contentid=@cid", con);
        cmd.Parameters.AddWithValue("@ti", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@cn", conname.Text);
        cmd.Parameters.AddWithValue("@de", des.Text);
        cmd.Parameters.AddWithValue("@ld", longdes.Text);
        cmd.Parameters.AddWithValue("@od", otdes.Text);
        cmd.Parameters.AddWithValue("@cid", cid);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        filldetails();
        lblmsg.Text = "Updated...";
        Response.Redirect("mcontent.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mcontent.aspx");
    }

}