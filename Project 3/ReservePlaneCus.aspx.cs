using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReservePlane : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = GridView1.SelectedIndex;
        string PlaneID = GridView1.SelectedRow.Cells[0].Text;
        string PlaneCompany = GridView1.SelectedRow.Cells[1].Text;
        string PlaneFrom = GridView1.SelectedRow.Cells[2].Text;
        string PlaneTo = GridView1.SelectedRow.Cells[3].Text;
        string DateOff = GridView1.SelectedRow.Cells[4].Text;
        string TimeOff = GridView1.SelectedRow.Cells[5].Text;
        string DateReturn = GridView1.SelectedRow.Cells[6].Text;
        string TimeReturnOff = GridView1.SelectedRow.Cells[7].Text;
        string Price = GridView1.SelectedRow.Cells[8].Text;

        string str = "insert into [RecieptP] ([PlaneID],[PlaneCompany],[PlaneFrom],[PlaneTo],[DateOff],[TimeOff],[DateReturn],[TimeReturnOff],[Price]) Values('" + PlaneID + "','" + PlaneCompany + "','" + PlaneFrom + "','" + PlaneTo + "','" + DateOff + "','" + TimeOff + "','" + DateReturn + "','" + TimeReturnOff + "','" + Price + "')";

        DBFunctions.ChangeTable(str, "asadDataBase.mdb");


        Response.Redirect("~/ReserveHotelCus.aspx");
    }
}