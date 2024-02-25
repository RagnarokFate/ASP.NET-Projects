using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class AdminsEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Type"] == null || Session["Type"].ToString() != "Admin")
            Response.Redirect("~/login.aspx");
    }
    public bool CheckSCode(string SecretCode)
    {
        DataSet ds = new DataSet();
        ds.ReadXml(HttpContext.Current.Server.MapPath("~/XMLCheckSCodeFile.xml"));
        DataTable dt = ds.Tables[0];
        if (dt != null)
            if (dt.Rows.Count > 0)
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (dt.Rows[i]["Code"].ToString() == SecretCode)
                        return true;
                }
        return false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        UserClass user1 = new UserClass();

        if (CheckSCode(this.TextBox1.Text))
        {
            user1.ConvertToUser(this.DropDownList1.SelectedValue);
            Label1.Text = "He Is User Now!";
        }
        else
        {
            Label1.Text = " Security Code Is Wrong";
        }
    }
}