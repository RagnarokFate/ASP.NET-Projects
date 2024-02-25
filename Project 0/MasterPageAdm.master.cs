using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class MasterPageAdm : System.Web.UI.MasterPage
{
    public string UserDetails(string userEmail)
    {
        string userSqlStr = "select  [UserFirstName] , [UserLastName] from [UserTbl] where [userEmail]='" + userEmail + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString() + " " + dt.Rows[0][1].ToString();
        return " ";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != "Admin")
            Response.Redirect("~/Login.aspx");
        Label1.Text = UserDetails(Session["ConEmail"].ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();

        Response.Redirect("~/login.aspx");
    }
}
