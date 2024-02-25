using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddHotel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into [PlanesTbl] ([PlaneID],[PlaneCompany],[PlaneFrom],[PlaneTo],[DateOff],[TimeOff],[DateReturn],[TimeReturnOff],[Price]) Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
        DBFunctions.ChangeTable(str, "asadDataBase.mdb");
        Image1.Visible = true;
    }
}