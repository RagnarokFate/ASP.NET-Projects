using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReserveHotel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = GridView1.SelectedIndex;
        string HotelID = GridView1.SelectedRow.Cells[0].Text;
        string HotelName = GridView1.SelectedRow.Cells[1].Text;
        string HotelLocation = GridView1.SelectedRow.Cells[2].Text;
        string HotelRate = GridView1.SelectedRow.Cells[3].Text;
        string price = GridView1.SelectedRow.Cells[4].Text;
        string str = "insert into [RecieptH] ([HotelID],[HotelName],[HotelLocation],[HotelRate],[Price]) Values('" + HotelID + "','" + HotelName + "','" + HotelLocation + "','" + HotelRate + "','" + price + "')";

        DBFunctions.ChangeTable(str, "asadDataBase.mdb");


        Response.Redirect("~/Recipet.aspx");
    }
}