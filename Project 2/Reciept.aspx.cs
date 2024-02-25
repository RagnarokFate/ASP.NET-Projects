using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reciept : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str = "Delete * from [ReservePhoto]";
        DBFunctions.ChangeTable(str, "UserDBP.mdb");
        Response.Redirect("~/HomeCustomer.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Pay.aspx");
    }
}