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

public partial class CheckOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Type"] != "Customer")
        //    Response.Redirect("~/Login.aspx");
        Label2.Text = Session["total"].ToString();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        VisaWS v1 = new VisaWS();
        if (v1.ValidVisaDetails(int.Parse(this.visaNoBox.Text), int.Parse(this.accNoBox.Text), this.DropDownList1.SelectedValue, this.Label7.Text))
        {
            this.Label8.Text = "Valid Ok !!";
            if (v1.CheckVisaBalance(int.Parse(this.visaNoBox.Text), int.Parse(this.accNoBox.Text), this.DropDownList1.SelectedValue, double.Parse(this.Label2.Text)))
            {
                this.Label9.Text = "  Balance ok !!";
                v1.UpdateVisaAccount(int.Parse(this.visaNoBox.Text), int.Parse(this.accNoBox.Text), this.DropDownList1.SelectedValue, double.Parse(this.Label2.Text));
                this.Label9.Text = "  Congratulations !!";
                // lazm nfade my card ...

            }
            else
                this.Label9.Text = " No Balance !!";
        }
        else
            this.Label8.Text = "Valid No Ok !!";
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/HomeCustomer.aspx");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        this.Label7.Text = this.Calendar1.SelectedDate.ToShortDateString().ToString();
    }
}
