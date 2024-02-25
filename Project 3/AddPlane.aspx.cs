using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddPlane : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into [PlanesTbl] ([PlaneID],[PlaneCompany],[PlaneFrom],[PlaneTo],[DateOff],[TimeOff],[DateReturn],[TimeReturnOff],[Price]) Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
        DBFunctions.ChangeTable(str, "asadDataBase.mdb");
        Label1.Visible = true;
        Button1.Visible = false;
        GridView1.DataBind();
    }
}