using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_vprof : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    int pid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                pid = int.Parse(Request.QueryString["id"].ToString());
                filldetails();
            }
            else
            {
                Response.Redirect("mprof.aspx");
            }
        }
        pid = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da4 = new SqlDataAdapter("select status from tblprofessional where profid='" + pid + "'", con);
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
        pid = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblprofessional where profid='" + pid + "'", con);
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
            pid = int.Parse(Request.QueryString["id"].ToString());
            SqlCommand cmd = new SqlCommand("update tblprofessional set status=@sn where profid=@sd", con);
            cmd.Parameters.AddWithValue("@sn", "false");
            cmd.Parameters.AddWithValue("@sd", pid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            bn.Text = "UnBlock";
        }
        else
        {
            pid = int.Parse(Request.QueryString["id"].ToString());
            SqlCommand cmd = new SqlCommand("update tblprofessional set status=@sn where profid=@sd", con);
            cmd.Parameters.AddWithValue("@sn", "true");
            cmd.Parameters.AddWithValue("@sd", pid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            bn.Text = "Block";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mprof.aspx");
    }
}