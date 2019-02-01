using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class User_viewdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    string tn, sn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
            int cid = int.Parse(Request.QueryString["cid"].ToString());
            SqlDataAdapter da5 = new SqlDataAdapter("select video from tblcontent where contentid='" + cid + "'", con);
            DataSet ds5 = new DataSet();
            da5.Fill(ds5);
            string result2;
            result2 = ds5.Tables[0].Rows[0][0].ToString();
            if (result2 == "0")
            {
                Button4.Style.Add("display", "none");
            }
        }

        if (Session["user"] != null)
        {


            int tid, sid;
            int cid = int.Parse(Request.QueryString["cid"].ToString());
            SqlDataAdapter da3 = new SqlDataAdapter("select * from tblcontent join tbltechnology on tblcontent.techid=tbltechnology.techid where tblcontent.contentid='" + cid + "'", con);
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);
            tn = ds3.Tables[0].Rows[0][6].ToString();
            sn = Session["user"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select profid from tblprofessional where username='" + tn + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            tid = int.Parse(ds.Tables[0].Rows[0][0].ToString());
            SqlDataAdapter da2 = new SqlDataAdapter("select studentid from tblstudent where username='" + sn + "'", con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            sid = int.Parse(ds2.Tables[0].Rows[0][0].ToString());
            SqlDataAdapter da4 = new SqlDataAdapter("select * from tblfollow where studentid='" + sid + "' and profid='" + tid + "'", con);
            DataSet ds4 = new DataSet();
            da4.Fill(ds4);
            int result;
            result = ds4.Tables[0].Rows.Count;
            if (result == 0)
            {
                Button1.Text = "Follow";
            }
            else
            {
                Button1.Text = "Unfollow";
            }
            Button1.Style.Add("display", "block");
            Button2.Style.Add("display", "block");
            Button3.Style.Add("display", "none");
            TextBox1.Style.Add("display", "block");
        }
        else
        {
            Button1.Style.Add("display", "none");
            Button2.Style.Add("display", "none");
            Button3.Style.Add("display", "block");
            TextBox1.Style.Add("display", "none");
        }

    }
    private void fillgrid()
    {
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblcontent join tbltechnology on tblcontent.techid=tbltechnology.techid where tblcontent.contentid='" + cid + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        Label1.Text = ds.Tables[0].Rows[0][2].ToString();
        Label2.Text = ds.Tables[0].Rows[0][3].ToString();
        Label3.Text = ds.Tables[0].Rows[0][4].ToString();
        Label4.Text = ds.Tables[0].Rows[0][5].ToString();
        Label5.Text = ds.Tables[0].Rows[0][6].ToString();
        //Label6.Text = ds.Tables[0].Rows[0][9].ToString();
        tn = Label5.Text;
        SqlDataAdapter da2 = new SqlDataAdapter("select tblprofessional.photo \"PPIC\",tblstudent.photo \"UPIC\",tblqueries.username \"User\", tblsolutions.username \"Prof\", tblqueries.description \"Query\", tblsolutions.description \"Solution\" from tblstudent join tblqueries on tblstudent.username=tblqueries.username left outer join tblsolutions on tblqueries.queryid=tblsolutions.queryid left outer join tblprofessional on tblsolutions.username=tblprofessional.username where tblqueries.contentid='" + cid + "'", con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        ListView1.DataSource = ds2;
        ListView1.DataBind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~\\Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "Follow")
        {
            int tid, sid;
            int cid = int.Parse(Request.QueryString["cid"].ToString());
            SqlDataAdapter da3 = new SqlDataAdapter("select * from tblcontent join tbltechnology on tblcontent.techid=tbltechnology.techid where tblcontent.contentid='" + cid + "'", con);
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);
            tn = ds3.Tables[0].Rows[0][6].ToString();
            sn = Session["user"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select profid from tblprofessional where username='" + tn + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            tid = int.Parse(ds.Tables[0].Rows[0][0].ToString());
            SqlDataAdapter da2 = new SqlDataAdapter("select studentid from tblstudent where username='" + sn + "'", con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            sid = int.Parse(ds2.Tables[0].Rows[0][0].ToString());
            SqlCommand cmd = new SqlCommand("insert into tblfollow values(@sid,@tid)", con);
            cmd.Parameters.AddWithValue("@sid", sid);
            cmd.Parameters.AddWithValue("@tid", tid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Button1.Text = "Unfollow";
        }
        else
        {
            int tid, sid;
            int cid = int.Parse(Request.QueryString["cid"].ToString());
            SqlDataAdapter da3 = new SqlDataAdapter("select * from tblcontent join tbltechnology on tblcontent.techid=tbltechnology.techid where tblcontent.contentid='" + cid + "'", con);
            DataSet ds3 = new DataSet();
            da3.Fill(ds3);
            tn = ds3.Tables[0].Rows[0][6].ToString();
            sn = Session["user"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select profid from tblprofessional where username='" + tn + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            tid = int.Parse(ds.Tables[0].Rows[0][0].ToString());
            SqlDataAdapter da2 = new SqlDataAdapter("select studentid from tblstudent where username='" + sn + "'", con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            sid = int.Parse(ds2.Tables[0].Rows[0][0].ToString());
            SqlCommand cmd = new SqlCommand("delete  from tblfollow where studentid=@sid and profid=@tid", con);
            cmd.Parameters.AddWithValue("@tid", tid);
            cmd.Parameters.AddWithValue("@sid", sid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Button1.Text = "Follow";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        sn = Session["user"].ToString();
        SqlCommand cmd = new SqlCommand("insert into tblqueries values(@cid,@un,@de,@cd)", con);
        cmd.Parameters.AddWithValue("@cid", cid);
        cmd.Parameters.AddWithValue("@un", sn);
        cmd.Parameters.AddWithValue("@de", TextBox1.Text);
        cmd.Parameters.AddWithValue("@cd", Convert.ToDateTime(System.DateTime.Now.ToString()));
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        Response.Redirect("viewvid.aspx?cid=" + cid);
    }
}