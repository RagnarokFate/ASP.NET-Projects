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
using System.IO;

public partial class InsertProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userType"] == null || Session["userType"].ToString() != "Admin")
            Response.Redirect("~/login.aspx");
    }

    public bool ProductExist()
    {
        string SqlStr = "select  [productId] from [productsTbl] where [productId]='" + this.TextBox1.Text + "'";
        DataTable dt = DBFunctions.SelectFromTable(SqlStr, "UserDB.accdb");
        if (dt.Rows.Count > 0)
            return true;
        return false;
    }
    public void MsgBox(string Msg)
    {
        Page.ClientScript.RegisterStartupScript(Page.GetType(), "Message Box", "<script language='javascript'>alert('" + Msg + "')</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (!ProductExist())

            if (this.FileUpload1.PostedFile.ContentLength != 0)
            {
                string destDir = Server.MapPath("./ProductsImgs");
                string fileName = Path.GetFileName(this.FileUpload1.PostedFile.FileName);
                string destPath = Path.Combine(destDir, fileName);
                this.FileUpload1.PostedFile.SaveAs(destPath); 
                string productId = this.TextBox1.Text;
                string productName = this.TextBox2.Text;
                string Price = this.TextBox3.Text;
                string image = this.FileUpload1.FileName;
                string category = this.TextBox4.Text;
                string quantity = this.TextBox5.Text;
                string sqlMsgStr2 = "insert into [productsTbl]([productId],[productName],[Price],[image ],[category],[quantity]) values('";
                sqlMsgStr2 += this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.TextBox3.Text + "','" + "ProductsImgs/" + fileName + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "')";
                DBFunctions.ChangeTable(sqlMsgStr2, "UserDB.accdb");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                MsgBox("Product has Added");

            }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
}