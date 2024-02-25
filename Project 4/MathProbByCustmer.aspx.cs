using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using localhost;
using System.IO;
public partial class MathProbByCustmer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        localhost.MathProb asd = new MathProb();

        string value = DropDownList1.SelectedValue.ToString();

        string destDir = Server.MapPath("./MathSolve");
        string fileName = Path.GetFileName(this.FileUpload1.PostedFile.FileName);
        string destPath = Path.Combine(destDir, fileName);
        this.FileUpload1.PostedFile.SaveAs(destPath);
        //asd.solveprob(value, TextBox1.Text, destPath);
        string str = "insert into [SolveProb] ([Username],[Subject],[Photo]) values('" + value + "','" + TextBox1.Text + "','" + destPath + "')";
        DBFunctions.ChangeTable(str, "ServiceData.mdb");
        Button2.Visible = false;
        Label2.Visible = true;
    }
}