using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Data;
using System.Diagnostics;


public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  DropDownList2.DataSource = GetCountry();
       // DropDownList2.DataBind();
        //DropDownList2.Items.Insert(0, "Select");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        DropDownList1.Text = "";


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        UserClass user1 = new UserClass();

        if ((this.TextBox2.Text.Length > 3) & (this.TextBox7.Text.Length > 3) &(this.TextBox1.Text.Length>3))
        {
            if (!user1.UserExistSignUp(this.TextBox1.Text))
            {     
 
                Session["email"] = this.TextBox1.Text;
                Session["Password"] = this.TextBox2.Text;
                Session["FName"] = this.TextBox3.Text;
                Session["LName"] = this.TextBox4.Text;
                Session["City"] = this.TextBox5.Text;
                Session["Gender"] = this.DropDownList1.Text;


                this.Label2.Visible = false;
                this.Label3.Visible = false;
              

                
                Response.Redirect("~/SecurityQ.aspx");
            }
            else
            {
                this.Label2.Text = "This Email is already Taken";
                this.Label3.Visible = false;
            }
           
        }
        else
        {
            this.Label3.Text = "E-mail And Password Minimum Characters Required Is 4 " ;
            this.Label2.Visible = false;
        }
    }
    /*public List<string> GetCountry()
    {
        List<string> list = new List<string>();
        CultureInfo[] cultures = CultureInfo.GetCultures(CultureTypes.InstalledWin32Cultures | CultureTypes.SpecificCultures);
        foreach (CultureInfo info in cultures)
        {
            RegionInfo info2 = new RegionInfo(info.LCID);
            if (!list.Contains(info2.EnglishName))
            {
                list.Add(info2.EnglishName);
            }
        }

        return list;
    }
    */
    /// <summary>
    ///  string sqlMsgStr2 = "insert into [UserTbl]([userEmail],[userPassword],[userFirstName],[userLastName],[city],[Gender],[userType]) values('";
    /// sqlMsgStr2 += this.TextBox1.Text + "' ,'" + this.TextBox2.Text + "','" + this.TextBox3.Text + this.TextBox4.Text + this.TextBox5.Text + this.TextBox6.Text + this.TextBox7.Text)";
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>



   
}