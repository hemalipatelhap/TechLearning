using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Professional_vcon : System.Web.UI.Page
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
        SqlDataAdapter da = new SqlDataAdapter("select * from tblcontent  join tbltechnology on tblcontent.techid=tbltechnology.techid where contentid='" + cid + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("rcontent.aspx");
    }

}