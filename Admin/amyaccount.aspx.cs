using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_amyaccount : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            filldetails();
        }
        else
        {
            Response.Redirect("~\\Login.aspx");
        }


    }
    private void filldetails()
    {
        string username = Session["admin"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("select * from tbladmin where username='" + username + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("aumyaccount.aspx");
    }

}