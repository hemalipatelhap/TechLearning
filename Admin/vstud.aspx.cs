using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_vstud : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    int sid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                sid = int.Parse(Request.QueryString["id"].ToString());
                filldetails();
            }
            else
            {
                Response.Redirect("mstud.aspx");
            }
        }
        sid = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da4 = new SqlDataAdapter("select status from tblstudent where studentid='" + sid + "'", con);
        DataSet ds4 = new DataSet();
        da4.Fill(ds4);
        string result;
        result = ds4.Tables[0].Rows[0][0].ToString();
        Button bn = (Button)DetailsView1.FindControl("Button1");
        if (result == "True")
        {
            bn.Text = "Block";
        }
        else
        {
            bn.Text = "Unblock";
        }
    }
    private void filldetails()
    {
        sid = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblstudent where studentid='" + sid + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button bn = (Button)DetailsView1.FindControl("Button1");
        if (bn.Text == "Block")
        {
            sid = int.Parse(Request.QueryString["id"].ToString());
            SqlCommand cmd = new SqlCommand("update tblstudent set status=@sn where studentid=@sd", con);
            cmd.Parameters.AddWithValue("@sn", "false");
            cmd.Parameters.AddWithValue("@sd", sid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            bn.Text = "UnBlock";
        }
        else
        {
            sid = int.Parse(Request.QueryString["id"].ToString());
            SqlCommand cmd = new SqlCommand("update tblstudent set status=@sn where studentid=@sd", con);
            cmd.Parameters.AddWithValue("@sn", "true");
            cmd.Parameters.AddWithValue("@sd", sid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            bn.Text = "Block";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mstud.aspx");
    }
}