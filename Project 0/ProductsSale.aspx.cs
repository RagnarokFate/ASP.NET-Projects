using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Reservation : System.Web.UI.Page
{
    public string Quantity(string ProductID)
    {
        string userSqlStr = "select ([Quantity]) from [productsTbl] where [productId]='" + ProductID + "'";
        DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
        string Quantity = dt.Rows[0][0].ToString();
        return Quantity;

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserType"] != "Customer" || Session["ConEmail"] == null)
            Response.Redirect("~/Login.aspx");
        
        ////string str = "select * from [ProductsTbl] where [category]='" + "Digital" + "' Or [category]='" + "Tool" + "'"; 
        ////DataTable dt = DBFunctions.SelectFromTable(str, "UserDB.accdb");
        ////GridView1.DataSource = dt;
        ////GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = GridView1.SelectedIndex;
        string productID = GridView1.SelectedRow.Cells[0].Text;
        string productName = GridView1.SelectedRow.Cells[1].Text;
        string price = GridView1.SelectedRow.Cells[2].Text;
        TextBox tb = (TextBox)GridView1.SelectedRow.Cells[4].FindControl("txtquantity");
        string quantity = tb.Text;

        if (int.Parse(Quantity(productID)) < int.Parse(quantity))
        {
            Label1.Visible = true;
        }
        else
        {
            string sqlstr = "Insert into [ShoppingCartTbl] ([Email], [productID],[productName], [Price],[Quantity])";
            sqlstr += "values ('" + Session["ConEmail"].ToString() + "','" + productID + "','" + productName + "','" + price + "','" + quantity + "')";
            DBFunctions.ChangeTable(sqlstr, "UserDB.accdb");
            GridView1.DataBind();

            Response.Redirect("~/Cart.aspx");
        }
    }
}