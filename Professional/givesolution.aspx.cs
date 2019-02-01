using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Professional_givesolution : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    string tn, sn;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["prof"] == null)
            {
                Response.Redirect("~\\Login.aspx");
            }

            filldata();
        }
    }
    private void filldata()
    {
        int qid = int.Parse(Request.QueryString["qid"].ToString());
        string tn = Session["prof"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("select * from tblqueries where queryid='" + qid + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Label2.Text = ds.Tables[0].Rows[0][3].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int qid = int.Parse(Request.QueryString["qid"].ToString());
        sn = Session["prof"].ToString();
        SqlCommand cmd = new SqlCommand("insert into tblsolutions values(@qid,@un,@de,@cd)", con);
        cmd.Parameters.AddWithValue("@qid", qid);
        cmd.Parameters.AddWithValue("@un", sn);
        cmd.Parameters.AddWithValue("@de", TextBox1.Text);
        cmd.Parameters.AddWithValue("@cd", Convert.ToDateTime(System.DateTime.Now.ToString()));
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}