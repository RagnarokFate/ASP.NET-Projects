using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into [MessageTbl] ([FirstName],[LastName],[Subject],[Message]) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";

        DBFunctions.ChangeTable(str, "samadata.mdb");
        Label1.Visible = true;
        Button1.Visible = false;

    }
}
