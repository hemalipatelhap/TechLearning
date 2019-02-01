using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Professional_cbook : System.Web.UI.Page
{
    string un;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["prof"] == null)
            {
                Response.Redirect("~\\Login.aspx");
            }

            fillddl();
        }
    }
    private void fillddl()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tbltechnology", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "techname";
        DropDownList1.DataValueField = "techid";
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        un = Session["prof"].ToString();
        SqlCommand cmd = new SqlCommand("insert into tblbook values(@ti,@bn,@au,@pu,@pr,@un,@cd,@av)", con);
        cmd.Parameters.AddWithValue("@ti", DropDownList1.SelectedValue);
        cmd.Parameters.AddWithValue("@bn", TextBox2.Text);
        cmd.Parameters.AddWithValue("@au", TextBox3.Text);
        cmd.Parameters.AddWithValue("@pu", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pr", TextBox4.Text);
        cmd.Parameters.AddWithValue("@un", un);
        cmd.Parameters.AddWithValue("@cd", Convert.ToDateTime(System.DateTime.Now.ToString()));
        cmd.Parameters.AddWithValue("@av", 0);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Book Inserted!!!";

    }
}