using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Subject = DropDownList1.SelectedValue.ToString();
        string Str = "Insert Into [MessageTbl]  ([FullName],[PhoneNum],[Subject],[Message],[On/Off]) values ('" + NBox.Text + "','" + NumBox.Text + "','" + Subject + "','" + TBox.Text + "','" + "0" +"')";
        DBFunctions.ChangeTable(Str, "UserDBP.mdb");
        Label1.Visible = true;
    }
}