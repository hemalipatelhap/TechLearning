using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Professional_mcontent : System.Web.UI.Page
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
        SqlDataAdapter da = new SqlDataAdapter("select * from tblcontent join tbltechnology on tblcontent.techid=tbltechnology.techid and tblcontent.username='"+tn+"'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void ImageButton2_Command(object sender, CommandEventArgs e)
    {
        int id;
        id = int.Parse(e.CommandArgument.ToString());
        SqlCommand cmd = new SqlCommand("delete  from tblcontent where contentid=@cid", con);
        cmd.Parameters.AddWithValue("@cid", id);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Text = "Record Deleted from the database";
        fillgrid();
    }
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
        int id;
        id = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("ucontent.aspx?id=" + id);
    }
    protected void ImageButton3_Command(object sender, CommandEventArgs e)
    {
        int id;
        id = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("vcontent.aspx?id=" + id);
    }
}