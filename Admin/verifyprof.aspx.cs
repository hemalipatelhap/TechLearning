using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_verifyprof : System.Web.UI.Page
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
                Response.Redirect("verify.aspx");
            }
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

        pid = int.Parse(Request.QueryString["id"].ToString());
        SqlCommand cmd = new SqlCommand("update tblprofessional set status=@sn where profid=@sd", con);
        cmd.Parameters.AddWithValue("@sn", "true");
        cmd.Parameters.AddWithValue("@sd", pid);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("verify.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("verify.aspx");
    }
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
        pid = int.Parse(Request.QueryString["id"].ToString());
        Response.Redirect("vimage.aspx?id=" + pid);
    }
}