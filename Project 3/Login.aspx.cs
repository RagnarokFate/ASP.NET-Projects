using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    public bool UserExist(string userEmail, string userPassword)
    {
        string userSqlStr = "select [userName],[passWord] from [userTbl] where[userName]='" + userEmail + "' and [passWord]='" + userPassword + "' and [Status]='Customer' ";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "asadDataBase.mdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }
    public bool AdminExist(string userEmail, string userPassword)
    {
        string userSqlStr = "select  * from [userTbl] where [userName]='" + userEmail + "' and [passWord]='" + userPassword + "' and [Status]='Admin' ";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "asadDataBase.mdb");

        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (UserExist(userBox.Text, passBox.Text))
        {
            Session["Email"] = userBox.Text;
            Session["Password"] = passBox.Text;

            Response.Redirect("~/HomeCus.aspx");
        }

        else
        {
            if(AdminExist(userBox.Text,passBox.Text))
            {
                Session["Email"] = userBox.Text;
                Session["Password"] = passBox.Text;

                Response.Redirect("~/HomeAdmin.aspx");
            }
            else
            Label1.Visible = true;
        }
    }
}
