using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_following : System.Web.UI.Page
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
        string un = Session["user"].ToString();
        int sid;
        SqlDataAdapter da2 = new SqlDataAdapter("select studentid from tblstudent where username='" + un + "'", con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        sid = int.Parse(ds2.Tables[0].Rows[0][0].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblfollow join tblprofessional on tblfollow.profid=tblprofessional.profid where tblfollow.studentid='" + sid + "'", con);
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
}