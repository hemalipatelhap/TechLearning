using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_vbook : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            filldetails();
        }

        if (Session["user"] == null)
        {
            Button2.Style.Add("display", "none");
            rating1.Style.Add("display", "none");
            Label5.Style.Add("display", "none");
            Label6.Text = "Book Details";
        }

    }
    void filldetails()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select * from tblbook where bookid='" + id + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        Label1.Text = ds.Tables[0].Rows[0][2].ToString();
        Label2.Text = ds.Tables[0].Rows[0][3].ToString();
        Label3.Text = ds.Tables[0].Rows[0][4].ToString();
        Label4.Text = ds.Tables[0].Rows[0][5].ToString();
        if (Session["user"] != null)
        {
            SqlDataAdapter da2 = new SqlDataAdapter("select * from tblrating where bookid='" + id + "' and username='" + Session["user"].ToString() + "'", con);
            DataSet ds2 = new DataSet();
            da2.Fill(ds2);
            int result;
            result = ds2.Tables[0].Rows.Count;
            if (result == 1)
            {
                Label9.Text = "Your Rating";
                Label8.Text = ds2.Tables[0].Rows[0][3].ToString();
                Button2.Style.Add("display", "none");
                Label5.Style.Add("display", "none");
                rating1.Style.Add("display", "none");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select techid from tblbook where bookid='" + id + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int tid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
        Response.Redirect("viewcontent.aspx?tid=" + tid);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int r = rating1.CurrentRating;
        int bid = int.Parse(Request.QueryString["id"].ToString());
        string un = Session["user"].ToString();
        
            SqlCommand cmd = new SqlCommand("insert into tblrating values(@bid,@un,@r,@cd)", con);
            cmd.Parameters.AddWithValue("@bid", bid);
            cmd.Parameters.AddWithValue("@un", un);
            cmd.Parameters.AddWithValue("@r", r);
            cmd.Parameters.AddWithValue("@cd", Convert.ToDateTime(System.DateTime.Now.ToString()));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label7.Text = "Thank you for rating";
            avg();

    }
    private void avg()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select points from tblrating where bookid='" + id + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        int count = dt.Rows.Count;
        int ct=count;
        int pt,avg;
        avg = 0;
        count--;
        ct--;
        while (count > 0)
        {
            pt = Convert.ToInt32(dt.Rows[count][0]);
            avg = avg + pt;
            count--;
        }
        avg = avg / ct;
        SqlCommand cmd = new SqlCommand("update tblbook set avg=@av where bookid=@id", con);
        cmd.Parameters.AddWithValue("@av", avg);
        cmd.Parameters.AddWithValue("@id", id);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}