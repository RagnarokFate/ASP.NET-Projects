using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button5.Visible = false;
        //DataTable dt = (DataTable)GridView1.DataSource;
        //if (dt.Rows.Count < 0)
        //    Response.Redirect("~/ReserveBuy.aspx");
    }

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
        Button2.Visible = false;
        Button5.Visible = true;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ProductsSale.aspx");

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string userSqlStr = "Delete  from [ShoppingCartTbl] where [Email]='" + Session["ConEmail"].ToString() + "'";
        DBFunctions.ChangeTable(userSqlStr, "UserDB.accdb");
        Response.Redirect("~/ProductsSale.aspx"); 
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["total"] = this.Label1.Text;
        Response.Redirect("~/CheckOut.aspx");
    }
}