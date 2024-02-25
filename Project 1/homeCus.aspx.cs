using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homeCus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserClass user1 = new UserClass();
        if (Session["Type"] == null || Session["Type"].ToString() != "user")
            Response.Redirect("~/login.aspx");
        else
        {
            Label2.Text = Session["user"].ToString();
         //   Label1.Text = Application["NoOfVisitors"].ToString();
            Label3.Text = user1.GetTime(Session["email"].ToString());
          
            
        }
    /*    int a;
        a = Convert.ToInt32((Application["myCount"]));
        Label1.Text = Convert.ToString(a);
        if (a < 10)
            Label1.Text = "000" + Label1.Text;
        else if (a < 100)
            Label1.Text = "00" + Label1.Text;
        else if (a < 1000)
            Label1.Text = "0" + Label1.Text;
     */
     //   Label1.Text = Application["myCount"].ToString();
        

    }
}