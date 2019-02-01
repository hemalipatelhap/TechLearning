using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_viewcontent : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
            fillgrid2();
        }
    }
    private void fillgrid()
    {
        int tid = int.Parse(Request.QueryString["tid"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select tbltechnology.techname,tblcontent.contentid,tblcontent.contentname from tblcontent join tbltechnology on tblcontent.techid=tbltechnology.techid where tblcontent.techid='" + tid + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        Label1.Text = Label1.Text + ds.Tables[0].Rows[0][0].ToString();
    }
    private void fillgrid2()
    {
        int tid = int.Parse(Request.QueryString["tid"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblbook where techid='"+tid+"'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }
    protected void ImageButton3_Command(object sender, CommandEventArgs e)
    {
        int id;
        id = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("vbook.aspx?id=" + id);
    }
    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        int cid = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("viewdetails.aspx?cid=" + cid);
    }
}