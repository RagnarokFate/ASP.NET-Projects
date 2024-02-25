using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SecurityQ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Label2.Text = Session["email"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        UserClass user1 = new UserClass();

       
        if ((this.TextBox1.Text.Length > 3))
        {
            string Quastion = this.DropDownList1.Text;
            string Answer = this.TextBox1.Text;
            string sqlMsgStr2 = "insert into [UserTbl]([userEmail],[userPassword],[userFirstName],[userLastName],[city],[Gender],[userType],[SQuastion],[SAnswer]) values('";
            sqlMsgStr2 += Session["email"].ToString() + "','" + Session["Password"].ToString() + "','" + Session["FName"].ToString() + "','" + Session["LName"].ToString() + "','" + Session["City"].ToString() + "','" + Session["Gender"].ToString() + "','" + "User" + "','" + Quastion + "','" + Answer + "')";

            DBFunctions.ChangeTable(sqlMsgStr2, "UserDB.accdb");
            Session["Type"] = "user";
            Session["user"] = user1.UserDetails(Session["email"].ToString());

            Response.Redirect("~/homeCus.aspx");
        }
        else
        {
            this.Label1.Text = "Answer Minimum Characters Required Is 4 ";

        }

    }
}