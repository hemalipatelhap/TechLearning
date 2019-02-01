using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Professional_followers : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["prof"] == null)
            {
                Response.Redirect("~\\Login.aspx");
            }

            fillgrid();
        }
    }
    private void fillgrid()
    {
        string tn = Session["prof"].ToString();
        int tid;
        SqlDataAdapter da2 = new SqlDataAdapter("select profid from tblprofessional where username='" + tn + "'", con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        tid = int.Parse(ds2.Tables[0].Rows[0][0].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblfollow join tblstudent on tblfollow.studentid=tblstudent.studentid where tblfollow.profid='" + tid + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        int id = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("vstudent.aspx?id=" + id);
    }
}