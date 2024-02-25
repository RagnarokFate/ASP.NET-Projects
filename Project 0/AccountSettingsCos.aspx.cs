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
        string userSqlStr = "select  [UserFirstName] , [UserLastName] from [UserTbl] where [userEmail]='" + userEmail + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString() + " " + dt.Rows[0][1].ToString();
        return " ";

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



    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != "Customer" || Session["ConEmail"] == null)
            Response.Redirect("~/Login.aspx");
        WellCome.Text = UserDetails(Session["ConEmail"].ToString());

    }

    protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (Session["Conpass"].ToString() == Oldpass.Text)
        {
            string NewEmail = UsEmail.Text;

            if (!UserExist(NewEmail, Oldpass.Text))
            {
                string str = "Update [UserTbl] Set [userEmail]='" + NewEmail + "' where [userEmail]='" + Session["ConEmail"].ToString() + "'";
                DBFunctions.ChangeTable(str, "UserDB.accdb");
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
        if (Session["ConPass"].ToString() == Oldpass.Text)
        {
            string NewPassword = NewPass.Text;
            string ConPassword = ConPass.Text;

            if (NewPassword == ConPassword)
            {
                string str = "Update [UserTbl] Set [userPassword]='" + NewPassword + "' where [userEmail]='" + Session["ConEmail"].ToString() + "'";
                DBFunctions.ChangeTable(str, "UserDB.accdb");
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
        string sqlMsgStr2 = "DELETE  FROM UserTbl WHERE userEmail ='" + Session["ConEmail"].ToString() + "'";
        DBFunctions.ChangeTable(sqlMsgStr2, "UserDB.accdb");
        Response.Redirect("~/login.aspx");

        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();

        Response.Redirect("~/login.aspx");
    }
}