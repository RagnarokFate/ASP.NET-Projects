using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Playlist : System.Web.UI.Page
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
        if (Session["UserType"] != "Customer" || Session["ConEmail"] == null)
            Response.Redirect("~/Login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Text = UserDetails(Session["ConEmail"].ToString());

        Label2.Visible = true;

        string str = "insert into PartnersTbl (PartnerUS) Values('" + Session["ConEmail"].ToString() + "')";
        DBFunctions.ChangeTable(str, "UserDB.accdb");

        Label1.Visible = true;
    }
}