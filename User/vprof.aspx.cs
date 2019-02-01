using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_vprof : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                id = int.Parse(Request.QueryString["id"].ToString());
                filldetails();
            }
            else
            {
                Response.Redirect("professional.aspx");
            }
        }
        if (Session["user"] != null)
        {
            id = int.Parse(Request.QueryString["id"].ToString());
            string sn = Session["user"].ToString();
            SqlDataAdapter da2 = new SqlDataAdapter("select studentid from tblstudent where username='" + sn + "'", con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            int sid = int.Parse(ds2.Tables[0].Rows[0][0].ToString());
            SqlDataAdapter da4 = new SqlDataAdapter("select * from tblfollow where studentid='" + sid + "' and profid='" + id + "'", con);
            DataSet ds4 = new DataSet();
            da4.Fill(ds4);
            int result;
            result = ds4.Tables[0].Rows.Count;
            Button bn = (Button)DetailsView1.FindControl("Button1");
            if (result == 0)
            {
                bn.Text = "Follow";
            }
            else
            {
                bn.Text = "Unfollow";
            }
            bn.Style.Add("display", "block");
        }
        else
        {
            Button bn = (Button)DetailsView1.FindControl("Button1");
            bn.Style.Add("display", "none");
        }
    }
    private void filldetails()
    {
        id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblprofessional where profid='" + id + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("professional.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button bn = (Button)DetailsView1.FindControl("Button1");
        if (bn.Text == "Follow")
        {
            id = int.Parse(Request.QueryString["id"].ToString());
            string sn = Session["user"].ToString();
            SqlDataAdapter da2 = new SqlDataAdapter("select studentid from tblstudent where username='" + sn + "'", con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            int sid = int.Parse(ds2.Tables[0].Rows[0][0].ToString());
            SqlCommand cmd = new SqlCommand("insert into tblfollow values(@sid,@tid)", con);
            cmd.Parameters.AddWithValue("@sid", sid);
            cmd.Parameters.AddWithValue("@tid", id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            bn.Text = "Unfollow";
        }
        else
        {
            id = int.Parse(Request.QueryString["id"].ToString());
            string sn = Session["user"].ToString();
            SqlDataAdapter da2 = new SqlDataAdapter("select studentid from tblstudent where username='" + sn + "'", con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            int sid = int.Parse(ds2.Tables[0].Rows[0][0].ToString());
            SqlCommand cmd = new SqlCommand("delete  from tblfollow where studentid=@sid and profid=@tid", con);
            cmd.Parameters.AddWithValue("@tid", id);
            cmd.Parameters.AddWithValue("@sid", sid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            bn.Text = "Follow";
        }
    }
}