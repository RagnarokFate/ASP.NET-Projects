using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Recipet : System.Web.UI.Page
{
    public string UserDetailsP()
    {
        string userSqlStr = "select *  from [RecieptP] ";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "asadDataBase.mdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0]["Price"].ToString();
        return "0";

    }
    public string UserDetailsH()
    {
        string userSqlStr = "select *  from [RecieptH] ";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "asadDataBase.mdb");
        if (dt.Rows.Count > 0)
            return dt.Rows[0]["Price"].ToString();
        return "0";

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Visible = true;
        Button2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string PriceP = UserDetailsP();
        Label2.Visible = true;
        Label2.Text = PriceP;
        Button2.Visible = true;
        Button1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string PriceH = UserDetailsH();
        Label3.Visible = true;
        Label3.Text = PriceH;
        Button2.Visible = false;
        Panel1.Visible = true;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button4.Visible = true;
        string DateASD;
        DateASD = (double.Parse(TextBox2.Text) - double.Parse(TextBox1.Text)).ToString();
        Label4.Text = (double.Parse(Label2.Text) + (double.Parse(DateASD) * double.Parse(Label3.Text))).ToString();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session["Total"] = Label4.Text;
        Response.Redirect("~/CheckOut.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        string s1 = "Delete * From [RecieptP] ";
        string s2 = "Delete * From [RecieptH] ";
        DBFunctions.ChangeTable(s1, "asadDataBase.mdb");
        DBFunctions.ChangeTable(s2, "asadDataBase.mdb");
        Response.Redirect("HomeCus.aspx");
    }
}