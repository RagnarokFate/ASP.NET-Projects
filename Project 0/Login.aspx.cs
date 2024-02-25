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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Conemail"] == null)
        {
            Label4.Visible = true;
        }
    }
    public bool UserExist(string userEmail, string userPassword)
    {
        string userSqlStr = "select  [userEmail] from [UserTbl] where [userEmail]='" +
            userEmail + "' and [userPassword]='" + userPassword + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }
    public bool AdminExist(string AdminEmail, string AdminPassword)
    {
        string userSqlStr = "select  [userEmail] from [UserTbl] where [userEmail]='" +
            AdminEmail + "' and [userPassword]='" + AdminPassword + "' and [userType] ='Admin'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }
    public string UserDetails(string userEmail)
    {
        string userSqlStr = "select  [UserFirstName] , [UserLastName] from [UserTbl] where [userEmail]='" + userEmail + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString() + " " + dt.Rows[0][1].ToString();
        return " ";

    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {

        string userEmail = this.Email.Text;
        string UserPassword = this.Password.Text;



        if (UserExist(userEmail, UserPassword))
        {
            if (AdminExist(userEmail, UserPassword))
            {
                Session["ConEmail"] = userEmail.ToString();
                Session["ConPass"] = UserPassword.ToString();
                Session["UserType"] = "Admin";
                Response.Redirect("~/HomeAdm.aspx");
            }
            else
            {
                Session["ConEmail"] = userEmail.ToString();
                Session["ConPass"] = UserPassword.ToString();
                Session["UserType"] = "Customer";
                Response.Redirect("~/HomeCos.aspx");
            }

        }
        else
        {
            this.Check2.Visible = true;
        }
    }
}
 
   
