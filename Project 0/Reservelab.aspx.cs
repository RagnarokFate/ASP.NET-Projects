using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Reservelab : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["UserType"] != "Customer" || Session["ConEmail"] == null)
            Response.Redirect("~/Login.aspx");
        else
        {
            revDOE1.Visible = false;
            string userSqlStr = "select  * from [ReservationData] where [Username]='" + Session["ConEmail"].ToString() + "'";
            DataTable dt = DBFunctions.SelectFromTable(userSqlStr, "UserDB.accdb");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    protected void txtDOE1_TextChanged(object sender, EventArgs e)
    {
        if (revDOE1.Visible == true)
        {
            txtDOE1.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //ReservationCheck sq = new ReservationCheck();
        //if(sq.IsExpiredDate(txtDOE1.Text)== true)
        //{
        //    Label1.Text = "Chose Other UnExpired Date";
        //    Label1.Visible = true;
        //}
        ReservationCheck qe = new ReservationCheck();
        if (qe.DateAvailable(Session["ConEmail"].ToString(), txtDOE1.Text))
        {
            Label1.Text = "Confirmed Reservation";
            Session["total"] = 450;
            Response.Redirect("~/CheckOut.aspx");
            

        }
        else
        {
            Label1.Text = "Chose Other Date";
            Label1.Visible = true;
        }
    }
}