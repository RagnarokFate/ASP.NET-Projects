using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class Login : System.Web.UI.Page
{
    public bool UserExist(string userEmail, string userPassword)
    {
        string userSqlStr = "select  [Email] from [UserDB] where [Email]='" +
            userEmail + "' and [Password]='" + userPassword + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDBP.mdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }
    public bool AdminExist(string AdminEmail, string AdminPassword)
    {
        string userSqlStr = "select  [Email] from [UserDB] where [Email]='" +
            AdminEmail + "' and [Password]='" + AdminPassword + "' and [userType] ='Admin'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDBP.MDB");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string InputedEmail = Embox.Text;
        string InputedPass = Psbox.Text;


        if (AdminExist(InputedEmail,InputedPass))
        {
            Session["Confemail"] = Embox.Text;

            Session["Confpass"] = Psbox.Text;
            Session["UserType"] = "Admin";
            Response.Redirect("~/HomeAdmin.aspx"); 
        }
        else
        {
           if( UserExist(InputedEmail,InputedPass))
           {
               Session["Confemail"] = Embox.Text;
               Session["UserType"] = "Customer";
               Session["Confpass"] = Psbox.Text;
               Response.Redirect("~/HomeCustomer.aspx"); 
           }
           else
           {
               l2.Visible = true;
           }
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (!UserExist(Em.Text, Ps.Text))
        {
            string str = "insert into UserDB ([FirstName],[LastName],[Email],[Password],[userType]) values ('" + FN.Text + "','" + LN.Text + "','" + Em.Text + "','" + Ps.Text + "','" + "Customer" + "')";
            DBFunctions.ChangeTable(str, "UserDBP.mdb");
            Lag.Visible = true;
            Button1.Visible = false;

        }
        else
        {
            Label2.Visible = true;
        }
    }
}


