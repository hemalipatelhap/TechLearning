using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Professional_utech : System.Web.UI.Page
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

        TextBox tech = (TextBox)DetailsView1.FindControl("TextBox1");
        TextBox des = (TextBox)DetailsView1.FindControl("TextBox2");
        FileUpload f = (FileUpload)DetailsView1.FindControl("FileUpload1");
        if (f.HasFile)
        {
            string path;
            path = "~\\images\\tech\\" + f.FileName;
            f.SaveAs(Server.MapPath(path));
            SqlCommand cmd = new SqlCommand("update tbltechnology set techname=@tn,description=@de,logo=@lg where techid=@tid", con);
            cmd.Parameters.AddWithValue("@tn", tech.Text);
            cmd.Parameters.AddWithValue("@de", des.Text);
            cmd.Parameters.AddWithValue("@lg", path);
            cmd.Parameters.AddWithValue("@tid", tid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            SqlCommand cmd2 = new SqlCommand("update tbltechnology set techname=@tn,description=@de where techid=@tid", con);
            cmd2.Parameters.AddWithValue("@tn", tech.Text);
            cmd2.Parameters.AddWithValue("@de", des.Text);
            cmd2.Parameters.AddWithValue("@tid", tid);
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();
        }
        filldetails();

        Response.Redirect("mtech.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("mtech.aspx");
    }
}