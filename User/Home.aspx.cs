﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class User_Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();

        }
    }
    private void fillgrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from tbltechnology ", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
        int id;
        id = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("viewcontent.aspx?tid=" + id);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string tn = TextBox1.Text;
        SqlDataAdapter da2 = new SqlDataAdapter("select * from tbltechnology where techname like '" + tn + "%'", con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2);
        DataList1.DataSource = ds2;
        DataList1.DataBind();
    }
}