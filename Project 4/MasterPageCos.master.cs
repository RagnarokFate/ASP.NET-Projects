using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class MasterPageCos : System.Web.UI.MasterPage
{
    public string UserDetails(string username)
    {
        string str= "select firstname,lastname from usertbl where username='" + Session["username"].ToString() + "' And password='" + Session["pass"] + "'";
        DataTable dt = DBFunctions.SelectFromTable(str, "samadata.mdb");
        if(dt.Rows.Count>0)
        {
            return dt.Rows[0][0].ToString()+ " " + dt.Rows[0][1].ToString();
        }
        return " ";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("~/login.aspx");
        else
        Label1.Text = UserDetails(Session["username"].ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Session.RemoveAll();
        Response.Redirect("~/login.aspx");
    }
}
