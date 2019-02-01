using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_mstud : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    private void fillgrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblstudent", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void ImageButton3_Command(object sender, CommandEventArgs e)
    {
        int id;
        id = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("vstud.aspx?id=" + id);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string tn = TextBox1.Text;
        SqlDataAdapter da2 = new SqlDataAdapter("select * from tblstudent where username like '" + tn + "%'", con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        GridView1.DataSource = ds2;
        GridView1.DataBind();
    }
}