using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class HomeCos : System.Web.UI.Page
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
        WellCome.Text = UserDetails(Session["ConEmail"].ToString());

        string userSqlStr = "Delete  from [ShoppingCartTbl] where [Email]='" + Session["ConEmail"].ToString() + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDB.accdb");
        
    }
}