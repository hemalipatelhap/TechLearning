using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Professional_umyaccount : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    string un;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["prof"] == null)
            {
                Response.Redirect("~\\Login.aspx");
            }
            un = Session["prof"].ToString();
            filldetails();

        }
    }
    private void filldetails()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblprofessional where username='" + un + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox na = (TextBox)DetailsView1.FindControl("TextBox1");
        TextBox ed = (TextBox)DetailsView1.FindControl("TextBox2");
        TextBox em = (TextBox)DetailsView1.FindControl("TextBox3");
        TextBox cn = (TextBox)DetailsView1.FindControl("TextBox4");
        FileUpload f = (FileUpload)DetailsView1.FindControl("FileUpload1");
        if (f.HasFile)
        {
            string path;
            path = "~\\images\\prof\\" + f.FileName;
            f.SaveAs(Server.MapPath(path));
            SqlCommand cmd = new SqlCommand("update tblprofessional set name=@na,education=@ed,emailid=@em,contactno=@cn,photo=@ph where username=@un", con);
            cmd.Parameters.AddWithValue("@na", na.Text);
            cmd.Parameters.AddWithValue("@ed", ed.Text);
            cmd.Parameters.AddWithValue("@em", em.Text);
            cmd.Parameters.AddWithValue("@cn", cn.Text);
            cmd.Parameters.AddWithValue("@ph", path);
            cmd.Parameters.AddWithValue("@un", Session["prof"].ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            SqlCommand cmd2 = new SqlCommand("update tblprofessional set name=@na,education=@ed,emailid=@em,contactno=@cn where username=@un", con);
            cmd2.Parameters.AddWithValue("@na", na.Text);
            cmd2.Parameters.AddWithValue("@ed", ed.Text);
            cmd2.Parameters.AddWithValue("@em", em.Text);
            cmd2.Parameters.AddWithValue("@cn", cn.Text);
            cmd2.Parameters.AddWithValue("@un", Session["prof"].ToString());
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();
        }
        filldetails();
        lblmsg.Text = "Updated...";
        Response.Redirect("myaccount.aspx");
    }
}