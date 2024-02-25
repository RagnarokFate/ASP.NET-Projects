using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class MasterPageCus : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    ///  <asp:CommandField ButtonType="Button" SelectText="Add to Cart" ShowSelectButton="True" />
    ///              <asp:BoundField DataField="productId" HeaderText="productId" SortExpression="productId" />
    ///<asp:TemplateField HeaderText="Quantity" Visible="true">
    ///  <ItemTemplate>
    ///     <asp:TextBox ID="txtquantity" runat="server" Visible="true" Width="25px"></asp:TextBox>
    /// </ItemTemplate>
    ///   </asp:TemplateField>



 /*   protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Cookies["userInfo"]["userName"] = Session["email"].ToString(); ;
        Response.Cookies["userInfo"]["lastVisit"] = DateTime.Now.ToString();
        Response.Cookies["userInfo"].Expires = DateTime.Now.AddDays(1);
        HttpCookie aCookie = new HttpCookie("userInfo");
        aCookie.Values["lastVisit"] = DateTime.Now.ToString();
        aCookie.Expires = DateTime.Now.AddDays(1);
        Response.Cookies.Add(aCookie);

        Response.Redirect("~/login.aspx");
    }
  */
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        UserClass user3 = new UserClass();

        if (user3.CheckLLog(Session["email"].ToString()))
        {
            user3.UpdateTime(Session["email"].ToString());
              Session.Clear();
             Session.RemoveAll();
              Session.Abandon();
       
            Response.Redirect("~/login.aspx");

        }
        else
        {
            string sqlMsgStr2 = "Update [UserTbl] Set [LastLogIN]='" + DateTime.Now.ToString() +"' where [userEmail]='" + Session["email"].ToString() + "'";
            DBFunctions.ChangeTable(sqlMsgStr2, "UserDB.accdb");
            string sqlMsgStr3 = "insert into [UserTbl]([LastLogIN]) values('";
            sqlMsgStr3 += DateTime.Now.ToString() +"') where [userEmail]='" + Session["email"].ToString() + "'";
            DBFunctions.ChangeTable(sqlMsgStr3, "UserDB.accdb");
               Session.Clear();
              Session.RemoveAll();
              Session.Abandon();
       
            Response.Redirect("~/login.aspx");
        }
    }
 /*   protected void Menu6_MenuItemClick(object sender, MenuEventArgs e)
    {
        UserClass user3 = new UserClass();

        if (user3.CheckLLog(Session["email"].ToString()))
        {
            user3.UpdateTime(Session["email"].ToString());
            Response.Redirect("~/login.aspx");

        }
        else
        {
            string sqlMsgStr2 = "Update [UserTbl] Set [LastLogIN]='" + DateTime.Now.ToString() + "' where [userEmail]='" + Session["email"].ToString() + "'";
            DBFunctions.ChangeTable(sqlMsgStr2, "UserDB.accdb");
            string sqlMsgStr3 = "insert into [UserTbl]([LastLogIN]) values('";
            sqlMsgStr3 += DateTime.Now.ToString() + "') where [userEmail]='" + Session["email"].ToString() + "'";
            DBFunctions.ChangeTable(sqlMsgStr3, "UserDB.accdb");
            Response.Redirect("~/login.aspx");
        }
    }
  * */
}

