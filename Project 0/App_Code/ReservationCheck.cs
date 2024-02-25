using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
/// <summary>
/// Summary description for ReservationCheck
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class ReservationCheck : System.Web.Services.WebService
{

    public ReservationCheck()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }

    public bool DateAvailable(string UserEmail, string Date)
    {
        string Sqlstr = "Select * from [ReservationData] where [Username]='" + UserEmail + "' and [Date]='" + Date + "'";
        DataTable dt = DBFunctions.SelectFromTable(Sqlstr, "UserDB.accdb");
        if (!(dt.Rows.Count > 0))
            return true;
        else return false;
    }
    //public bool IsExpiredDate(string Date)
    //{
    //    DateTime TodayDate = DateTime.Today;
    //    DateTime dta = Convert.ToDateTime(Date);
    //    if (dta > TodayDate)
    //    {
    //        return false;
    //    }
    //    return true;
    public void ClearShopCart()
    {
        string Sqlstr = "delete * from [ShoppingCartTbl] ";
        DBFunctions.ChangeTable(Sqlstr, "UserDB.accdb");
    }

}



