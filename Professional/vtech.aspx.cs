using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Professional_vtech : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    int tid;
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
                tid = int.Parse(Request.QueryString["id"].ToString());
                filldetails();
            }
            else
            {
                Response.Redirect("mtech.aspx");
            }
        }
    }
    private void filldetails()
    {
        tid = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tbltechnology where techid='" + tid + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        tid = int.Parse(Request.QueryString["id"].ToString());
        Response.Redirect("utech.aspx?id=" + tid);

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mtech.aspx");
    }
}