using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class MasterPageCos : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != "Customer" || Session["ConEmail"] ==null)
            Response.Redirect("~/Login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login.aspx");
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();

      
    }
}
