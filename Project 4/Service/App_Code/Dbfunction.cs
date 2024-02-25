using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public class DBFunctions
{
    // string ConnectionString =ConfigurationManager.AppSettings["UserDBPath"]; 

    public DBFunctions()
    {
    }

    public static OleDbConnection GenerateConnection(string dbFileName)
    {
        OleDbConnection conObj = new OleDbConnection();
        conObj.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + dbFileName) + ";Persist Security Info=False";
        conObj.Open(); 
        return conObj;
    }

    public static DataTable SelectFromTable(string sqlString, string dbFileName)
    {
        OleDbConnection conObj = GenerateConnection(dbFileName);

        OleDbCommand cmd = new OleDbCommand();
        cmd.CommandText = sqlString;
        cmd.Connection = conObj;

        OleDbDataAdapter daObj = new OleDbDataAdapter(sqlString, conObj);
        DataSet dsUser = new DataSet();
        daObj.Fill(dsUser);
        DataTable dt = dsUser.Tables[0];
        conObj.Close();
        return dt;
    }

    

    public static void ChangeTable(string sqlString, string dbFileName)
    {
        OleDbConnection conObj = GenerateConnection(dbFileName);
        OleDbCommand cmd = new OleDbCommand(sqlString, conObj);
        cmd.ExecuteNonQuery();
        conObj.Close();
    }
}
