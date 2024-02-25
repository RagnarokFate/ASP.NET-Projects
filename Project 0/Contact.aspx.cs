using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string FirstN = FirstName.Text;
        string LastN = LastName.Text;
        string Subj = Subject.Text;
        string Mess = MBox.Text;
        string Date = System.DateTime.Now.ToShortDateString();
        string Time = System.DateTime.Now.ToShortTimeString();
        string str = "insert into [MessageTbl] ([FirstName],[LastName],[Subject],[Message],[Date],[Time]) values ('" + FirstN + "','" + LastN + "','" + Subj + "','" + Mess  + "','" + Date + "','" + Time + "')";
        DBFunctions.ChangeTable(str, "UserDB.accdb");
        Sent.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        FirstName.Text = " ";
        LastName.Text = " ";
        Subject.Text = " ";
        MBox.Text = " ";
    }
}