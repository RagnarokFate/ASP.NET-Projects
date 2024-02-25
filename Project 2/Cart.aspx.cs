using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["total"].ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pay.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomeCustomer.aspx");
    }
}