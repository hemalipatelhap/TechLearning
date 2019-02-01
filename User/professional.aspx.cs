using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_professional : System.Web.UI.Page
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
        SqlDataAdapter da = new SqlDataAdapter("select * from tblprofessional", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        int id = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("vprof.aspx?id=" + id);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string tn = TextBox1.Text;
        SqlDataAdapter da2 = new SqlDataAdapter("select * from tblprofessional where name like '" + tn + "%'", con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        GridView1.DataSource = ds2;
        GridView1.DataBind();
    }
}