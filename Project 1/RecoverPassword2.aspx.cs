using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecoverPassword2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
            Response.Redirect("~/RecoverPassword.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        UserClass user1 = new UserClass();
        user1.UserEmail = Session["email"].ToString();
       if (this.TextBox1.Text.Length > 0)
        {
            if (!user1.CheckSQ(this.DropDownList1.SelectedValue, this.TextBox1.Text))
            {
                this.Label1.Text = "Wrong Info";
            }
            else
            {
                Session["FillSQ"] = "Yes";
                Response.Redirect("~/RecoverPassword3.aspx");
            }
        }
        else
        {
            this.Label1.Text = "Fill The Areas !!";
        }
    }
}