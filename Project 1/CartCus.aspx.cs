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

public partial class CartCus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Type"] == null || Session["Type"].ToString() != "user")
            Response.Redirect("~/login.aspx");


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        double total = 0;

        foreach (GridViewRow row in GridView1.Rows)
        {
           
                total = total + double.Parse(row.Cells[3].Text) * double.Parse(row.Cells[4].Text);
                Label1.Text = total.ToString();
                Label1.Visible = true;
                Label6.Visible = true;
        }
                if (total == 0)
                {
                    this.Label7.Text = "There Isn't Product To Buy !!";
                }
                else
                {
                    Session.Remove("total");

                  Session["total"] = this.Label1.Text;

                       Response.Redirect("~/UserPay.aspx");

            } 
    }

    
        

        // make the quantity invalid when update to letter
    
    protected void Button2_Click(object sender, EventArgs e)
    {

        double total = 0;

        foreach (GridViewRow row in GridView1.Rows)
        {
           
                total = total + double.Parse(row.Cells[3].Text) * double.Parse(row.Cells[4].Text);
                Label1.Text = total.ToString();
                Label1.Visible = true;
                Label6.Visible = true;
           
            }
 Session.Remove("total");
           Session["total"] = this.Label1.Text;
    } 
          
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

