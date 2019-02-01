using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Professional_cpassword : System.Web.UI.Page
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
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == TextBox3.Text)
        {
            SqlCommand cmd = new SqlCommand("update tblprofessional set password=@pd where username=@un and password=@cpd", con);
            cmd.Parameters.AddWithValue("@cpd", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pd", TextBox2.Text);
            cmd.Parameters.AddWithValue("@un", Session["prof"].ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}