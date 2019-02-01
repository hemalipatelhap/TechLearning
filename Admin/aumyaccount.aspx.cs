using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_aumyaccount : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    string un;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            un = Session["admin"].ToString();
            filldetails();

        }
    }
    private void filldetails()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tbladmin where username='" + un + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox na = (TextBox)DetailsView1.FindControl("TextBox1");
        TextBox em = (TextBox)DetailsView1.FindControl("TextBox3");
        FileUpload f = (FileUpload)DetailsView1.FindControl("FileUpload1");
        if (f.HasFile)
        {
            string path;
            path = "~\\images\\admin\\" + f.FileName;
            f.SaveAs(Server.MapPath(path));
            SqlCommand cmd = new SqlCommand("update tbladmin set name=@na,emailid=@em,photo=@ph where username=@un", con);
            cmd.Parameters.AddWithValue("@na", na.Text);
            cmd.Parameters.AddWithValue("@em", em.Text);
            cmd.Parameters.AddWithValue("@ph", path);
            cmd.Parameters.AddWithValue("@un", Session["admin"].ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            SqlCommand cmd2 = new SqlCommand("update tbladmin set name=@na,emailid=@em where username=@un", con);
            cmd2.Parameters.AddWithValue("@na", na.Text);
            cmd2.Parameters.AddWithValue("@em", em.Text);
            cmd2.Parameters.AddWithValue("@un", Session["admin"].ToString());
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();
        }
        filldetails();
        lblmsg.Text = "Updated...";
        Response.Redirect("amyaccount.aspx");
    }
}