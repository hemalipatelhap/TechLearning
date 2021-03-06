﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Professional_solutions : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["prof"] == null)
            {
                Response.Redirect("~\\Login.aspx");
            }
            fillgrid();
        }
    }
    private void fillgrid()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from (tblqueries join tblcontent on tblqueries.contentid=tblcontent.contentid) join tbltechnology on tblcontent.techid=tbltechnology.techid where tblcontent.username='"+Session["prof"]+"'", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    protected void ImageButton3_Command(object sender, CommandEventArgs e)
    {
        int qid = int.Parse(e.CommandArgument.ToString());
        Response.Redirect("givesolution.aspx?qid=" + qid);

    }
}