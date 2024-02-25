using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class HomeAdm : System.Web.UI.Page
{
    public void MsgBox(string Msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'>alert('" + Msg + "')</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != "Admin" || Session["ConEmail"] == null)
            Response.Redirect("~/Login.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string ID = DropDownList1.SelectedValue.ToString();
        string Subj = TextBox2.Text;
        string Mess = TextBox3.Text;
        string Date = System.DateTime.Now.ToShortDateString();
        string Time = System.DateTime.Now.ToShortTimeString();
        string str = "insert into CustomerMail ([Username],[Subject],[Message],[Date],[Time]) values ('" + ID + "','" + Subj + "','" + Mess + "','" + Date + "','" + Time + "')";
        DBFunctions.ChangeTable(str, "UserDB.accdb");
        Sent.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string sqlMsgStr2 = "DELETE * FROM MailReceiver ";
        DBFunctions.ChangeTable(sqlMsgStr2, "UserDB.accdb");
        MsgBox("Chat Has Been Cleared!!");
        GridView1.DataBind();
        
    }
}