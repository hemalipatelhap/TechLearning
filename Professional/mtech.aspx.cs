using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Professional_mtech : System.Web.UI.Page
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
        SqlDataAdapter da = new SqlDataAdapter("select * from tbltechnology where username='"+tn+"'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
        int id;
        id = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("utech.aspx?id=" + id);
    }
    protected void ImageButton2_Command(object sender, CommandEventArgs e)
    {
        int id;
        id = int.Parse(e.CommandArgument.ToString());
        SqlCommand cmd = new SqlCommand("delete  from tbltechnology where techid=@tid", con);
        cmd.Parameters.AddWithValue("@tid", id);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        lblmsg.Text = "Record Deleted from the database";
        fillgrid();
    }
    protected void ImageButton3_Command(object sender, CommandEventArgs e)
    {
        int id;
        id = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("vtech.aspx?id=" + id);
    }
}