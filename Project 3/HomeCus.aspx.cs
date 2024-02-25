using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeCus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserClass Asd = new UserClass();
        string s1 = "Delete * From [RecieptP] ";
        string s2 = "Delete * From [RecieptH] ";
        DBFunctions.ChangeTable(s1, "asadDataBase.mdb");
        DBFunctions.ChangeTable(s2, "asadDataBase.mdb");
    }
}