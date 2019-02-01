using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Professional_ctech : System.Web.UI.Page
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
        string path, fn, un;
        if (FileUpload1.HasFile)
        {
            fn = FileUpload1.FileName;
            un = Session["prof"].ToString();
            path = "~\\images\\tech\\" + fn;
            FileUpload1.SaveAs(Server.MapPath(path));
            SqlCommand cmd = new SqlCommand("insert into tbltechnology values(@tn,@td,@un,@ph,@cd)", con);
            cmd.Parameters.AddWithValue("@tn", TextBox1.Text);
            cmd.Parameters.AddWithValue("@td", TextBox2.Text);
            cmd.Parameters.AddWithValue("@un", un);
            cmd.Parameters.AddWithValue("@ph", path);
            cmd.Parameters.AddWithValue("@cd", Convert.ToDateTime(System.DateTime.Now.ToString()));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.ForeColor = System.Drawing.Color.Lime;
            Label1.Text = "Technology Inserted!!!";
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Please Select Logo or Image";
        }
    }
}