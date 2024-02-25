using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactUsCus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Type"] == null || Session["Type"].ToString() != "user")
            Response.Redirect("~/login.aspx");
        Label2.Text = Session["user"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string messageBody = this.TextBox3.Text;
        string sqlMsgStr = "insert into [MsgTbl]([messageFrom],[messageSubject],[messageBody],[messageRead]) values('";
        sqlMsgStr += Session["email"].ToString() + "' ,'" + this.DropDownList1.SelectedValue + "','" + this.TextBox3.Text + "', false)";
        DBFunctions.ChangeTable(sqlMsgStr, "UserDB.accdb");
        this.Label1.Visible = true;
        TextBox3.Text = "";

    }
}