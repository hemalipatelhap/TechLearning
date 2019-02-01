using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
           
            HyperLink1.Text = "Logout";
            HyperLink2.Style.Add("display", "block");
            string ad = Session["user"].ToString();
            SqlDataAdapter da = new SqlDataAdapter("select * from tblstudent where username='" + ad + "'", con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Image1.ImageUrl = ds.Tables[0].Rows[0][10].ToString();
        }
        else
        {

            HyperLink2.Style.Add("display", "none");
        }
    }
}
