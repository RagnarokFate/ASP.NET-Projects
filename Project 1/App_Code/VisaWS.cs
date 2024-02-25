using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Xml.Linq;
using System.Data;

/// <summary>
/// Summary description for VisaWS
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class VisaWS : System.Web.Services.WebService
{

    public VisaWS()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    [WebMethod]
    public DataTable GetVisaTable()
    {
        string sqlStr = "Select [VisaNumber], [Cash], [VisaType], [AccountNumber], [Credit], [ExpirationDate] From [VisaTbl]";
        DataTable dt = DBFunctions.SelectFromTable(sqlStr, "UserDB.accdb");
        return dt;
    }

    [WebMethod]
    public bool ValidVisaDetails(int visaNumber, int accNumber, string visaType, string date)
    {
        DateTime todayDate = new DateTime(1000, 12, 2);
        string sqlStr = "Select * From [VisaTbl] where [VisaNumber]='" + visaNumber.ToString() + "' and [VisaType]='" + visaType.ToString() + "'and [AccountNumber]='" + accNumber.ToString() + "'";
        DataTable dt = DBFunctions.SelectFromTable(sqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            todayDate = Convert.ToDateTime(dt.Rows[0]["ExpirationDate"].ToString());
        DateTime datenew = Convert.ToDateTime(date);
        int result = DateTime.Compare(datenew, todayDate);
        if (dt.Rows.Count > 0)
            if (result <= 0)
                return true;
        return false;
    }

    [WebMethod]
    public bool CheckVisaBalance(int visaNumber, int accountNumber, string visaType, double total)
    {
        double cash = 0;
        int credit = 0;
        string sqlStr = "Select * From [VisaTbl] where [VisaNumber]='" + visaNumber.ToString() + "' and [VisaType]='" + visaType + "'and [AccountNumber]='" + accountNumber.ToString() + "'";
        DataTable dt = DBFunctions.SelectFromTable(sqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
        {
            cash = Convert.ToDouble(dt.Rows[0]["Cash"]);
            credit = -1 * Convert.ToInt32(dt.Rows[0]["Credit"]);
        }
        double result = cash - total;
        if (result > credit)
            return true;
        return false;
    }

    [WebMethod]
    public void UpdateVisaAccount(int visaNumber, int accountNumber, string visaType, double total)
    {
        double cash = 0;
        string sqlStr = "Select * From [VisaTbl] where [VisaNumber]='" + visaNumber.ToString() + "' and [VisaType]='" + visaType + "'and [AccountNumber]='" + accountNumber.ToString() + "'";
        DataTable dt = DBFunctions.SelectFromTable(sqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            cash = Convert.ToDouble(dt.Rows[0]["Cash"]);
        double result = cash - total;
        string SqlStr = "Update [VisaTbl] Set [Cash]='" + result.ToString() + "' Where [VisaNumber]='" + visaNumber.ToString() + "' and [VisaType]='" + visaType + "'and [AccountNumber]='" + accountNumber.ToString() + "'";
        DBFunctions.ChangeTable(SqlStr, "UserDB.accdb");
    }

    [WebMethod]
    public void UpdateSentTo(string reciever, int quantity, double price)
    {
        double total = quantity * price;
        double recieverCash = 0;
        string sqlStr = "Select * From [UserTable] where [eMailAddress]='" + reciever + "'";
        DataTable dt = DBFunctions.SelectFromTable(sqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
        {
            recieverCash = Convert.ToDouble(dt.Rows[0]["Credit"].ToString());
            total += recieverCash;
            string SqlStr = "Update [UserTable] Set [Credit]='" + total.ToString() + "' Where [eMailAddress]='" + reciever + "'";
            DBFunctions.ChangeTable(SqlStr, "UserDB.accdb");
        }
    }
}




