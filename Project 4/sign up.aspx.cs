using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;



public partial class sign_up : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "insert into [usertbl] ([username],[password],[firstname],[lastname],[age],[course],[UserType]) values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedIndex.ToString() + "','" +  "Customer"   + "')";
        string s = "select username from usertbl  where username='" + TextBox3.Text + "'";
        DataTable dt = DBFunctions.SelectFromTable(s, "samadata.mdb");
        if (dt.Rows.Count > 0)
        { Label3.Visible = true;
        Label1.Visible = false;
        Label2.Visible = false;
        }
        if (TextBox4.Text.Equals(TextBox6.Text))
        {
            DBFunctions.ChangeTable(str, "samadata.mdb");
            Label1.Visible = true;
            Label2.Visible = false;
            Label3.Visible = false;
        }
        else { Label2.Visible = true;
        Label3.Visible = false;
        Label1.Visible = false;
        }
    }


    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}