using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MasterPageCustomer : System.Web.UI.MasterPage
{
    public string UserDetails(string userEmail)
    {
        string userSqlStr = "select  [FirstName] , [LastName] from [UserDB] where [Email]='" + userEmail + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDBP.mdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString() + " " + dt.Rows[0][1].ToString();
        return " ";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = UserDetails(Session["confemail"].ToString());

    }
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }
}
