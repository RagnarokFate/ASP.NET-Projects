
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.Globalization;
/// <summary>
/// Summary description for UserClass
/// </summary>
public class UserClass
{
    private string userEmail;
    private string userPassword;
    private string userFirstName;
    private string userLastName;
    private string city;
    private string gender;
    private string userType;

    public UserClass()
    {
        this.userType = "Guest";

        //
        // TODO: Add constructor logic here
        //
    }

    public string UserEmail
    {
        get { return userEmail; }
        set { this.userEmail = value; }
    }

    public string UserPassword
    {
        get { return userPassword; }
        set { this.userPassword = value; }
    }


    public string UserFirstName
    {
        get { return userFirstName; }
        set { this.userFirstName = value; }
    }


    public string UserLastName
    {
        get { return userLastName; }
        set { this.userLastName = value; }
    }


    public string City
    {
        get { return city; }
        set { this.city = value; }
    }
    public string Gender
    {
        get { return gender; }
        set { this.gender = value; }
    }
    public string UserType
    {
        set { this.userType = value; }
        get { return this.userType; }
    }
    public bool UserExist(string userEmail, string userPassword)
    {
        string userSqlStr = "select  [userEmail] from [UserTbl] where [userEmail]='" +
            userEmail + "' and [userPassword]='" + userPassword + "' and [userType] ='User'";
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
    public bool UserExistSignUp(string Email)
    {
        string userSqlStr = "select  [userEmail] from [UserTbl] where [userEmail]='" + Email + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }

    public bool CheckAdmin2(string userEmail, string userPassword)
    {
        string userSqlStr = "select  * from [UserTbl] where [userEmail]='" + userEmail + "' and [userPassword]='" + userPassword + "' and [userTybe]='Admin' ";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");

        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }



    public void UpdatePassword(string newPassword)
    {

        string userSqlStr = "Update [UserTbl] Set [userPassword]='" + newPassword + "' where [userEmail]='" + this.userEmail + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDB.accdb");

    }
    public void UpdateAdminPassword(string newPassword)
    {

        string userSqlStr = "Update [UserTbl] Set [userPassword]='" + newPassword + "' where [userEmail]='" + this.userEmail + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDB.accdb");

    }
    public bool CheckSCode(string SecretCode)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(HttpContext.Current.Server.MapPath("~/XMLCheckSCodeFile.xml"));
        DataTable dt = ds.Tables[0];
        if (dt != null)
            if (dt.Rows.Count > 0)
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["Code"].ToString() == SecretCode)
                        return true;
                }
        return false;
    }

    public void ConvertToUser(string Email)
    {
        string userSqlStr = "Update [UserTbl] Set [userType]='User' where [userEmail]='" + Email + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDB.accdb");
    }
    public void UpdateTime(string Email)
    {
        string CurrentDate = DateTime.Now.ToString();

        string userSqlStr = "Update [UserTbl] Set [LastLogIN]='" + CurrentDate + "' where [userEmail]='" + Email + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDB.accdb");
    }
    public string GetTime(string Email)
    {
        string userSqlStr = "select [LastLogIN] from [UserTbl] where [userEmail]='" + Email + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString();
        return " This Is Your First Visit To Your Account !! ";

    }

    public bool CheckLLog(string Email)
    {
        string userSqlStr = "select  [LastLogIN] from [UserTbl] where [userEmail]='" + Email + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }
    public bool CheckIfUser(string Email)
    {
        string userSqlStr = "select  [userEmail] from [UserTbl] where [userEmail]='" + Email + "'and [userType] ='User'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }
    public bool CheckSQ(string Quastion, string Answer)
    {
        string userSqlStr = "select  [userEmail] from [UserTbl] where [userEmail]='" + this.userEmail + "' and [SQuastion]='" +
         Quastion + "' and [SAnswer]='" + Answer + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }

}