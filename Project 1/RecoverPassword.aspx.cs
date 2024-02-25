using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RecoverPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         UserClass user1 = new UserClass();

         if (!user1.CheckIfUser(this.TextBox1.Text))
         {
             this.Label1.Text = "Email Is Wrong";
         }
         else

         {
             Session["email"] = this.TextBox1.Text;
             Response.Redirect("~/RecoverPassword2.aspx");
         }
 
    }
}