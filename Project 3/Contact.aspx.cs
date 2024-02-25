using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact_Us : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into [ContactTbl] ([Fullname],[Topic],[PhoneNumber],[Message]) Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        DBFunctions.ChangeTable(str, "asadDataBase.mdb");
        Image1.Visible = true;
        Button1.Visible = false;
    }
}