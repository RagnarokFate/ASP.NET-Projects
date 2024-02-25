using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerAccountSettings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text == Session["Pass"].ToString())
        {
            if(TextBox2.Text ==TextBox3.Text)
            {
                string str = "Update [usertbl] Set [password]='" + TextBox2.Text + "' where [username]='" + Session["username"].ToString() + "'";
                DBFunctions.ChangeTable(str, "samadata.mdb");
                Label2.Visible = true;
                Label2.Text = "Changed Succsessfully";

                Session["Pass"] = TextBox2;
            }
            else
            {
                Label2.Text = "The New Passwords Doesnt In Match";
                Label2.Visible = true;

            }
        }
        else
        {
            Label2.Text = "The Old Password Is Wrong";
            Label2.Visible = true;

        }
    }
}