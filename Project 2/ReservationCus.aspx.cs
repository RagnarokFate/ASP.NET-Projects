using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Reservation : System.Web.UI.Page
{
    public string ExtractPrice(string typep)
    {
        string str = "Select [Price] From [SetsPrices] where [Type]='" + typep + "'";
        DataTable dt = DBFunctions.SelectFromTable(str,"UserDBP.mdb");
        return dt.Rows[0][0].ToString();

    }
    public void ClearTable()
    {
        string sqr = "Select * From [ReservePhoto]";
        string ssr = "Delete * From [ReservePhoto]";

        DataTable dt = DBFunctions.SelectFromTable(sqr, "UserDBP.mdb");
        if(dt.Rows.Count >0)
        {
            DBFunctions.ChangeTable(ssr, "UserDBP.mdb");
        }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        ClearTable();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string str = "insert into [ReservePhoto] ([FullName],[Email],[Photographer],[Area],[EventDate],[EventTime],[PhoneNumber]) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue.ToString() + "','" + TextBox6.Text + "','" + Label2.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "')";
        DBFunctions.ChangeTable(str, "UserDBP.mdb");
        Session["total"] = Label3.Text;
        Response.Redirect("~/Reciept.aspx");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label2.Text = Calendar1.SelectedDate.ToShortDateString();
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label3.Text = ExtractPrice(DropDownList2.SelectedValue.ToString());
        Session["total"] = Label3.Text;
    }
}