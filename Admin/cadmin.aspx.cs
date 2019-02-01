using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_cadmin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string path, fn;
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox8.Text == "")
        {
            Label3.Text = "Please enter all details";
        }
        else
        {
            if (FileUpload2.HasFile)
            {
                if (TextBox4.Text == TextBox8.Text)
                {
                    fn = FileUpload2.FileName;
                    path = "~\\images\\admin\\" + fn;
                    FileUpload2.SaveAs(Server.MapPath(path));
                    SqlCommand cmd = new SqlCommand("insert into tbladmin values(@na,@un,@ps,@em,@cd,@st,@ph)", con);
                    cmd.Parameters.AddWithValue("@na", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@un", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@ps", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@em", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@ph", path);
                    cmd.Parameters.AddWithValue("@st", "true");
                    cmd.Parameters.AddWithValue("@cd", Convert.ToDateTime(System.DateTime.Now.ToString()));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Passwords don't match";
                }
            }
            else
            {
                if (TextBox4.Text == TextBox8.Text)
                {
                    SqlCommand cmd = new SqlCommand("insert into tbladmin values(@na,@un,@ps,@em,@cd,@st,@ph)", con);
                    cmd.Parameters.AddWithValue("@na", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@un", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@ps", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@em", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@ph", "~\\images\\user.png");
                    cmd.Parameters.AddWithValue("@st", "true");
                    cmd.Parameters.AddWithValue("@cd", Convert.ToDateTime(System.DateTime.Now.ToString()));
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Passwords don't match";
                }
            }
        }
    }
}