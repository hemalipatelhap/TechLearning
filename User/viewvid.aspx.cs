using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class User_viewvid : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
    string filePath;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    private void fillgrid()
    {
        int cid = int.Parse(Request.QueryString["cid"].ToString());
        SqlDataAdapter da = new SqlDataAdapter("select video from tblcontent where tblcontent.contentid='" + cid + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        String str;

        str = ds.Tables[0].Rows[0][0].ToString();
        str = ".." + str.Substring(1);

        //str="../video/learn.mp4";
        videoTag.Attributes["src"] = str;


    }
}