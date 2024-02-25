using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;
using System.Diagnostics;


public partial class signup : System.Web.UI.Page
{
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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string userEmail = UserNBox.Text;
        string UserPassword = RePassBox.Text;
        string UserFirstName = FNameBox.Text;
        string UserLastName = LNameBox.Text;
        string city = cityBox.Text;
        string Gender = DropDownList1.SelectedValue.ToString();
        string UserType = "Customer";
        if (!UserExist(userEmail, UserPassword))
        {
            if (RePassBox.Text == PassBox.Text)
            {

                string str = "insert into UserTbl (UserEmail,UserPassword,UserFirstName,UserLastName,city,Gender,userType) values ('" + userEmail + "','" + UserPassword + "','" + UserFirstName + "','" + UserLastName + "','" + city + "','" + Gender + "','" + UserType + "')";
                DBFunctions.ChangeTable(str, "UserDB.accdb");
                Label4.Visible = true;
            }
       
        else
        {
            Label3.Visible = true;
        }
        }
        else
        {
            Label2.Visible = true;
        }
    }
}