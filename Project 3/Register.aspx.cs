using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Email = TextBox1.Text;
        string Fullname = TextBox2.Text;
        string Password = TextBox3.Text;
        string RePassword = TextBox4.Text;
        string str = "insert into [userTbl] ([userName],[passWord],[Fullname],[Status]) Values('" + Email + "','" + Password + "','" + Fullname + "','" + "Customer" + "')";

        if (Password==RePassword)
        {
            DBFunctions.ChangeTable(str, "asadDataBase.mdb");
            Label3.Visible = true;

        }
        else
        {
            Label2.Visible = true;
        }
    }
}