using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class HomeAdmin : System.Web.UI.Page
{
    public string UserDetails(string userEmail)
    {
        string userSqlStr = "select * from [userTbl] where [userName]='" + userEmail + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "asadDataBase.mdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0]["Fullname"].ToString();
        return " ";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = UserDetails(Session["Email"].ToString());
    }
}