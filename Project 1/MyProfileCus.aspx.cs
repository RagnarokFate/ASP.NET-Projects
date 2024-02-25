using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyProfileCus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Type"] == null || Session["Type"].ToString() != "user")
            Response.Redirect("~/login.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        UserClass user1 = new UserClass();
        if ((this.TextBox5.Text.Length >3) & (this.TextBox6.Text.Length > 3))
        {
            if (user1.UserExist(this.TextBox1.Text, this.TextBox4.Text))
            {
                user1.UserEmail = this.TextBox1.Text;
                user1.UpdatePassword(this.TextBox5.Text);

                Label1.Text = "change successful";
                Label1.Visible = true;
            }
            else
            {
                Label1.Text = "Something wrong";
                Label1.Visible = true;
            }
        }
        else
        {
            Label1.Text = " Enter A new Passwrord ( 4 Char At Least !)";
            Label1.Visible = true;
        }
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
        UserClass user1 = new UserClass();
        if (user1.UserExist(this.TextBox1.Text, this.TextBox4.Text))
        {
            user1.UserEmail = this.TextBox1.Text;
            string sqlMsgStr2 = "DELETE  FROM UserTbl WHERE userEmail ='" + TextBox1.Text + "'";
            DBFunctions.ChangeTable(sqlMsgStr2, "UserDB.accdb");
            Response.Redirect("~/login.aspx");

             
        }
        else
        {
            Label2.Text = "Email or password is invalid";
            Label2.Visible = true;
        }
       
    }
}
