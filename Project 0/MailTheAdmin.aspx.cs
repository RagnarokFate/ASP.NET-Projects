using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;  

public partial class MailTheAdmin : System.Web.UI.Page
{
    public void MsgBox(string Msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'>alert('" + Msg + "')</script>");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != "Customer" || Session["ConEmail"] == null)
            Response.Redirect("~/Login.aspx");
        else
        {
            string userSqlStr = "select  * from [CustomerMail] where [Username]='" + Session["ConEmail"].ToString() + "'";
            DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string Subj = TextBox2.Text;
        string Mess = TextBox1.Text;
        string Date = System.DateTime.Now.ToShortDateString();
        string Time = System.DateTime.Now.ToShortTimeString();
        string str = "insert into [MailReceiver] ([UserName],[Subject],[Message],[Date],[Time]) values ('" + Session["ConEmail"].ToString() + "','" + Subj + "','" + Mess + "','" + Date + "','" + Time + "')";
        DBFunctions.ChangeTable(str, "UserDB.accdb");
        Sent.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string sqlMsgStr2 = "DELETE * FROM CustomerMail where [Username]='" + Session["ConEmail"].ToString() + "'";
        DBFunctions.ChangeTable(sqlMsgStr2, "UserDB.accdb");
        MsgBox("Chat Has Been Cleared!!");
        GridView1.DataBind();
    }
}