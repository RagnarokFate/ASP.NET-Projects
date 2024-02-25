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

public class UserClass
{

    private string userEmail;
    private string userPassword;
    private string FirstName;
    private string LastName;
    private string age;
    private string userType;



    public UserClass()

    {
        this.userType = "Guest";
    }


    public string Username
    {
        get { return userEmail; }
        set { this.userEmail = value; }
    }


    public string Pass
    {
        get { return userPassword; }
        set { this.userPassword = value; }
    }


    public string UserFirstName
    {
        get { return FirstName; }
        set { this.FirstName = value; }
    }


    public string UserLastName
    {
        get { return LastName; }
        set { this.LastName = value; }
    }


    public string Userage
    {
        get { return age; }
        set { this.age = value; }
    }


    public string UserType
    {
        set { this.userType = value; }
        get { return this.userType; }
    }


    // =========================================================================   
    public bool UserExist(string userEmail, string userPassword)
    {
        string userSqlStr = "select  [email] from [usersTable] where [email]='" +
            userEmail + "' and [password]='" + userPassword + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "Users.mdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }

    public string UserDetails(string userEmail)
    {
        string userSqlStr = "select  [UserFirstName] , [UserLastName] from [usersTable] where [userEmail]='" + userEmail + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "Users.mdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0][0].ToString() + " " + dt.Rows[0][1].ToString();
        return " ";

    }

    public bool CheckAdmin2(string userEmail, string userPassword)
    {
        string userSqlStr = "select  * from [usersTable] where [email]='" + userEmail + "' and [password]='" + userPassword + "' and [userTybe]='Admin' ";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "Users.mdb");

        if (dt.Rows.Count > 0)
            return true;
        else
            return false;
    }



    public bool UserExistSignUp()
    {
        string userSqlStr = "select  [email] from [usersTable] where [email]='" + this.userEmail + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "Users.mdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }

    public void UpdatePassword(string newPassword)
    {

        string userSqlStr = "Update [usersTable] Set [password]='" + newPassword + "' where [email]='" + this.userEmail + "'";
        DBFunctions.ChangeTable(userSqlStr, "Users.mdb");


    }

    public void DeleteUser()
    {
        string userSqlStr = "Delete  from [usersTable] where [email]='" + this.userEmail + "'";
        DBFunctions.ChangeTable(userSqlStr, "Users.mdb");

    }


    public void UpdateFname(string newFname)
    {

        string userSqlStr = "Update [usersTable] Set [firstName]='" + newFname + "'";
        DBFunctions.ChangeTable(userSqlStr, "Users.mdb");


    }
    public void UpdateLname(string newLname)
    {

        string userSqlStr = "Update [usersTable] Set [lastName]='" + newLname + "'";
        DBFunctions.ChangeTable(userSqlStr, "Users.mdb");


    }

    public void UpdateGender(string newGender)
    {

        string userSqlStr = "Update [usersTable] Set [gender]='" + newGender + "'";
        DBFunctions.ChangeTable(userSqlStr, "Users.mdb");


    }


    public void UpdateCountry(string newCountry)
    {

        string userSqlStr = "Update [usersTable] Set [country]='" + newCountry + "'";
        DBFunctions.ChangeTable(userSqlStr, "Users.mdb");


    }

}