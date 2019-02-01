using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("pregister.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("sregister.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tblprofessional where username='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "' AND status=1", con);
        con.Open();
        DataSet ds = new DataSet();
        da.Fill(ds);
        int result;
        result = ds.Tables[0].Rows.Count;
        con.Close();
        if (result == 0)
        {
            SqlDataAdapter da2 = new SqlDataAdapter("select * from tblstudent where username='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "' AND status=1", con);
            con.Open();
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            int result2;
            result2 = ds2.Tables[0].Rows.Count;
            con.Close();
            if (result2 == 0)
            {
                SqlDataAdapter da3 = new SqlDataAdapter("select * from tbladmin where username='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "' AND status=1", con);
                con.Open();
                DataSet ds3 = new DataSet();
                da3.Fill(ds3);
                int result3;
                result3 = ds3.Tables[0].Rows.Count;

                if (result3 == 0)
                {
                    Label1.Text = "Enter valid User Name or Password";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Session["admin"] = TextBox1.Text;
                    Response.Redirect("Admin/aHome.aspx");
                }
                con.Close();
            }
            else
            {
                Session["user"] = TextBox1.Text;
                Response.Redirect("User/Home.aspx");
            }

        }
        else  
        {
            Session["prof"] = TextBox1.Text;
            Response.Redirect("Professional/Home.aspx");
        }


    }
}