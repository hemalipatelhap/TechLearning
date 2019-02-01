using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class Professional_Default2 : System.Web.UI.Page
{
    string un;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillddl();
        }
    }
    private void fillddl()
    {
        string tn = Session["prof"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("select * from tbltechnology where username='"+tn+"'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "techname";
        DropDownList1.DataValueField = "techid";
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fn = FileUpload1.FileName;
            string path = "~\\video\\" + fn;
            FileUpload1.SaveAs(Server.MapPath(path));
            un = Session["prof"].ToString();
            SqlCommand cmd = new SqlCommand("insert into tblcontent values(@ti,@cn,@de,@ld,@od,@un,@cd,@v)", con);
            cmd.Parameters.AddWithValue("@ti", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@cn", TextBox2.Text);
            cmd.Parameters.AddWithValue("@de", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ld", TextBox4.Text);
            cmd.Parameters.AddWithValue("@od", TextBox5.Text);
            cmd.Parameters.AddWithValue("@un", un);
            cmd.Parameters.AddWithValue("@v", path);
            cmd.Parameters.AddWithValue("@cd", Convert.ToDateTime(System.DateTime.Now.ToString()));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Content Inserted!!!";
        }
        else
        {
            un = Session["prof"].ToString();
            SqlCommand cmd = new SqlCommand("insert into tblcontent values(@ti,@cn,@de,@ld,@od,@un,@cd,@v)", con);
            cmd.Parameters.AddWithValue("@ti", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@cn", TextBox2.Text);
            cmd.Parameters.AddWithValue("@de", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ld", TextBox4.Text);
            cmd.Parameters.AddWithValue("@od", TextBox5.Text);
            cmd.Parameters.AddWithValue("@un", un);
            cmd.Parameters.AddWithValue("@v", "0");
            cmd.Parameters.AddWithValue("@cd", Convert.ToDateTime(System.DateTime.Now.ToString()));
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Content Inserted!!!";
        }
        try
        {
            SqlDataAdapter da2 = new SqlDataAdapter("select tblstudent.emailid \"SE\",tblprofessional.emailid \"PE\" from tblprofessional join tblfollow on tblprofessional.profid=tblfollow.profid join tblstudent on tblfollow.studentid=tblstudent.studentid", con);
            DataTable dt = new DataTable();
            da2.Fill(dt);
            int count = dt.Rows.Count;
            string semail;
            while (count > 0)
            {
                count--;
                semail = dt.Rows[count][0].ToString();
                MailMessage Msg = new MailMessage();
                Msg.From = new MailAddress("techlearning96@gmail.com");
                Msg.To.Add(semail);
                Msg.Subject = "New Content Added";
                Msg.Body = "Go to http://localhost:52278/TLC/login.aspx to view the content.";
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("techlearning96@gmail.com", "14ce099pooja");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
            }
        }
        catch (Exception ex)
        {
            Label1.Text = "Internet is not connected so mail not sent";
        }
    }
}