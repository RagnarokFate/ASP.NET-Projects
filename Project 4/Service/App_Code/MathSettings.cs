using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
/// <summary>
/// Summary description for MathProb
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class MathProb : System.Web.Services.WebService
{

    public MathProb()
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
    public DataTable GetProblems()

    {
        string str = "Select From [MathProb]";
        DataTable dt = DBFunctions.SelectFromTable(str, "ServiceData.mdb");
        return dt;
    }
    [WebMethod]
    public void insertProb(string s1,string s2,string s3,string s4, string s5)
    {
        string Date = DateTime.Now.ToShortDateString();
        string time = DateTime.Now.ToShortTimeString();
        string str = "insert into [MathProb] ([Username],[FullName],[Class],[MessageBy],[Photo],[Date],[Time]) values('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "','" + Date + "','" + time + "')";
        DBFunctions.ChangeTable(str, "ServiceData.mdb");

    }
    [WebMethod]
    public void solveprob(string username, string subj, string photourl)
    {
        string str = "insert into [SolveProb] ([Username],[Subject],[Photo]) values('" + username + "','" + subj + "','" + photourl + "')";
        DBFunctions.ChangeTable(str, "ServiceData.mdb");
    }
    [WebMethod]

    public DataTable GetProblemsByUsername(string username)
    {
        string str = "Select From [MathProb] where [Username]='" + username +  "'";
        DataTable dt = DBFunctions.SelectFromTable(str, "ServiceData.mdb");
        return dt;

    }

}
