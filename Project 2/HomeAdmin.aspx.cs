using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeAdmin : System.Web.UI.Page
{
    public void AppointHim(string Fullname)
    {
        string str = "Update [MessageTbl] Set [On/Off]='" + "1" + "' where [FullName]='" + Fullname + "'";
        DBFunctions.ChangeTable(str, "UserDBP.mdb");

    }
    public void KickHim(string Fullname)
    {
        string str = "Update [MessageTbl] Set [On/Off]='" + "0" + "' where [FullName]='" + Fullname + "'";
        DBFunctions.ChangeTable(str, "UserDBP.mdb");

    }
    public void AddPhotographer(string Fullname,string state)
    {
        string str = "insert into [PhotographersList] ([FullName],[State]) values ('" + Fullname + "','" + state + "')";
        DBFunctions.ChangeTable(str, "UserDBP.mdb");
    }
    public void DeletePhotographer(string Fullname)
    {
        string str = "Delete * From [PhotographersList] WHERE [FullName] ='" + Fullname + "'";
        DBFunctions.ChangeTable(str, "UserDBP.mdb");

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedValue.ToString()== "On")
        {
            AppointHim(DropDownList2.SelectedValue.ToString());
            AddPhotographer(DropDownList2.SelectedValue.ToString(), "On");
            Label2.Text = "Deal Has Been Set"; 
            Label2.Visible = true;
            GridView1.DataBind();
        }
        else
            if(DropDownList1.SelectedValue.ToString()=="Off")
            {
                KickHim(DropDownList2.SelectedValue.ToString());
                DeletePhotographer(DropDownList2.SelectedValue.ToString());
                Label2.Text = "Kicked From Job";
                Label2.Visible = true;
                GridView1.DataBind();
               

            }
    }
}