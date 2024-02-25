using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class login : System.Web.UI.Page
{
    public bool CustomerExist(string Email,string password)
    {
        string str = "select * from [usertbl] where username='" +  Email + "' And password='" + password + "' And [UserType]='" + "Customer" + "'";
        DataTable dt = DBFunctions.SelectFromTable(str, "samadata.mdb");
        if (dt.Rows.Count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public bool AdminExist(string Email,string password)
    {
        string str = "select * from [usertbl] where username='" +  Email + "' And password='" + password + "' And [UserType]='" + "Admin" + "'";
        DataTable dt = DBFunctions.SelectFromTable(str, "samadata.mdb");
        if (dt.Rows.Count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if(CustomerExist(TextBox1.Text,TextBox2.Text))
        {
             Session["Pass"] = TextBox2.Text;
            Session["username"] = TextBox1.Text;
            Response.Redirect("~/HomeCos.aspx");
        }
        if (AdminExist(TextBox1.Text, TextBox2.Text))
        {
            Session["Pass"] = TextBox2.Text;
            Session["username"] = TextBox1.Text;
            Response.Redirect("~/HomeAdmin.aspx");
        }
        else
            Label1.Visible = true;

    }
}
           