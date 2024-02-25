using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AccountSettingsCos : System.Web.UI.Page
{

    public string UserDetails(string userEmail)
    {
        string userSqlStr = "select  [FirstName] , [LastName] from [UserDB] where [Email]='" + userEmail + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDBP.mdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString() + " " + dt.Rows[0][1].ToString();
        return " ";

    }
    public bool UserExist(string userEmail, string userPassword)
    {
        string userSqlStr = "select  [Email] from [UserDB] where [Email]='" +
            userEmail + "' and [Password]='" + userPassword + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDBP.mdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != "Admin" ||   Session["Confemail"] == null)
            Response.Redirect("~/Login.aspx");
        WellCome.Text = UserDetails(Session["Confemail"].ToString());

    }

    protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["Confpass"].ToString() == Oldpass.Text)
        {
            string NewEmail = UsEmail.Text;

            if (!UserExist(NewEmail, Oldpass.Text))
            {
                string str = "Update [UserDB] Set [Email]='" + NewEmail + "' where [Email]='" + Session["Confemail"].ToString() + "'";
                DBFunctions.ChangeTable(str, "UserDBP.mdb");
                Updated.Visible = true;
            }

            else
            {
                UnsEmail.Visible = true;
            }

        }
    }
    protected void Change_Click(object sender, EventArgs e)
    {
        if (Session["Confpass"].ToString() == Oldpass.Text)
        {
            string NewPassword = NewPass.Text;
            string ConPassword = ConPass.Text;

            if (NewPassword == ConPassword)
            {
                string str = "Update [UserDB] Set [Password]='" + NewPassword + "' where [Email]='" + Session["Confemail"].ToString() + "'";
                DBFunctions.ChangeTable(str, "UserDBP.mdb");
                Session["Confpass"] = NewPassword;
                Updated.Visible = true;
            }
        }
        else
        {
            WrongPass.Visible = true;
        }


    }
    protected void DeleteAccount_Click(object sender, EventArgs e)
    {
        string sqlMsgStr2 = "DELETE  FROM UserDB WHERE Email ='" + Session["Confemail"].ToString() + "'";
        DBFunctions.ChangeTable(sqlMsgStr2, "UserDBP.mdb");
        Response.Redirect("~/login.aspx");

        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();

        Response.Redirect("~/login.aspx");
    }
}