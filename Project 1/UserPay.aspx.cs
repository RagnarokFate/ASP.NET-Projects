using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Type"] == null || Session["Type"].ToString() != "user")
            Response.Redirect("~/login.aspx");
        
        Label2.Text = Session["total"].ToString();
        //Context.Session["hour"] = DateTime.Now;
        //Label2.Text = Session["hour"].ToString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((this.visaNoBox.Text.Length > 0) & (this.accNoBox.Text.Length > 0) & (this.Label7.Text != "") & (this.DropDownList1.SelectedValue != "Select Your Visa Type"))
        {
            if ((!this.visaNoBox.Text.All(c => char.IsNumber(c))) & (!this.accNoBox.Text.All(d => char.IsNumber(d))) & (this.Label7.Text != null))
            {

                this.Label9.Text = " Enter Numbers Only !!!";
               
            }
            else
            {
               
                VisaWS v1 = new VisaWS();

                if (v1.ValidVisaDetails(int.Parse(this.visaNoBox.Text), int.Parse(this.accNoBox.Text), this.DropDownList1.SelectedValue, this.Label7.Text))
                {
                    if (v1.CheckVisaBalance(int.Parse(this.visaNoBox.Text), int.Parse(this.accNoBox.Text), this.DropDownList1.SelectedValue, double.Parse(this.Label2.Text)))
                    {
                        v1.UpdateVisaAccount(int.Parse(this.visaNoBox.Text), int.Parse(this.accNoBox.Text), this.DropDownList1.SelectedValue, double.Parse(this.Label2.Text));
                        this.Label9.Text = "  A Successful Process !!";

                        string sqlMsgStr2 = "DELETE  FROM ShoppingCartTbl WHERE Email ='" + Session["email"].ToString() + "'";
                        DBFunctions.ChangeTable(sqlMsgStr2, "UserDB.accdb");
                        DropDownList1.Text = "";
                        visaNoBox.Text = "";
                        accNoBox.Text = "";
                        Label7.Text = "";
                    }
                    else
                        this.Label9.Text = " No Balance !!";
                   
                }
                else
                    this.Label9.Text = "Invalid Visa ";
             
            }
        }
        else
           this.Label9.Text = "Fill The Missing Areas !! ";
    }
    
    
    protected void Button2_Click(object sender, EventArgs e)
    {
       // DropDownList1.Text = "Visa";
    //    accNoBox.Text = DropDownList1.SelectedValue;
       Response.Redirect("~/CartCus.aspx");

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        this.Label7.Text = this.Calendar1.SelectedDate.ToShortDateString().ToString();
    }
}