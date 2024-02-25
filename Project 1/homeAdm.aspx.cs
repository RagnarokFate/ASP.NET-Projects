using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homeAdm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Type"] == null || Session["Type"].ToString() != "Admin")
            Response.Redirect("~/login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MsgBox("Hello");
    }
    public void MsgBox(string Msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'>alert('" + Msg + "')</script>");
    }
}