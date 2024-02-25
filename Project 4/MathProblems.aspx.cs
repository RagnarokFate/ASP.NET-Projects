using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using localhost;
using System.Data;
using System.IO;
public partial class MathProblems : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "select * from [SolveProb] where [Username]='" + Session["username"].ToString() + "'";
        DataTable dt = DBFunctions.SelectFromTable(str, "ServiceData.mdb");
        Gr2.DataSource = dt;
        Gr2.DataBind();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        localhost.MathProb asd = new MathProb();
        string destDir = Server.MapPath("./MathProb");
        string fileName = Path.GetFileName(this.FileUpload1.PostedFile.FileName);
        string destPath = Path.Combine(destDir, fileName);
        this.FileUpload1.PostedFile.SaveAs(destPath);
        asd.insertProb(Session["username"].ToString(), TextBox1.Text + " " + TextBox2.Text, TextBox3.Text, TextBox4.Text, destPath);
        Button2.Visible = false;
        Response.Redirect("~/HomeCos.aspx");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";



    }
}