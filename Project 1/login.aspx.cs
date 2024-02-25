using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Timers;
using System.Globalization;
public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
       
        if(Request.Cookies["LoginData"]!=null)
        {
            EmailBox.Text = Request.Cookies["LoginData"]["UserName"].ToString();
            PasswordBox.Attributes["value"] = Request.Cookies["LoginData"]["Password"].ToString();
        }
       
    }
    protected void EmailBox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void PasswordBox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        UserClass user1 = new UserClass();

        if (user1.AdminExist(this.EmailBox.Text, this.PasswordBox.Text))
        {

            if (CheckBoxR.Checked)
            {
                HttpCookie cookie = new HttpCookie("LoginData");
                cookie.Values.Add("UserName", EmailBox.Text);
                cookie.Values.Add("Password", PasswordBox.Text);

                cookie.Expires = DateTime.Now.AddMinutes(1);
                Response.Cookies.Add(cookie);
                Session["Type"] = "Admin";
                Session["user"] = user1.UserDetails(this.EmailBox.Text);
                Session["email"] = this.EmailBox.Text;
                Response.Redirect("~/homeAdm.aspx");
            }
            else
            {
                Session["Type"] = "Admin";
                Session["user"] = user1.UserDetails(this.EmailBox.Text);
                Session["email"] = this.EmailBox.Text;
                Response.Redirect("~/homeAdm.aspx");
            }
        }




        else
        {

            if (user1.UserExist(this.EmailBox.Text, this.PasswordBox.Text))
            {
                if (CheckBoxR.Checked)
                {


                    HttpCookie cookie = new HttpCookie("LoginData");
                    cookie.Values.Add("UserName", EmailBox.Text);
                    cookie.Values.Add("Password", PasswordBox.Text);

                    cookie.Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies.Add(cookie);
                    Session["Type"] = "user";
                    Session["user"] = user1.UserDetails(this.EmailBox.Text);
                    Session["email"] = this.EmailBox.Text;
                    Response.Redirect("~/homeCus.aspx");
                }
                else
                {
                    Session["Type"] = "user";
                    Session["user"] = user1.UserDetails(this.EmailBox.Text);
                    Session["email"] = this.EmailBox.Text;
                    Response.Redirect("~/homeCus.aspx");
                }
            }
            else
            {
                this.Label1.Visible = true;
            }
        }
    }
}








