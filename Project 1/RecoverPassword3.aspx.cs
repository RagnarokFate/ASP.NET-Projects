using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecoverPassword3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null || Session["FillSQ"] ==null)
        {
            Response.Redirect("~/RecoverPassword.aspx");
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        UserClass user1=new UserClass() ;
        user1.UserEmail = Session["email"].ToString();
        if ((this.TextBox1.Text.Length >3))
        {
             user1.UpdatePassword(this.TextBox1.Text);
             Session["Type"] = "user";
             Session["user"] = user1.UserDetails(Session["email"].ToString());
             Response.Redirect("~/homeCus.aspx");
        }
        else
        {
            this.Label1.Text = " Enter A new Passwrord ( 4 Char At Least !)";
        }

    }
}